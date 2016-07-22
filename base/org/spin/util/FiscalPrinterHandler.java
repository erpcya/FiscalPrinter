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

import org.spin.model.MADDevice;

/**
 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
 *		<li> FR [ 2 ] Add Standard contract for fiscal printer
 *		@see https://github.com/erpcya/FiscalPrinter/issues/2
 */
public abstract class FiscalPrinterHandler extends DeviceTypeHandler {
	
	public FiscalPrinterHandler(MADDevice device) {
		super(device);
	}
	
	/**
	 * Print X Report
	 * @throws Exception
	 * @return void
	 */
	public abstract void printXReport() throws Exception;
	
	/**
	 * Print Z Report
	 * @throws Exception
	 * @return void
	 */
	public abstract void printZReport() throws Exception;
	
	/**
	 * Get Fiscal Printer object
	 * @return
	 * @return Object
	 */
	public abstract Object getFiscalPrinter();
	
	/**
	 * Print a Command
	 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com 
	 * @param cmd
	 * @return void
	 */
	public abstract void printCmd(String cmd) throws Exception;
}
