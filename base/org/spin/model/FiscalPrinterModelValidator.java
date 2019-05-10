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

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.util.ProcessUtil;
import org.compiere.apps.IProcessParameter;
import org.compiere.apps.ProcessCtl;
import org.compiere.apps.ProcessParameterPanel;
import org.compiere.model.I_C_Invoice;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.X_C_DocType;
import org.compiere.model.X_C_Invoice;
import org.compiere.model.X_C_PaySelection;
import org.compiere.print.ReportCtl;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessCall;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.spin.model.I_AD_Device;
import org.spin.process.InvoiceFiscalPrint;
import org.spin.util.FiscalDocumentHandler;
import org.spin.util.FiscalPrinterHandler;

/**
 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
 */
public class FiscalPrinterModelValidator implements ModelValidator {

	/**
	 * *** Constructor ***
	 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
	 */
	public FiscalPrinterModelValidator() {
		super();
	}

	/** Logger 			*/
	private static CLogger log = CLogger
			.getCLogger(FiscalPrinterModelValidator.class);
	/**	Client			*/
	private int clientId = 0;

	@Override
	public void initialize(ModelValidationEngine engine, MClient client) {
		// client = null for global validator
		if (client != null) {
			clientId = client.getAD_Client_ID();
		} else {
			log.info("Initializing global validator: " + toString());
		}
		//	
		engine.addDocValidate(I_C_Invoice.Table_Name, this);
	}

	@Override
	public int getAD_Client_ID() {
		return clientId;
	}

	@Override
	public String login(int AD_Org_ID, int AD_Role_ID, int AD_User_ID) {
		return null;
	}

	@Override
	public String modelChange(PO po, int type) throws Exception {
		return null;
	}

	@Override
	public String docValidate(PO po, int timing) {
		if(timing == TIMING_BEFORE_REVERSECORRECT 
				|| timing == TIMING_BEFORE_VOID) {
			log.fine(" TIMING_BEFORE_REVERSECORRECT || TIMING_BEFORE_VOID");
			if(po.get_TableName().equals(I_C_Invoice.Table_Name)) {
				MInvoice invoice = (MInvoice) po;
				//	Validate Fiscal document generated
				if(invoice.get_ValueAsInt(I_AD_Device.COLUMNNAME_AD_Device_ID) != 0) {
					return Msg.parseTranslation(Env.getCtx(), "@C_Invoice_ID@ @IsPrinted@");
				}
			}
		} else if(timing == TIMING_AFTER_COMPLETE) {
			log.fine(" TIMING_AFTER_COMPLETE");
			if(po.get_TableName().equals(I_C_Invoice.Table_Name)) {
				MInvoice invoice = (MInvoice) po;
				if(invoice.getReversal_ID() == 0) {
					sendDocumentToPrinter(invoice);			
				}
			}
		}
		return "";
	}
	
	/**
	 * Send document to printer
	 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
	 * @param invoice
	 * @return void
	 */
	private void sendDocumentToPrinter(MInvoice invoice) {
		MDocType documentType = MDocType.get(invoice.getCtx(), invoice.getC_DocTypeTarget_ID());
		int fiscalDocumentTypeId = documentType.get_ValueAsInt(I_AD_FP_Document.COLUMNNAME_AD_FP_DocumentType_ID);
		if (fiscalDocumentTypeId  <= 0) {
			return;
		}
		if (invoice.getGrandTotal().compareTo(Env.ZERO) < 0) {
			throw new AdempiereException("@C_Invoice_ID@ @GrandTotal@ < 0");
		}
		//	Validate Printing
		if(invoice.get_ValueAsInt("AD_Device_ID") != 0
				&& invoice.get_ValueAsString("FiscalDocumentNo") != null) {
			return;
		}
		//	Validates GrandTotal > 0
		//	Get Device
		int fiscalPrinterId = invoice.get_ValueAsInt("AD_Device_ID");
		if(fiscalPrinterId == 0) {
			fiscalPrinterId = Env.getContextAsInt(invoice.getCtx(), "FiscalPrinter_ID");
		}
		if(fiscalPrinterId == 0) {
			throw new AdempiereException("@AD_Device_ID@ @NotFound@");
		}
		//	
		MADDevice device = new MADDevice(invoice.getCtx(), fiscalPrinterId, invoice.get_TrxName());
		FiscalDocumentHandler documentHandler = new FiscalDocumentHandler(device);
		//	Set Transaction Name
		documentHandler.set_TrxName(invoice.get_TrxName());
		try {
			//	Establish connection
			documentHandler.connectPrinter();
			//	Print
			documentHandler.printDocument(invoice.getC_Invoice_ID(), documentType.get_ValueAsInt(I_AD_FP_Document.COLUMNNAME_AD_FP_DocumentType_ID));
			//	Set Document Values
			String fiscalDocumentNo = null;
			if(documentType.getDocBaseType().equals(X_C_DocType.DOCBASETYPE_ARInvoice)) {
				if(invoice.get_ValueAsInt("DocAffected_ID") != 0) {
					fiscalDocumentNo = documentHandler.getLastDocumentNo(FiscalPrinterHandler.DOCUMENT_TYPE_DEBIT_MEMO);
				} else {
					fiscalDocumentNo = documentHandler.getLastDocumentNo(FiscalPrinterHandler.DOCUMENT_TYPE_INVOICE);
				}
			} else if(documentType.getDocBaseType().equals(X_C_DocType.DOCBASETYPE_ARCreditMemo)) {
				fiscalDocumentNo = documentHandler.getLastDocumentNo(FiscalPrinterHandler.DOCUMENT_TYPE_CREDIT_MEMO);
			}
			//	Set Device
			invoice.set_ValueOfColumn("AD_Device_ID", fiscalPrinterId);
			//	Set
			if(fiscalDocumentNo != null
					&& fiscalDocumentNo.length() > 0) {
				invoice.set_ValueOfColumn("FiscalDocumentNo", fiscalDocumentNo);
				invoice.setDocumentNo(fiscalDocumentNo);
			}
			//	Save
			invoice.saveEx();
			//	Close Connection
			documentHandler.closePrinter();
		} catch(Exception e) {
			throw new AdempiereException(e);
		}
	}

}
