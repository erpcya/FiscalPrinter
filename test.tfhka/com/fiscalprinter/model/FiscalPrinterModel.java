/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * LVE-Fiscal-Printer
 * com.fiscalprinter.model
 * FiscalPrinterModel.java
 * 14/04/2014
 */
package com.fiscalprinter.model;

import gnu.io.CommPortIdentifier;

import java.util.Enumeration;

import javax.swing.JOptionPane;

import tfhka.Tfhka;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class FiscalPrinterModel{

	Tfhka m_Tfhka;
	
	private String port;
	private boolean status;
	
	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 */
	public FiscalPrinterModel(String port) {
		this.port = port;
		
		m_Tfhka = 
				new Tfhka(this.port);
	}
	
	public FiscalPrinterModel() {
		this.port = "";
	}
	
	public boolean openPort(){
		status = m_Tfhka.IndPuerto;
		
		if(status)
			JOptionPane.showMessageDialog(null, "Opened");
		else
			JOptionPane.showMessageDialog(null, "Not Opened");
		
		return status;
	}

	public boolean closePort(String port){
		 m_Tfhka.CloseFpctrl();
		 status = m_Tfhka.IndPuerto;
		
		if(!status)
			JOptionPane.showMessageDialog(null, "Closed");
		else
			JOptionPane.showMessageDialog(null, "Not Closed");
		
		return status;
	}


}

