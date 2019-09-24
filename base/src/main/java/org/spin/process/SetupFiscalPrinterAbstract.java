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

/** Generated Process for (Setup Fiscal Printer)
 *  @author ADempiere (generated) 
 *  @version Release 3.9.2
 */
public abstract class SetupFiscalPrinterAbstract extends SvrProcess {
	/** Process Value 	*/
	private static final String VALUE_FOR_PROCESS = "SetupFiscalPrinter";
	/** Process Name 	*/
	private static final String NAME_FOR_PROCESS = "Setup Fiscal Printer";
	/** Process Id 	*/
	private static final int ID_FOR_PROCESS = 54226;
	/**	Parameter Name for Fiscal Printer	*/
	public static final String AD_DEVICE_ID = "AD_Device_ID";
	/**	Parameter Name for Fiscal Document Type	*/
	public static final String AD_FP_DOCUMENTTYPE_ID = "AD_FP_DocumentType_ID";
	/**	Parameter Value for Fiscal Printer	*/
	private int deviceId;
	/**	Parameter Value for Fiscal Document Type	*/
	private int fPDocumentTypeId;

	@Override
	protected void prepare() {
		deviceId = getParameterAsInt(AD_DEVICE_ID);
		fPDocumentTypeId = getParameterAsInt(AD_FP_DOCUMENTTYPE_ID);
	}

	/**	 Getter Parameter Value for Fiscal Printer	*/
	protected int getDeviceId() {
		return deviceId;
	}

	/**	 Setter Parameter Value for Fiscal Printer	*/
	protected void setDeviceId(int deviceId) {
		this.deviceId = deviceId;
	}

	/**	 Getter Parameter Value for Fiscal Document Type	*/
	protected int getFPDocumentTypeId() {
		return fPDocumentTypeId;
	}

	/**	 Setter Parameter Value for Fiscal Document Type	*/
	protected void setFPDocumentTypeId(int fPDocumentTypeId) {
		this.fPDocumentTypeId = fPDocumentTypeId;
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