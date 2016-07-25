/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2016 E.R.P. Consultores y Asociados.                    *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpcya.com                                 *
 *****************************************************************************/
package org.spin.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.CCache;

/**
 * @author Dixon Martinez, dmartinez@erpcya.com, ERPCyA http://www.erpcya.com
 *		<li> FR [ 1 ] 
 *		@see 
 */
public class MADFPDocument extends X_AD_FP_Document {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6503486615985958589L;
	
	public MADFPDocument(Properties ctx, int AD_FP_Document_ID, String trxName) {
		super(ctx, AD_FP_Document_ID, trxName);
	}
	
	public MADFPDocument(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**	Cache for Device				*/
	private static CCache<Integer, MADFPDocument> s_cache	= new CCache<Integer, MADFPDocument>(Table_Name, 40, 5);	//	5 minutes
	/**	Lines of document	*/
	private MADFPDocumentLine[] lines = null;
	
	/**
	 * Get Lines
	 * @return
	 * @return MADFPDocumentLine[]
	 */
	public MADFPDocumentLine[] getLines() {
		return getLines(false);
	}
	
	/**
	 * Get lines from the document
	 * @return
	 * @return MADFPDocumentLine[]
	 */
	public MADFPDocumentLine[] getLines(boolean reQuery) {
		if(!reQuery
				&& lines != null)
			return lines;
		//	Get list
		List<MADFPDocumentLine> list = new Query(getCtx(), I_AD_FP_DocumentLine.Table_Name, 
				I_AD_FP_DocumentLine.COLUMNNAME_AD_FP_Document_ID + "= ?", get_TrxName())
			.setParameters(getAD_FP_Document_ID())
			.setOnlyActiveRecords(true)
			.setOrderBy(I_AD_FP_DocumentLine.COLUMNNAME_SeqNo)
			.<MADFPDocumentLine>list();
		//	
		lines = list.toArray(new MADFPDocumentLine[list.size()]);
		//	Return
		return lines;
	}
	
	/**
	 * Get Fiscal Document from Document Type
	 * @param ctx
	 * @param fiscalDocumentTypeId
	 * @param deviceId
	 * @return
	 * @return MADFPDocument
	 */
	public static MADFPDocument getFromFiscalDocumentType(Properties ctx, int fiscalDocumentTypeId, int deviceId) {
		//	Get Document Type
		MADDevice device = MADDevice.get(ctx, deviceId);
		if(device == null)
			return null;
		//	
		return new Query(ctx, I_AD_FP_Document.Table_Name, "AD_FP_Document.AD_FP_DocumentType_ID = ? "
				+ "AND AD_FP_Document.AD_DeviceType_ID = ? "
				+ "AND NOT EXISTS(SELECT 1 FROM AD_FP_DocumentLine dl "
				+ "				WHERE dl.AD_FP_DocumentChild_ID = AD_FP_Document.AD_FP_Document_ID)", null)
			.setParameters(fiscalDocumentTypeId, 
					device.getAD_DeviceType_ID())
			.setOnlyActiveRecords(true)
			.<MADFPDocument>first();
	}
	
	/**
	 * Get Document from cache or disk
	 * @param ctx
	 * @param fiscalDocumentId
	 * @return
	 * @return MADFPDocument
	 */
	public static MADFPDocument get(Properties ctx, int fiscalDocumentId) {
		if (fiscalDocumentId <= 0) {
			return null;
		}
		//	From Cache
		Integer key = new Integer (fiscalDocumentId);
		MADFPDocument retValue = (MADFPDocument) s_cache.get (key);
		if (retValue != null) {
			return retValue;
		}
		//	Read from disk
		retValue = new MADFPDocument (ctx, fiscalDocumentId, null);
		if (retValue.get_ID () != 0) {
			s_cache.put (key, retValue);
		}
		//	
		return retValue;
	}	//	get
	
	@Override
	public String toString() {
		return getValue() + " - " + getName();
	}
}
