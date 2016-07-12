/**
 * 
 */
package test;

import org.adempiere.exceptions.AdempiereException;

import tfhka.*;
import tfhka.ve.*;

/**
 * @author erpcya_tt
 *
 */
public abstract class FiscalPrinterAbstract2 {

	protected String portName;
	protected String msg;
	protected Tfhka tf;
	protected PrinterStatus m_PrinterStatus;
	
	/**
	 * Constructor
	 * @author <a href="dixon.22martinez@gmail.com">Dixon Martinez</a>
	 */
	protected FiscalPrinterAbstract2() {
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
	
	protected abstract boolean isConnected();
	public abstract void openPort();
	public abstract void closePort();
	public abstract void checkFiscalPrinter();
	public abstract void checkDrawer();
	public abstract void readFPStatus ();
	public abstract void sendCmd (String cmd) throws AdempiereException, PrinterException;
	public abstract int sendFileCmd (String route);
	
	
}
