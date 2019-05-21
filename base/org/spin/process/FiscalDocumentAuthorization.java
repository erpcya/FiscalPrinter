/******************************************************************************
 * Product: ADempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 2006-2017 ADempiere Foundation, All Rights Reserved.         *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * or (at your option) any later version.										*
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
import org.compiere.model.MInvoice;
import org.compiere.util.Msg;
import org.spin.model.I_AD_Device;
import org.spin.model.MADDevice;

/** Generated Process for (Fiscal Document Authorization)
 *  @author ADempiere (generated) 
 *  @version Release 3.9.2
 */
public class FiscalDocumentAuthorization extends FiscalDocumentAuthorizationAbstract {
	
	/**	Re-Print Document	*/
	private final String RE_PRINT = "R";
	/**	Void Document	*/
	private final String VOID = "V";
	
	@Override
	protected String doIt() throws Exception {
		MInvoice invoice = new MInvoice(getCtx(), getInvoiceId(), get_TrxName());
		//	Invoice for authorize
		if(getAuthorizationType().equals(RE_PRINT)) {
			if(invoice.get_ValueAsInt(I_AD_Device.COLUMNNAME_AD_Device_ID) > 0) {
				MADDevice device = MADDevice.get(getCtx(), invoice.get_ValueAsInt(I_AD_Device.COLUMNNAME_AD_Device_ID));
				invoice.set_ValueOfColumn(I_AD_Device.COLUMNNAME_AD_Device_ID, null);
				invoice.addDescription(Msg.parseTranslation(getCtx(), "@AD_Device_ID@ (@OldValue@): ") + device.getName());
			}
		} else if(getAuthorizationType().equals(VOID)) {
			invoice.set_ValueOfColumn("IsVoidedFiscalPrint", true);
			invoice.addDescription(Msg.parseTranslation(getCtx(), "@IsVoidedFiscalPrint@"));
		} else {
			throw new AdempiereException("@ActionNotSupported@");
		}
		//	Save document
		invoice.saveEx();
		addLog(getInvoiceId(), invoice.getDateInvoiced(), invoice.getGrandTotal(), invoice.getDocumentNo());
		return "@C_Invoice_ID@: " + invoice.getDocumentNo() + " @Updated@";
	}
}