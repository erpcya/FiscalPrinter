/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 or later of the                                  *
 * GNU General Public License as published                                    *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2016 E.R.P. Consultores y Asociados, C.A                *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpya.com                                  *
 *****************************************************************************/
package org.spin.support;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.HashMap;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.Env;
import org.compiere.util.Util;
import org.spin.model.MADDevice;
import org.spin.model.X_AD_DeviceConfigUse;
import org.spin.util.FiscalPrinterHandler;

/**
 * VMax printer support from spooler application. See: http://www.elepos.com.ve/eleposveweb/index.htm
 * Note that spooler only work for Microsoft Windows OS
 * @author Yamel Senih, ysenih@erpya.com, ERPCyA http://www.erpya.com
 */
public class VMaxSpoolerFiscalPrinter extends FiscalPrinterHandler implements ISpoolerPrinter {
	
	public VMaxSpoolerFiscalPrinter(MADDevice device) {
		super(device);
	}
	/**	Folder where is write document file	*/
	private static final String FILES_FOLDER = "files";
	/**	Folder where is write document file	*/
	private static final String DOCUMENT_NAME = "Document.txt";
	/**	File Writer	*/
	private FileWriter fileWriter = null;
	/**	Error Message	*/
	private StringBuffer errorMessage = new StringBuffer();
	/**	First Command	*/
	private boolean isFirst = true;
	/**	Document No Flag	*/
	private final String DOCUMENT_NO_FLAG = "<CERRAR_CF ";
	/**	Document No Length	*/
	private final int DOCUMENT_NO_LENGTH = 8;
	/**	Last Spooler result	*/
	private StringBuffer lastSpoolerLog = new StringBuffer();
	
	@Override
	public boolean isAvailable() throws Exception {
		return validateFiles();
	}

	@Override
	public Object connect() throws Exception {
		if(validateFiles()) {
			//	Print batch
			String runnableFolder = getConfigValueAsString(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_SPFOLDER);
			if(runnableFolder.endsWith(File.separator)) {
				runnableFolder = runnableFolder.substring(0, runnableFolder.length() - 1);
			}
			String fileDocument = runnableFolder + File.separator + FILES_FOLDER + File.separator + DOCUMENT_NAME;
			File file = new File(fileDocument);
			deleteIfExist(file);
			setIsConnected(true);
			openFileWriter(file);
			return true;
		}
		setIsConnected(false);
		return false;
	}

	@Override
	public void close() throws Exception {
		closeFileWriter();
		//	Execute runnable file
	}

	@Override
	public Object read() throws Exception {
		return null;
	}

	@Override
	public Object write(Object... value) throws Exception {
		return writeLine((String) value[0]);
	}
	
	@Override
	public void printStackCmd() throws Exception {
		super.printStackCmd();
		closeFileWriter();
		//	Run Spooler
		runSpooler();
	}
	
	/**
	 * Run Spooler after write file
	 * @return void
	 */
	private void runSpooler() {
		try {
			String runnableFolder = getConfigValueAsString(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_SPFOLDER);
			String runnableFile = getConfigValueAsString(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_SPAPP);
			if(Util.isEmpty(runnableFolder)
					&& Util.isEmpty(runnableFile)) {
				return;
			}
			if(runnableFolder.endsWith(File.separator)) {
				runnableFolder = runnableFolder.substring(0, runnableFolder.length() - 1);
			}
			//	Get complete path
			runnableFile = runnableFolder + File.separator + runnableFile;
        	ProcessBuilder builder = new ProcessBuilder(runnableFile);
        	builder.directory(new File(runnableFolder));
            final Process process = builder.start();
            InputStream is = process.getInputStream();
            InputStreamReader isr = new InputStreamReader(is);
            BufferedReader br = new BufferedReader(isr);
            String line;
            lastSpoolerLog = new StringBuffer();
            while ((line = br.readLine()) != null) {
            	lastSpoolerLog.append(line);
            }
            //	Read document No
        } catch (Exception e) {
        	throw new AdempiereException(e);
        }
	}

	@Override
	public InputStream getInputStream() {
		return null;
	}

	@Override
	public OutputStream getOutputStream() {
		return null;
	}

