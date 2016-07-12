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
import java.util.Properties;

/**
 * @author Dixon Martinez, dmartinez@erpcya.com, ERPCyA http://www.erpcya.com
 *		<li> FR [ 1 ] 
 *		@see 
 */
public class MADFPDocumentLine extends X_AD_FP_DocumentLine {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1545366312517097380L;

	/**
	 * *** Constructor ***
	 * @author Dixon Martinez, dmartinez@erpcya.com, ERPCyA http://www.erpcya.com
	 *		<li> FR [ 1 ] 
	 *		@see 
	 * @param ctx
	 * @param AD_FP_DocumentLine_ID
	 * @param trxName
	 */
	public MADFPDocumentLine(Properties ctx, int AD_FP_DocumentLine_ID,
			String trxName) {
		super(ctx, AD_FP_DocumentLine_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author Dixon Martinez, dmartinez@erpcya.com, ERPCyA http://www.erpcya.com
	 *		<li> FR [ 1 ] 
	 *		@see 
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MADFPDocumentLine(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

}
