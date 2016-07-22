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

import java.util.HashMap;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MRule;
import org.compiere.model.PO;
import org.compiere.model.Scriptlet;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.spin.model.MADDevice;
import org.spin.model.MADFPDocument;
import org.spin.model.MADFPDocumentLine;

/**
 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
 */
public class FiscalDocumentHandler {

	/**
	 * *** Constructor ***
	 * @param document
	 * @param device
	 */
	public FiscalDocumentHandler(MADFPDocument document, MADDevice device) {
		this.fiscalDocument = document;
		this.device = device;
		if(document == null)
			throw new AdempiereException("@AD_FP_Document_ID@ @NotFound@");
		if(device == null)
			throw new AdempiereException("@AD_Device_ID@ @NotFound@");
		if(device.getAD_DeviceType_ID() != document.getAD_DeviceType_ID())
			throw new AdempiereException("@AD_DeviceType_ID@ @NotMatched@");
		//	Get Handler
		printerHandler = (FiscalPrinterHandler) device.getDeviceHandler();
	}
	
	/** Static Logger			*/
	private static CLogger			log = CLogger.getCLogger (FiscalDocumentHandler.class);
	/**	Document				*/
	private MADFPDocument 			fiscalDocument;
	/**	Device					*/
	private MADDevice 				device;
	/**	Printer Handler			*/
	private FiscalPrinterHandler 	printerHandler;
	/** the context for rules 	*/
	private HashMap<String, Object> m_scriptCtx = new HashMap<String, Object>();
	/**	Imports					*/
	private static StringBuffer s_scriptImport = new StringBuffer(
			 "import org.eevolution.model.*;\n" 
			+"import org.compiere.model.*;\n"
			+"import org.adempiere.model.*;\n"
			+"import org.compiere.util.*;\n"
			+"import java.math.*;\n"
			+"import java.sql.*;\n" 
			+"import java.util.*;\n" 
			+"import org.spin.model.*;\n" 
			+"import org.spin.util.*;\n");
	
	/**
	 * Add parameters to script
	 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
	 * @param document
	 * @return void
	 */
	private void loadScriptValues(PO document) {
		m_scriptCtx.clear();
		m_scriptCtx.put("_DocumentHandler", this);
		m_scriptCtx.put("_PrinterHandler", printerHandler);
		m_scriptCtx.put("_FiscalDocument", fiscalDocument);
		m_scriptCtx.put("_Device", device);
		m_scriptCtx.put("_Document", document);
	}
	
	/**
	 * Print document from PO
	 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
	 *		<li> FR [ 3 ] Add method for print a document
	 *		@see https://github.com/erpcya/FiscalPrinter/issues/3
	 * @param document
	 * @return void
	 * @throws Exception 
	 */
	public void printDocument(PO document) throws Exception {
		if(printerHandler == null)
			return;
		//	Get handler
		printerHandler.connect();
		//	Set values to script
		loadScriptValues(document);
		//	
		StringBuffer cmdBuffer = new StringBuffer();
		for(MADFPDocumentLine line : fiscalDocument.getLines()) {
			//	Print previous
			if(line.isNewCmd()
					&& cmdBuffer.length() > 0) {
				//	log
				log.fine("Cmd[" + cmdBuffer + "]");
				printerHandler.printCmd(cmdBuffer.toString());
				cmdBuffer = new StringBuffer();
			}
			//	Get values
			String prefix = line.getPrefix();
			String suffix = line.getSuffix();
			String code = line.getCode();
			//	Process variables
			if(prefix == null)
				prefix = "";
			if(suffix == null)
				suffix = "";
			//	
			if(line.getAD_Rule_ID() != 0)
				code = executeScript(line);
			//	Parse
			if(document != null
					&& code != null
					&& line.isParse()) {
				code = Env.parseVariable(code, document, fiscalDocument.get_TrxName(), true);
			}
			//	Valid null
			if(code == null)
				code = "";
			//	Add to buffer
			if(line.getMaxLength() > 0
					&& code.length() > line.getMaxLength()) {
				log.warning("Value is to long [" + code + "], length [" + code.length() + "]");
				code = code.substring(0, line.getMaxLength() - 1);
				log.warning("Truncated value [" + code + "], new length [" + code.length() + "]");
			}
			//	
			cmdBuffer.append(prefix);
			cmdBuffer.append(code);
			cmdBuffer.append(suffix);
		}
		//	Print Buffer
		if(cmdBuffer.length() > 0) {
			//	log
			log.fine("Cmd[" + cmdBuffer + "]");
			printerHandler.printCmd(cmdBuffer.toString());
		}
		//	Close connection
		printerHandler.close();
	}
	
	/**
	 * Execute the script
	 * @param AD_Rule_ID
	 * @param string Column Type
	 * @return Object
	 * @throws Exception 
	 */
	private String executeScript(MADFPDocumentLine line) throws Exception {
		
		MRule rulee = MRule.get(line.getCtx(), line.getAD_Rule_ID());
		String text = "";
		if (rulee.getScript() != null) {
			text = rulee.getScript().trim().replaceAll("\\bget", "_DocumentHandler.get")
			.replace("._DocumentHandler.get", ".get");
		}
		//	
		final String script =
			s_scriptImport.toString()
			+" String result = null;"
			+ text;
		//	Run
		Scriptlet engine = new Scriptlet(Scriptlet.VARIABLE, script, m_scriptCtx);	
		Exception ex = engine.execute();
		if (ex != null) {
			throw ex;
		}
		//	Get Result
		return (String) engine.getResult(false);
	}
}
