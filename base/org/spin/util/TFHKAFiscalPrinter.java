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

import org.spin.model.MADDevice;
import org.spin.model.X_AD_DeviceConfigUse;

import tfhka.ve.Tfhka;

/**
 * @author Dixon Martinez, dmartinez@erpcya.com, ERPCyA http://www.erpcya.com
 */
public class TFHKAFiscalPrinter extends FiscalPrinterHandler {
	
	public TFHKAFiscalPrinter(MADDevice device) {
		super(device);
		printer2 = new Tfhka();
	}

	/**	Printer			*/
	private Tfhka printer2;
	
	@Override
	public boolean isAvailable() throws Exception {
		return false;
	}

	@Override
	public Object connect() throws Exception {
		//	Validate connected
		if(isConnected())
			return true;
		String port = getConfigValueAsString(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_PORT);
		boolean isConnected = printer2.OpenFpctrl(port);
		setIsConnected(isConnected);
		return isConnected;
	}

	@Override
	public void close() throws Exception {
		printer2.CloseFpctrl();
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
		return printer2.SendCmd(printValue);
	}

	@Override
	public boolean isCheckOk() {
		return printer2.CheckFprinter();
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
		printer2.printXReport();
	}

	@Override
	public void printZReport() throws Exception {
		printer2.printZReport();
	}

	@Override
	public Object getFiscalPrinter() {
		return printer2;
	}

	@Override
	public void printCmd(String cmd) throws Exception {
		write(cmd);
	}
}
