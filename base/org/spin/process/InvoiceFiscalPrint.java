/******************************************************************************
 * Product: ADempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 2006-2016 ADempiere Foundation, All Rights Reserved.         *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * or via info@adempiere.net or http://www.adempiere.net/license.html         *
 *****************************************************************************/

package org.spin.process;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.spin.model.I_AD_FP_Document;
import org.spin.model.MADDevice;
import org.spin.util.FiscalDocumentHandler;

/** Generated Process for (Print Invoices to Fiscal Printer)
 *  @author ADempiere (generated) 
 *  @version Release 3.8.0
 */
public class InvoiceFiscalPrint extends InvoiceFiscalPrintAbstract {
	@Override
	protected void prepare() {
		super.prepare();
	}

	@Override
	protected String doIt() throws Exception {
		if(getRecord_ID() == 0)
			throw new AdempiereException("@C_Invoice_ID@ @NotFound@");
		//	
		MInvoice invoice = new MInvoice(getCtx(), getRecord_ID(), get_TrxName());
		//	Get Device
		MADDevice device = new MADDevice(getCtx(), 50000, get_TrxName());
		FiscalDocumentHandler documentHandler = new FiscalDocumentHandler(device);
		//	Get Document Type
		MDocType docType = MDocType.get(getCtx(), invoice.getC_DocType_ID());
		//	Print
		documentHandler.printDocument(getRecord_ID(), docType.get_ValueAsInt(I_AD_FP_Document.COLUMNNAME_AD_FP_DocumentType_ID));
		return "";
	}
}