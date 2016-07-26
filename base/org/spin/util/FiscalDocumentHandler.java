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

import java.text.DecimalFormat;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MColumn;
import org.compiere.model.MRule;
import org.compiere.model.MTable;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.Scriptlet;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
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
	/**	Handle Connection		*/
	private boolean 				handleConnection = true;
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
	 * @param po
	 * @param info
	 * @param fDocument
	 * @return void
	 */
	private void loadScriptValues(PO po, ProcessInfo info, MADFPDocument fDocument) {
		m_scriptCtx.clear();
		m_scriptCtx.put("_DocumentHandler", this);
		m_scriptCtx.put("_PrinterHandler", printerHandler);
		m_scriptCtx.put("_FiscalDocument", fDocument);
		m_scriptCtx.put("_Device", device);
		m_scriptCtx.put("_Document", po);
		m_scriptCtx.put("_ProcessInfo", info);
		m_scriptCtx.put("_Ctx", ctx);
	}
	
	/**
	 * Print a document from record Identifier
	 * @param recordId
	 * @param fiscalDocumentTypeId
	 * @param info
	 * @throws Exception
	 * @return void
	 */
	public void printDocument(int recordId, int fiscalDocumentTypeId, ProcessInfo info) throws Exception {
		//	Load Document
		loadFiscalDocument(fiscalDocumentTypeId);
		PO po = null;
		//	Just for document
		if(recordId > 0) {
			//	Valid Table
			if(fiscalDocument.getAD_Table_ID() == 0)
				throw new AdempiereException("@AD_Table_ID@ @NotFound@");
			//	Get PO
			MTable table = MTable.get(ctx, fiscalDocument.getAD_Table_ID());
			po = table.getPO(recordId, fiscalDocument.get_TrxName());
			//	Valid Document
			if(po == null)
				throw new AdempiereException("@Record_ID@ @NotFound@");
		}
		//	Connect
		if(handleConnection)
			connect();
		//	Print Document
		printDocument(po, info, fiscalDocument);
		//	Close
		if(handleConnection)
			printerHandler.close();
	}
	
	/**
	 * Print a Document without Process Info
	 * @param recordId
	 * @param fiscalDocumentTypeId
	 * @throws Exception
	 * @return void
	 */
	public void printDocument(int recordId, int fiscalDocumentTypeId) throws Exception{
		printDocument(recordId, fiscalDocumentTypeId, null);
	}
	
	/**
	 * Print a Document without id 
	 * @param fiscalDocumentTypeId
	 * @param info
	 * @throws Exception
	 * @return void
	 */
	public void printDocument(int fiscalDocumentTypeId, ProcessInfo info) throws Exception {
		printDocument(0, fiscalDocumentTypeId, info);
	}
	
	/**
	 * Print document without Process Info and PO
	 * @param fiscalDocumentTypeId
	 * @throws Exception
	 * @return void
	 */
	public void printDocument(int fiscalDocumentTypeId) throws Exception {
		printDocument(0, fiscalDocumentTypeId, null);
	}
	
	/**
	 * Connect device
	 * @throws Exception
	 * @return void
	 */
	private void connect() throws Exception {
		//	Print Document
		if(printerHandler == null)
			throw new AdempiereException("@AD_Device_ID@ @NotFound@");
		//	Get handler
		printerHandler.connect();
		//	Verify Connection
		if(!printerHandler.isConnected()) {
			printerHandler.close();
			throw new AdempiereException("@AD_Device_ID@ @NotConnected@");
		}
		//	Verify Status
		if(!printerHandler.isAvailable())
			throw new AdempiereException("@ResourceNotAvailable@");
	}
	
	/**
	 * Connect with device, if you use it method, you must close connection
	 * @throws Exception
	 * @return void
	 */
	public void connectPrinter() throws Exception {
		handleConnection = false;
		connect();
	}
	
	/**
	 * Close printer connection
	 * @throws Exception
	 * @return void
	 */
	public void closePrinter() throws Exception {
		handleConnection = true;
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
	 * @param po
	 * @param info
	 * @return void
	 * @throws Exception 
	 */
	private void printDocument(PO po, ProcessInfo info, MADFPDocument fDocument) throws Exception {
		//	Validate fiscal Document
		if(fDocument == null)
			return;
		//	Set values to script
		loadScriptValues(po, info, fDocument);
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
							&& po != null) {
						//	Get Link Column
						MColumn linkColumn = MColumn.get(ctx, line.getAD_Column_ID());
						//	Get Child Table
						MTable table = MTable.get(ctx, childDocument.getAD_Table_ID());
						//	Where clause
						String whereClause = table.getTableName() + "." + linkColumn.getColumnName() + " = ?";
						//	log
						log.fine("Child Where Clause[" + whereClause + "]");
						List<PO> childrens = new Query(ctx, table, whereClause, po.get_TrxName())
								.setParameters(po.get_Value(linkColumn.getColumnName()))
								.list();
						//	Iterate List
						if(childrens != null
								&& childrens.size() > 0) {
							for(PO child : childrens) {
								printDocument(child, info, childDocument);
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
			if(code != null
					&& line.isParse()) {
				//	For PO
				if(po != null) {
					code = Env.parseVariable(code, po, fDocument.get_TrxName(), false);
				}
				//	For Info
				if(info != null) {
					code = parseVariable(code, info, fDocument.get_TrxName(), false);
				}
			}
			//	Parse from process
			if(info != null
					&& code != null
					&& line.isParse()) {
				code = Env.parseVariable(code, po, fDocument.get_TrxName(), false);
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
			//	Replace code
			code = printerHandler.getValidCode(code);
			//	Validate Length
			if(code != null
					&& code.length() > 0) {
				cmdBuffer.append(prefix);
				cmdBuffer.append(code);
				cmdBuffer.append(suffix);
			}
		}
		//	Print Buffer
		if(cmdBuffer.length() > 0) {
			//	log
			log.fine("Cmd[" + cmdBuffer + "]");
			printerHandler.printCmd(cmdBuffer.toString());
		}
	}
	
	/**
	 * Parse expression, replaces global or InfoParameter properties @tag@ with actual value. 
	 * @param expression
	 * @param po
	 * @param trxName
	 * @return String
	 */
	private String parseVariable(String expression, ProcessInfo info, String trxName, boolean keepUnparseable) {
		if (expression == null || expression.length() == 0)
			return "";

		String token;
		String inStr = new String(expression);
		StringBuffer outStr = new StringBuffer();

		int i = inStr.indexOf('@');
		while (i != -1)
		{
			outStr.append(inStr.substring(0, i));			// up to @
			inStr = inStr.substring(i+1, inStr.length());	// from first @

			int j = inStr.indexOf('@');						// next @
			if (j < 0)
			{
				log.log(Level.SEVERE, "No second tag: " + inStr);
				return "";						//	no second tag
			}

			token = inStr.substring(0, j);
			
			//format string
			String format = "";
			int f = token.indexOf('<');
			if (f > 0 && token.endsWith(">")) {
				format = token.substring(f+1, token.length()-1);
				token = token.substring(0, f);
			}
			
			if (token.startsWith("#") || token.startsWith("$")) {
				//take from context
				String v = Env.getContext(ctx, token);
				if (v != null && v.length() > 0)
					outStr.append(v);
				else if (keepUnparseable)
					outStr.append("@"+token+"@");
			} else if (info != null) {
				//take from po
				Object v = info.getParameter(token);
				if (v != null) {
					if (format != null && format.length() > 0) {
						if (v instanceof Integer && token.endsWith("_ID")) {
							int tblIndex = format.indexOf(".");
							String table = tblIndex > 0 ? format.substring(0, tblIndex) : token.substring(0, token.length() - 3);
							String column = tblIndex > 0 ? format.substring(tblIndex + 1) : format;
							outStr.append(DB.getSQLValueString(trxName, 
									"select " + column + " from  " + table + " where " + table + "_id = ?", (Integer)v));
						} else if (v instanceof Date) {
							SimpleDateFormat df = new SimpleDateFormat(format);
							outStr.append(df.format((Date)v));
						} else if (v instanceof Number) {
							DecimalFormat df = new DecimalFormat(format);
							outStr.append(df.format(((Number)v).doubleValue()));
						} else {
							MessageFormat mf = new MessageFormat(format);
							outStr.append(mf.format(v));
						}
					} else {
						outStr.append(v.toString());
					}
				}
				else if (keepUnparseable) {
					outStr.append("@"+token+"@");
				}
			}

			inStr = inStr.substring(j+1, inStr.length());	// from second @
			i = inStr.indexOf('@');
		}
		outStr.append(inStr);						// add the rest of the string

		return outStr.toString();
	}
	
	/**
	 * Execute the script
	 * @param AD_Rule_ID
	 * @param string Column Type
	 * @return Object
	 * @throws Exception 
	 */
	private String executeScript(MADFPDocumentLine line) throws Exception {
		//	Put Fiscal Document Line
		m_scriptCtx.put("_FiscalDocumentLine", line);
		//	Get Rule
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
	
	/**
	 * Get Last Document No
	 * @param documentType
	 * @return
	 * @throws Exception
	 * @return String
	 */
	public String getLastDocumentNo(int documentType) throws Exception {
		//	Connect
		if(handleConnection)
			connect();
		String documentNo = printerHandler.getLastDocumentNo(documentType);
		//	Close Connection
		if(handleConnection)
			printerHandler.close();
		//	Return
		return documentNo;
	}
}
