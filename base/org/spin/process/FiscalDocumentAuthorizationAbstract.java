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

import org.compiere.process.SvrProcess;

/** Generated Process for (Fiscal Document Authorization)
 *  @author ADempiere (generated) 
 *  @version Release 3.9.2
 */
public abstract class FiscalDocumentAuthorizationAbstract extends SvrProcess {
	/** Process Value 	*/
	private static final String VALUE_FOR_PROCESS = "FiscalDocumentAuthorization";
	/** Process Name 	*/
	private static final String NAME_FOR_PROCESS = "Fiscal Document Authorization";
	/** Process Id 	*/
	private static final int ID_FOR_PROCESS = 54232;
	/**	Parameter Name for Invoice	*/
	public static final String C_INVOICE_ID = "C_Invoice_ID";
	/**	Parameter Name for Authorization Type	*/
	public static final String AUTHORIZATIONTYPE = "AuthorizationType";
	/**	Parameter Name for Fiscal Printer	*/
	public static final String AD_DEVICE_ID = "AD_Device_ID";
	/**	Parameter Value for Invoice	*/
	private int invoiceId;
	/**	Parameter Value for Authorization Type	*/
	private String authorizationType;
	/**	Parameter Value for Fiscal Printer	*/
	private int deviceId;

	@Override
	protected void prepare() {
		invoiceId = getParameterAsInt(C_INVOICE_ID);
		authorizationType = getParameterAsString(AUTHORIZATIONTYPE);
		deviceId = getParameterAsInt(AD_DEVICE_ID);
	}

	/**	 Getter Parameter Value for Invoice	*/
	protected int getInvoiceId() {
		return invoiceId;
	}

	/**	 Setter Parameter Value for Invoice	*/
	protected void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
	}

	/**	 Getter Parameter Value for Authorization Type	*/
	protected String getAuthorizationType() {
		return authorizationType;
	}

	/**	 Setter Parameter Value for Authorization Type	*/
	protected void setAuthorizationType(String authorizationType) {
		this.authorizationType = authorizationType;
	}

	/**	 Getter Parameter Value for Fiscal Printer	*/
	protected int getDeviceId() {
		return deviceId;
	}

	/**	 Setter Parameter Value for Fiscal Printer	*/
	protected void setDeviceId(int deviceId) {
		this.deviceId = deviceId;
	}

	/**	 Getter Parameter Value for Process ID	*/
	public static final int getProcessId() {
		return ID_FOR_PROCESS;
	}

	/**	 Getter Parameter Value for Process Value	*/
	public static final String getProcessValue() {
		return VALUE_FOR_PROCESS;
	}

	/**	 Getter Parameter Value for Process Name	*/
	public static final String getProcessName() {
		return NAME_FOR_PROCESS;
	}
}