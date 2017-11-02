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

import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;

import org.spin.model.MADDevice;
import org.spin.model.X_AD_DeviceConfigUse;

import tfhka.PrinterException;
import tfhka.ve.S1PrinterData;
import tfhka.ve.Tfhka;

/**
 * @author Dixon Martinez, dmartinez@erpcya.com, ERPCyA http://www.erpcya.com
 */
public class TFHKAFiscalPrinter extends FiscalPrinterHandler {
	
	public TFHKAFiscalPrinter(MADDevice device) {
		super(device);
		printer = new Tfhka();
	}

	/**	Printer			*/
	private Tfhka printer;
	
	@Override
	public boolean isAvailable() throws Exception {
		boolean isAvailable = false;
		boolean handleConnection = !isConnected();
		//	Connect
		if(handleConnection)
			connect();
		if(!isConnected())
			return false;
		//	Get Status
		isAvailable = printer.CheckFprinter();
		//	Close
		if(handleConnection)
			close();
		//	Default Return
		return isAvailable;
	}

	@Override
	public Object connect() throws Exception {
		//	Validate connected
		if(isConnected())
			return true;
		String port = getConfigValueAsString(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_PORT);
		boolean isConnected = printer.OpenFpctrl(port);
		setIsConnected(isConnected);
		return isConnected;
	}

	@Override
	public void close() throws Exception {
		printer.CloseFpctrl();
	}

	@Override
	public Object read() throws Exception {
		return null;
	}

	@Override
	public Object write(Object... value) throws Exception {
		//	Validate Value
		if(value == null
				|| value.length == 0) {
			return null;
		}
		//	
		String printValue = (String) value[0];
		//	Write
		return printer.SendCmd(printValue);
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
		printer.printXReport();
	}

	@Override
	public void printZReport() throws Exception {
		printer.printZReport();
	}

	@Override
	public Object getFiscalPrinter() {
		return printer;
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
	public String getLastDocumentNo(int documentType) throws PrinterException {
		S1PrinterData status = printer.getS1PrinterData();
		//	Get Status
		if(status != null) {
			if(documentType == DOCUMENT_TYPE_INVOICE) {
				return String.valueOf(status.getLastInvoiceNumber());
			} else if(documentType == DOCUMENT_TYPE_CREDIT_MEMO) {
				return String.valueOf(status.getLastCreditNoteNumber());
			} else if(documentType == DOCUMENT_TYPE_DEBIT_MEMO) {
				return String.valueOf(status.getLastDebitNoteNumber());
			}
		}
		//	Default
		return null;
	}
	
	@Override
	public String toString() {
		try {
			return getPrinterInfo();
		} catch (PrinterException e) {
			
		}
		//	Default
		return super.toString();
	}

	@Override
	public String getPrinterInfo() throws PrinterException {
		S1PrinterData status = printer.getS1PrinterData();
		return "RegisteredMachineNumber = " + status.getRegisteredMachineNumber()
				+ "\nCurrentPrinterDateTime = " + status.getCurrentPrinterDateTime()
				+ "\nLastInvoiceNumber = " + status.getLastInvoiceNumber()
				+ "\nLastCreditNoteNumber = " + status.getLastCreditNoteNumber()
				+ "\nLastDebitNoteNumber = " + status.getLastDebitNoteNumber()
				+ "\nQuantityOfInvoicesToday = " + status.getQuantityOfInvoicesToday()
				+ "\nQuantityOfCreditNotesToday = " + status.getQuantityOfCreditNotesToday()
				+ "\nQuantityDebitNoteToday = " + status.getQuantityDebitNoteToday()
				+ "\nQuantityNonFiscalDocuments = " + status.getQuantityNonFiscalDocuments()
				+ "\nAuditReportsCounter = " + status.getAuditReportsCounter()
				+ "\nDailyClosureCounter = " + status.getDailyClosureCounter()
				+ "\nTotalDailySales = " + status.getTotalDailySales();
	}

	@Override
	public HashMap<String, Object> getPrinterInfoValues()
			throws PrinterException {
		HashMap<String, Object> values = new HashMap<String, Object>();
		//	Get Values
		S1PrinterData status = printer.getS1PrinterData();
		values.put("RegisteredMachineNumber", status.getRegisteredMachineNumber()); 
		values.put("LastInvoiceNumber", status.getLastInvoiceNumber());
		values.put("LastCreditNoteNumber", status.getLastCreditNoteNumber());
		values.put("LastDebitNoteNumber", status.getLastDebitNoteNumber());
		values.put("QuantityOfInvoicesToday", status.getQuantityOfInvoicesToday());
		values.put("QuantityOfCreditNotesToday", status.getQuantityOfCreditNotesToday());
		values.put("QuantityDebitNoteToday", status.getQuantityDebitNoteToday());
		values.put("QuantityNonFiscalDocuments", status.getQuantityNonFiscalDocuments());
		values.put("TotalDailySales", status.getTotalDailySales());
		values.put("CashierNumber", status.getCashierNumber());
		values.put("CurrentPrinterDateTime", status.getCurrentPrinterDateTime());
		values.put("AuditReportsCounter", status.getAuditReportsCounter());
		values.put("DailyClosureCounter", status.getDailyClosureCounter());
		//	Return
		return values;
	}
}
