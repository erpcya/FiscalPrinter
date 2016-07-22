/******************************************************************************
 * Product: ADempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 2006-2016 ADempiere Foundation, All Rights Reserved.         *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * or via info@adempiere.net or http://www.adempiere.net/license.html         *
 *****************************************************************************/

package org.spin.process;

import org.spin.model.MADDevice;
import org.spin.model.MADFPDocument;
import org.spin.util.FiscalDocumentHandler;


/** Generated Process for (Test Conection)
 *  @author ADempiere (generated) 
 *  @version Release 3.8.0
 */
public class TestConection extends TestConectionAbstract
{
	private int p_Record_ID = 0;
	
	@Override
	protected void prepare()
	{
		super.prepare();
		p_Record_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception
	{
		
		MADFPDocument document = new MADFPDocument(getCtx(), 1000000, get_TrxName());
		MADDevice device = new MADDevice(getCtx(), 1000000, get_TrxName());
		FiscalDocumentHandler handler = new FiscalDocumentHandler(document, device);
		handler.printDocument(null);
		
		/*MLVEFiscalPrinter m_FP = new MLVEFiscalPrinter(getCtx(), p_Record_ID, get_TrxName());
		MLVEFPDevice m_FP_Device = (MLVEFPDevice) m_FP.getLVE_FP_Device();
		String sPort = "";//= m_FP.getFTA_SerialPortConfig().getSerialPort();
		String msg = "";
		if(m_FP_Device.getClassname() != null) {
			FiscalPrinterAbstract test = null;
			Class<?> clazz = Class.forName(m_FP_Device.getClassname());
			test = (FiscalPrinterAbstract) clazz.newInstance();
			if(test != null) {
				test.setPortName(sPort);
				test.openPort();
				test.checkFiscalPrinter();
				test.readFPStatus();
				test.sendFileCmd("./cmd.txt");
				test.closePort();
				msg = test.getMsg();
			}
		}
		return msg;*/
		return null;
	}
}