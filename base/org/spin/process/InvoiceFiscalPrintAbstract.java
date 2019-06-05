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

import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
/** Generated Process for (Print Invoices to Fiscal Printer)
 *  @author ADempiere (generated) 
 *  @version Release 3.8.0
 */
public abstract class InvoiceFiscalPrintAbstract extends SvrProcess
{
	/** Process Value 	*/
	private static final String VALUE = "C_Invoice_FiscalPrint";
	/** Process Name 	*/
	private static final String NAME = "Print Invoices to Fiscal Printer";
	/** Process Id 	*/
	private static final int ID = 53884;
 
	/**	Parameter Name for AD_Device_ID	*/
	public static final String AD_Device_ID = "AD_Device_ID";

	/**	Parameter Value for fiscalPrinterId	*/
	private int fiscalPrinterId;
 

	@Override
	protected void prepare()
	{		
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals(AD_Device_ID))
				fiscalPrinterId = (para[i].getParameterAsInt());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	/**	 Getter Parameter Value for fiscalPrinterId	*/
	protected int getFiscalPrinterId() {
		return fiscalPrinterId;
	}

	/**	 Getter Parameter Value for Process ID	*/
	public static final int getProcessId() {
		return ID;
	}

	/**	 Getter Parameter Value for Process Value	*/
	public static final String getProcessValue() {
		return VALUE;
	}

	/**	 Getter Parameter Value for Process Name	*/
	public static final String getProcessName() {
		return NAME;
	}
}