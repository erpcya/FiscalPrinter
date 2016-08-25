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
import org.spin.model.MADDevice;
import org.spin.util.FiscalDocumentHandler;

/** Generated Process for (Print Fiscal Report)
 *  @author ADempiere (generated) 
 *  @version Release 3.8.0
 */
public class PrintFiscalReport extends PrintFiscalReportAbstract {
	@Override
	protected void prepare() {
		super.prepare();
	}

	@Override
	protected String doIt() throws Exception {
		//	Get Device
		//	Get Device
		if(getFiscalPrinterId() == 0)
			throw new AdempiereException("@AD_Device_ID@ @NotFound@");
		//	
		MADDevice device = new MADDevice(getCtx(), getFiscalPrinterId(), get_TrxName());
		FiscalDocumentHandler documentHandler = new FiscalDocumentHandler(device);
		documentHandler.printDocument(getFiscalDocumentTypeId(), getProcessInfo());
		return "Ok";
	}
}