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
package org.spin.util;

import org.adempiere.pos.AdempierePOSException;
import org.adempiere.pos.service.CPOS;
import org.adempiere.pos.util.POSTicketHandler;
import org.compiere.model.MInvoice;
import org.compiere.print.ReportCtl;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.util.Env;
import org.eevolution.service.dsl.ProcessBuilder;
import org.spin.model.MADDevice;
import org.spin.process.InvoiceFiscalPrint;

/**
 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
 * 		<a href="https://github.com/adempiere/adempiere/issues/672">
 * 		@see FR [ 672 ] Add abstract class for basic operation of POS (Generic Ticket Handler)</a>
 */
public class FiscalTicketHandler extends POSTicketHandler {

	/**
	 * Default Constructor
	 * @param pos
	 */
	public FiscalTicketHandler(CPOS pos) {
		super(pos);
	}

	@Override
	public void printTicket() {
		//	Get Device
		int deviceId = (Integer) Env.getContextAsInt(getPOS().getCtx(), FiscalPrinterHandler.CTX_FISCAL_PRINTER_ID);
		if(!getPOS().isInvoiced()) {
			//print standard document
			ReportCtl.startDocumentPrint(ReportEngine.ORDER, getPOS().getC_Order_ID(), false);
		} else {
			for (MInvoice invoice :  getPOS().getOrder().getInvoices()) {
				//	Print Each Invoice
				ProcessInfo processInfo = ProcessBuilder.create(getPOS().getCtx())
					      .process(InvoiceFiscalPrint.getProcessId())
					      .withParameter(MADDevice.COLUMNNAME_AD_Device_ID, deviceId)
					      .withRecordId(MInvoice.Table_ID, invoice.getC_Invoice_ID())
					      .execute();
				//	
				if(processInfo.isError())
					throw new AdempierePOSException(processInfo.getSummary());
            }
		}
	}

	@Override
	public void openDrawer() {
		//		
	}

	@Override
	public void showMessage() {
		//	
	}
}
