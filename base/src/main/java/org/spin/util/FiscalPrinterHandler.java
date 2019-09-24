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

import java.util.ArrayList;
import java.util.HashMap;

import org.spin.model.MADDevice;
import org.spin.util.DeviceTypeHandler;

/**
 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
 *		<li> FR [ 2 ] Add Standard contract for fiscal printer
 *		@see https://github.com/erpcya/FiscalPrinter/issues/2
 */
public abstract class FiscalPrinterHandler extends DeviceTypeHandler {
	
	public FiscalPrinterHandler(MADDevice device) {
		super(device);
		//	Instance Stack
		stackCommand = new ArrayList<String>();
	}
	
	/**	Document Type	*/
	public static final int 	DOCUMENT_TYPE_INVOICE = 0;
	public static final int 	DOCUMENT_TYPE_CREDIT_MEMO = 1;
	public static final int 	DOCUMENT_TYPE_DEBIT_MEMO = 2;
	
	/**	Ini Properties	*/
	public static final String 	INI_FISCAL_PRINTER_NAME = "FiscalPrinter";
	public static final String 	INI_FISCAL_PRINTER_ID = "FiscalPrinter_ID";
	/**	Ctx Properties	*/
	public static final String 	CTX_FISCAL_PRINTER_NAME = "#FiscalPrinter";
	public static final String 	CTX_FISCAL_PRINTER_ID = "#FiscalPrinter_ID";
	/**	Stack			*/
	private ArrayList<String> stackCommand = null;
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
	
	/**
	 * Add a Command to stack
	 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com 
	 * @param cmd
	 * @return void
	 */
	public void addCmd(String cmd) throws Exception {
		//	Add command
		stackCommand.add(cmd);
	}
	
	/**
	 * Print a stack Command if exists
	 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com 
	 * @param cmd
	 * @return void
	 */
	public void printStackCmd() throws Exception {
		if(stackCommand.size() == 0) {
			return;
		}
		//	If exist data
		for(String cmd : stackCommand) {
			printCmd(cmd);
		}
		//	Clear stack
		stackCommand = new ArrayList<String>();
	}
	
	/**
	 * Get Valid Code
	 * @param code
	 * @return
	 * @return String
	 */
	public abstract String getValidCode(String code);
	
	/**
	 * Get Last Document No for the Document
	 * @param documentType
	 * @return
	 * @return String
	 */
	public abstract String getLastDocumentNo(int documentType) throws Exception;
	
	/**
	 * Get Information from printer
	 * @throws PrinterException
	 * @return String
	 */
	public abstract String getPrinterInfo() throws Exception;
	
	/**
	 * Get Information from printer as key values
	 * @throws PrinterException
	 * @return HashMap<String,Object>
	 */
	public abstract HashMap<String, Object> getPrinterInfoValues() throws Exception;
}
