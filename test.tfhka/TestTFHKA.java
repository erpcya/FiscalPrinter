import org.fiscalprinter.util.I_Fiscal_Printer;

import tfhka.PrinterExeption;
import tfhka.Tfhka;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * LVE-Fiscal-Printer
 * 
 * TestTFHKA.java
 * 26/03/2014
 */

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class TestTFHKA implements I_Fiscal_Printer {

	
	
	
	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 */
	public TestTFHKA() {
		// TODO Auto-generated constructor stub
	}

	static Tfhka m_Tfhka;
	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 * @param args
	 */
	public static void main(String[] args) {
		m_Tfhka = new Tfhka();
		
		if(m_Tfhka.OpenFpctrl("COM1")){
			System.out.println(m_Tfhka.Estado);
			
			if(m_Tfhka.CheckFprinter()){
				System.out.println("Impresora Conectada");
				if(m_Tfhka.ReadFpStatus())
					System.out.println(m_Tfhka.Estado);
				
				if(m_Tfhka != null){					
					try {
						m_Tfhka.SendCmd("i01Nombre:Dixon Martinez");
						m_Tfhka.SendCmd(" 000000312000001000Papa Fritas");
						m_Tfhka.SendCmd('"'+"000000450000001000Cocossete");
						m_Tfhka.SendCmd("!000000500000001000Galletas");
						m_Tfhka.SendCmd("#000000100000001000Jojoto");
						m_Tfhka.SendCmd("101");
					}
					catch(PrinterExeption e){
						e.printStackTrace();
					}
					
					System.out.println("Comando Enviado");
				}
			}
			else
				System.out.println("Impresora No Conectada");
		}
		m_Tfhka.CloseFpctrl();
		System.out.println(m_Tfhka.IndPuerto);
		

	}

	/* (non-Javadoc)
	 * @see org.fiscalprinter.util.I_Fiscal_Printer#inforClient()
	 */
	@Override
	public void inforClient() {
		try {
			m_Tfhka.SendCmd("i01Nombre:Dixon Martinez");
		} catch (PrinterExeption e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
