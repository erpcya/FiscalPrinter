/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * LVE-Fiscal-Printer
 * org.fiscalprinter.util
 * I_Fiscal_Printer.java
 * 03/04/2014
 */
package org.fiscalprinter.util;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public interface I_Fiscal_Printer_Display {
	
	public String getDateTime();
	
	public void setDateTime(String dateTime);
	
	public String getMsgComercial();
	
	public void setMsg(String []msg);
}
