import java.awt.GraphicsConfiguration;
import java.awt.HeadlessException;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

import javax.swing.JFrame;

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
public class TestTFHKA extends JFrame implements I_Fiscal_Printer, WindowListener {

	
	
	
	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 * @param arg0
	 */
	public TestTFHKA(GraphicsConfiguration arg0) {
		super(arg0);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 * @param arg0
	 * @param arg1
	 */
	public TestTFHKA(String arg0, GraphicsConfiguration arg1) {
		super(arg0, arg1);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 * @param arg0
	 * @throws HeadlessException
	 */
	public TestTFHKA(String arg0) throws HeadlessException {
		super(arg0);
		
		addNotify();

		addWindowListener(this);
	}

	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 * long
	 * serialVersionUID
	 * 04/04/2014
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 */
	public TestTFHKA() {
		addNotify();

		addWindowListener(this);
	}

	static Tfhka m_Tfhka;
	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 * @param args
	 */
	public static void main(String[] args) {
		
		TestTFHKA t = new TestTFHKA("Test Fiscal Printer");
		t.setVisible(true);
		
		m_Tfhka = new Tfhka();
		
		if(m_Tfhka.OpenFpctrl("COM1")){
			System.out.println(m_Tfhka.Estado);
			
			if(m_Tfhka.CheckFprinter()){
				System.out.println("Impresora Conectada");
				if(m_Tfhka.ReadFpStatus())
					System.out.println(m_Tfhka.Estado);
				
				if(m_Tfhka != null){					
				/*	try {
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
					
					System.out.println("Comando Enviado");*/
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

	/* (non-Javadoc)
	 * @see org.fiscalprinter.util.I_Fiscal_Printer#printCmd(java.lang.String)
	 */
	@Override
	public void printCmd(String cmd) {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see java.awt.event.WindowListener#windowActivated(java.awt.event.WindowEvent)
	 */
	@Override
	public void windowActivated(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see java.awt.event.WindowListener#windowClosed(java.awt.event.WindowEvent)
	 */
	@Override
	public void windowClosed(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see java.awt.event.WindowListener#windowClosing(java.awt.event.WindowEvent)
	 */
	@Override
	public void windowClosing(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see java.awt.event.WindowListener#windowDeactivated(java.awt.event.WindowEvent)
	 */
	@Override
	public void windowDeactivated(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see java.awt.event.WindowListener#windowDeiconified(java.awt.event.WindowEvent)
	 */
	@Override
	public void windowDeiconified(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see java.awt.event.WindowListener#windowIconified(java.awt.event.WindowEvent)
	 */
	@Override
	public void windowIconified(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see java.awt.event.WindowListener#windowOpened(java.awt.event.WindowEvent)
	 */
	@Override
	public void windowOpened(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	
}