	@Override
	public void printXReport() throws Exception {
		
	}

	@Override
	public void printZReport() throws Exception {
		
	}

	@Override
	public Object getFiscalPrinter() {
		return null;
	}

	@Override
	public void printCmd(String cmd) throws Exception {
		write(cmd);
	}

	@Override
	public String getValidCode(String code) {
		//	Replace
		if(code != null
				&& code.length() > 0) {
			return code.replaceAll("[+^:&áàäéèëíìïóòöúùñÁÀÄÉÈËÍÌÏÓÒÖÚÙÜÑçÇ$]","");
		}
		return null;
	}

	@Override
	public String getLastDocumentNo(int documentType) throws Exception {
		int startIndext = lastSpoolerLog.lastIndexOf(DOCUMENT_NO_FLAG) + DOCUMENT_NO_FLAG.length();
		if(startIndext > 0) {
			int endIndex = startIndext + DOCUMENT_NO_LENGTH;
			if(endIndex < lastSpoolerLog.length()) {
				return lastSpoolerLog.substring(startIndext, endIndex);
			}
		}
		//	Default
		return null;
	}
	
	@Override
	public String toString() {
		try {
			return getPrinterInfo();
		} catch (Exception e) {
			
		}
		//	Default
		return super.toString();
	}

	@Override
	public String getPrinterInfo() throws Exception {
		return lastSpoolerLog.toString();
	}

	@Override
	public HashMap<String, Object> getPrinterInfoValues()
			throws Exception {
		HashMap<String, Object> values = new HashMap<String, Object>();
		//	Return
		return values;
	}
	
	/**
	 * Validate if Exist files for run
	 * @return boolean
	 */
	private boolean validateFiles() {
		String runnableFolder = getConfigValueAsString(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_SPFOLDER);
		String runnableFile = getConfigValueAsString(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_SPAPP);
		if(Util.isEmpty(runnableFolder)
				&& Util.isEmpty(runnableFile)) {
			return false;
		}
		if(runnableFolder.endsWith(File.separator)) {
			runnableFolder = runnableFolder.substring(0, runnableFolder.length() - 1);
		}
		String fileDocument = runnableFolder + File.separator + FILES_FOLDER;
		//	Get complete path
		runnableFile = runnableFolder + File.separator + runnableFile;
		return new File(runnableFolder).exists() && new File(runnableFile).exists() && new File(fileDocument).exists();
	}
	
	/**
	 * Delete File
	 * @param file
	 */
	private void deleteIfExist(File file) {
		if(file == null) {
			return;
		}
		//	Delete it
		if (file.exists()) {
			file.delete();
		}
	}
	
	/**
	 * Open File Writer
	 * @param file
	 * @throws IOException
	 */
	public void openFileWriter(File file) {
		if(fileWriter != null) {
			return;
		}
		//	Open it
		try {
			fileWriter = new FileWriter(file);
		} catch (IOException e) {
			addError(e.getLocalizedMessage());
		}
	}
	
	/**
	 * Close File Writer and set to null
	 * @throws IOException
	 */
	public void closeFileWriter() {
		if(fileWriter == null) {
			return;
		}
		//	Close it
		try {
			fileWriter.flush();
			fileWriter.close();
			//	Set to null it
			fileWriter = null;
		} catch (IOException e) {
			addError(e.getLocalizedMessage());
		}
	}
	
	/**
	 * Write a line to file
	 * @param line
	 * @throws IOException 
	 */
	public boolean writeLine(String line) {
		if(fileWriter == null) {
			return false;
		}
		//	Write line
		boolean ok = false;
		try {
			if(!isFirst) {
				line = Env.NL + line;
			}
			fileWriter.write(line);
			if(isFirst) {
				isFirst = false;
			}
			ok = true;
		} catch (IOException e) {
			addError(e.getLocalizedMessage());
		}
		return ok;
	}
	
	/**
	 * Add error to buffer
	 * @param error
	 */
	public void addError(String error) {
		if(errorMessage.length() > 0) {
			errorMessage.append(Env.NL);
		}
		//	Add error
		errorMessage.append(error);
	}
	
	/**
	 * Get Error Message
	 * @return
	 */
	public String getError() {
		return errorMessage.toString();
	}
}
