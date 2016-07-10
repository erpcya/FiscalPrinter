/**
 * 
 */
package org.spin.util;

import org.adempiere.exceptions.AdempiereException;

import tfhka.*;
import tfhka.ve.*;

/**
 * @author erpcya_tt
 *
 */
public abstract class FiscalPrinterAbstract {

	protected String portName;
	protected String msg;
	protected Tfhka tf;
	protected PrinterStatus m_PrinterStatus;
	
	/**
	 * Constructor
	 * @author <a href="dixon.22martinez@gmail.com">Dixon Martinez</a>
	 */
	protected FiscalPrinterAbstract() {
		tf = new Tfhka();
	}
	
	/**
	 * @return the portName
	 */
	public String getPortName() {
		return portName;
	}

	/**
	 * @param portName the portName to set
	 */
	public void setPortName(String portName) {
		this.portName = portName;
	}

	/**
	 * @return the msg
	 */
	public String getMsg() {
		return msg;
	}

	/**
	 * @param msg the msg to set
	 */
	protected void setMsg(String msg) {
		this.msg = msg;
	}
	
	protected boolean isConnected() {
		return false;
	}
	
	public void openPort() {};
	public void closePort() {};
	public void checkFiscalPrinter() {};
	public void checkDrawer() {};
	public void readFPStatus () {};
	public void sendCmd (String cmd) throws AdempiereException, PrinterException {};
	
	public int sendFileCmd (String route) {
		return 0;
	}
	
	
}
