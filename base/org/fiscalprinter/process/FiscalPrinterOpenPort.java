/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * LVE-Fiscal-Printer
 * org.fiscalprinter.process
 * FiscalPrinterOpenPort.java
 * 26/03/2014
 */
package org.fiscalprinter.process;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
/*import org.spin.model.MFTASerialPortConfig;
import org.spin.model.X_FTA_SerialPortConfig;
*/
import tfhka.Tfhka;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class FiscalPrinterOpenPort extends SvrProcess {

	int p_FTA_SerialPortConfig_ID;
	
	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para : getParameter()) {
			String name = para.getParameterName();
			if(name == null)
				;
		/*	if(name.equals(X_FTA_SerialPortConfig.COLUMNNAME_FTA_SerialPortConfig_ID))
				p_FTA_SerialPortConfig_ID = para.getParameterAsInt();*/
		}

	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		/*MFTASerialPortConfig m_FTA_SerialPortConfig = new MFTASerialPortConfig(getCtx(), p_FTA_SerialPortConfig_ID, get_TrxName());
		
		
		Tfhka m_Tfhka = new Tfhka(m_FTA_SerialPortConfig.getSerialPort());
		
		try {
			m_Tfhka.SendCmd(" 000000312000001000Papa Fritas");
			m_Tfhka.SendCmd('"'+"000000450000001000Cocossete");
			m_Tfhka.SendCmd("!000000500000001000Galletas");
			m_Tfhka.SendCmd("#000000100000001000Jojoto");
			m_Tfhka.SendCmd("101");
		}
		catch(tfhka.PrinterExeption pe)
		{}
		
		return String.valueOf(m_Tfhka.IndPuerto);*/
		return "";
	}

}
