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
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MColumn;
import org.compiere.model.MRule;
import org.compiere.model.MTable;
import org.compiere.model.PO;
import org.compiere.model.Query;
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
	 * @param device
	 */
	public FiscalDocumentHandler(MADDevice device) {
		this.device = device;
		if(device == null)
			throw new AdempiereException("@AD_Device_ID@ @NotFound@");
		//	Get Context
		ctx = device.getCtx();
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
	/**	Context					*/
	private Properties 				ctx;
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
	 * @param fDocument
	 * @return void
	 */
	private void loadScriptValues(PO document, MADFPDocument fDocument) {
		m_scriptCtx.clear();
		m_scriptCtx.put("_DocumentHandler", this);
		m_scriptCtx.put("_PrinterHandler", printerHandler);
		m_scriptCtx.put("_FiscalDocument", fDocument);
		m_scriptCtx.put("_Device", device);
		m_scriptCtx.put("_Document", document);
	}
	
	/**
	 * Print a document from record Identifier
	 * @param recordId
	 * @throws Exception
	 * @return void
	 */
	public void printDocument(int recordId, int fiscalDocumentTypeId) throws Exception {
		//	Load Document
		loadFiscalDocument(fiscalDocumentTypeId);
		//	Valid Table
		if(fiscalDocument.getAD_Table_ID() == 0)
			throw new AdempiereException("@AD_Table_ID@ @NotFound@");
		//	Get PO
		MTable table = MTable.get(ctx, fiscalDocument.getAD_Table_ID());
		PO document = table.getPO(recordId, fiscalDocument.get_TrxName());
		//	Print Document
		if(printerHandler == null)
			throw new AdempiereException("@AD_Device_ID@ @NotFound@");
		//	Get handler
		printerHandler.connect();
		//	Verify Connection
		if(!printerHandler.isConnected())
			throw new AdempiereException("@AD_Device_ID@ @NotConnected@");
		//	Verify Status
		printerHandler.isCheckOk();
		//	Print Document
		printDocument(document, fiscalDocument);
		//	Close
		printerHandler.close();
	}
	
	/**
	 * Load Fiscal Document
	 * @param fiscalDocumentTypeId
	 * @return void
	 */
	private void loadFiscalDocument(int fiscalDocumentTypeId) {
		fiscalDocument = MADFPDocument.getFromFiscalDocumentType(ctx, fiscalDocumentTypeId, device.getAD_Device_ID());
		if(fiscalDocument == null)
			throw new AdempiereException("@AD_FP_Document_ID@ @NotFound@");
		if(device == null)
			throw new AdempiereException("@AD_Device_ID@ @NotFound@");
		if(device.getAD_DeviceType_ID() != fiscalDocument.getAD_DeviceType_ID())
			throw new AdempiereException("@AD_DeviceType_ID@ @NotMatched@");
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
	private void printDocument(PO document, MADFPDocument fDocument) throws Exception {
		//	Validate fiscal Document
		if(fDocument == null)
			return;
		//	Set values to script
		loadScriptValues(document, fDocument);
		//	
		StringBuffer cmdBuffer = new StringBuffer();
		for(MADFPDocumentLine line : fDocument.getLines()) {
			//	Print previous
			if(line.isNewCmd()
					&& cmdBuffer.length() > 0) {
				//	log
				log.fine("Cmd[" + cmdBuffer + "]");
				printerHandler.printCmd(cmdBuffer.toString());
				cmdBuffer = new StringBuffer();
			}
			//	Child document
			if(line.getAD_FP_DocumentChild_ID() != 0) {
				//	Validate recursive reference
				if(line.getAD_FP_DocumentChild_ID() != line.getAD_FP_Document_ID()) {
					MADFPDocument childDocument = MADFPDocument.get(ctx, line.getAD_FP_DocumentChild_ID());
					//	Validate Table
					if(line.getAD_Column_ID() != 0
							&& childDocument.getAD_Table_ID() != 0
							&& document != null) {
						//	Get Link Column
						MColumn linkColumn = MColumn.get(ctx, line.getAD_Column_ID());
						//	Get Child Table
						MTable table = MTable.get(ctx, childDocument.getAD_Table_ID());
						//	Where clause
						String whereClause = table.getTableName() + "." + linkColumn.getColumnName() + " = ?";
						//	log
						log.fine("Child Where Clause[" + whereClause + "]");
						List<PO> childrens = new Query(ctx, table, whereClause, document.get_TrxName())
								.setParameters(document.get_Value(linkColumn.getColumnName()))
								.list();
						//	Iterate List
						if(childrens != null
								&& childrens.size() > 0) {
							for(PO child : childrens) {
								printDocument(child, childDocument);
							}
						}
					}
				} else {
					log.warning("Line [" + line.toString() + "] Recursive reference");
				}
				//	Continue
				continue;
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
				code = Env.parseVariable(code, document, fDocument.get_TrxName(), true);
			}
			//	Valid null
			if(code == null)
				code = "";
			//	Add to buffer
			if(line.getMaxLength() > 0
					&& code.length() > line.getMaxLength()) {
				log.warning("Value is to long [" + code + "], length [" + code.length() + "]");
				code = code.substring(0, line.getMaxLength());
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
