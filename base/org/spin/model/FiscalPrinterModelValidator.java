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

import org.compiere.model.I_C_Invoice;
import org.compiere.model.MClient;
import org.compiere.model.MInvoice;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.I_AD_Device;

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
		return null;
	}

}
