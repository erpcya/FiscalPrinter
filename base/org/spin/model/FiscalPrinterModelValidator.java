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
		}
		if(timing == TIMING_AFTER_COMPLETE) {
			log.fine(" TIMING_AFTER_COMPLETE");
			if(po.get_TableName().equals(I_C_Invoice.Table_Name)) {
				MInvoice invoice = (MInvoice) po;

				MDocType docType = MDocType.get(invoice.getCtx(), invoice.getC_DocType_ID());

				int docTypeId = docType.get_ValueAsInt(I_AD_FP_Document.COLUMNNAME_AD_FP_DocumentType_ID);

				if (docTypeId  <= 0) {
					return null;
				}
				
				// Create instance parameters. I e the parameters you want to send to the process.
				ProcessInfoParameter deviceId = new ProcessInfoParameter("AD_Device_ID", Env.getContextAsInt(Env.getCtx(), "FiscalPrinter_ID"), "","","");

				ProcessInfoParameter [] parameters = new ProcessInfoParameter[] {deviceId};
				// Create a process info instance. This is a composite class containing the parameters.

				String processName = "Print Invoices to Fiscal Printer";
				int AD_Proces_ID = 53884;

				//	Create Trx
				Trx trx = Trx.get(invoice.get_TrxName(), false);
				//	Create Process Info
				ProcessInfo pi_PrintInvoice = new ProcessInfo(processName, AD_Proces_ID);

				MPInstance pi = new MPInstance(Env.getCtx(), AD_Proces_ID, invoice.getC_Invoice_ID());

				pi_PrintInvoice.setAD_PInstance_ID(pi.getAD_PInstance_ID());
				//	Add Parameters
				pi_PrintInvoice.setParameter(parameters);
				pi_PrintInvoice.setRecord_ID(invoice.getC_Invoice_ID());
				
				pi.saveEx(invoice.get_TrxName());

				//	Execute Process
				ProcessUtil.startJavaProcess(Env.getCtx(), pi_PrintInvoice, trx, false);

				log.info("Starting process " + processName);			
			}
		}
		return null;
	}

}
