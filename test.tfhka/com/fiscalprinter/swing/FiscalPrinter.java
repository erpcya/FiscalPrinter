package com.fiscalprinter.swing;
import gnu.io.CommPortIdentifier;
import gnu.io.PortInUseException;

import java.awt.Cursor;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.util.Enumeration;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import tfhka.Tfhka;

import com.examples.serialdemo.AlertDialog;
import com.examples.serialdemo.SerialConnection;
import com.examples.serialdemo.SerialConnectionException;
import com.fiscalprinter.model.FiscalPrinterModel;
import com.fiscalprinter.util.Connection;
import com.fiscalprinter.util.ParameterPort;


/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * LVE-Fiscal-Printer
 * 
 * FiscalPrinter.java
 * 14/04/2014
 */

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class FiscalPrinter extends JFrame implements ActionListener{

	private JPanel jPanelBot ;
	
	private ConfigurationPanel jPanelConfiguration;
	
	private JLabel jLabelPortName;
	
	private JButton botOpenPort, botClosedPort, botExit, botCheckPrinter;
	
	private FiscalPrinterModel fpm ;

	private Connection   connection;
	
	private ParameterPort parameters;
	
	public FiscalPrinter(){
		super("Fiscal Printer");
		parameters =
				new ParameterPort();
		
		//	Aplico el layout
		this.setLayout(
				new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));
	
		//	Inicializo Panel de Configuracion
		jPanelConfiguration = 
				new ConfigurationPanel(this);
		
		//	Inicializo panel de Botones
		jPanelBot =
				new JPanel();
		
		//	Inicializo los botones
		//	Abrir Puerto
		botOpenPort = 
				new JButton("Open Port");
		botOpenPort.addActionListener(this);
		
		//	Cerrar Puerto
		botClosedPort =
				new JButton("Closed Port");
		botClosedPort.addActionListener(this);
		
		//	Chequear Impresora
		botCheckPrinter =
				new JButton("Check Printer");
		botCheckPrinter.addActionListener(this);
		
		//	Salir Aplicacion
		botExit =
				new JButton("Exit");
		botExit.addActionListener(this);
		
		
		//	Agrego los botones al panel principal
		jPanelBot.add(botOpenPort);
		jPanelBot.add(botCheckPrinter);
		jPanelBot.add(botClosedPort);
		jPanelBot.add(botExit);
		
		
			
		this.add(jPanelConfiguration);
		
		this.add(jPanelBot);
		this.pack();
		
		this.setVisible(true);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	
		parameters =
				new ParameterPort();
		connection = 
				new Connection(this, parameters, 
						new JTextArea(),
						new JTextArea()
				);

		setConfigurationPanel();

	}
	
    /**
     * Sets the GUI elements on the configurationPanel.
     */
    public void setConfigurationPanel() {
    	jPanelConfiguration.setConfigurationPanel();
    } 

	 /**
     * Calls closeConnection on the SerialConnection and toggles the buttons
     * to a closed port state.
     */
    public void portClosed() {
    	connection.closeConnection();
    	botOpenPort.setEnabled(true);
    	
	}
    
	/* (non-Javadoc)
	 * @see java.awt.event.ActionListener#actionPerformed(java.awt.event.ActionEvent)
	 */
	@Override
	public void actionPerformed(ActionEvent evt) {
		if(evt.getSource() == botExit){
			dispose();
			portClosed();
		}
		if (evt.getSource() == botOpenPort){
			 botOpenPort.setEnabled(false);

			    Cursor previousCursor = getCursor();

			    setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
			    jPanelConfiguration.setParameters();

			    try {
			    	connection.openConnection();
			    } catch (SerialConnectionException e2) {
				AlertDialog ad = 
				    new AlertDialog(this, "Error Opening Port!", 
						    "Error opening port,", 
						    e2.getMessage() + ".", 
						    "Select new settings, try again.");

				botOpenPort.setEnabled(true);
				setCursor(previousCursor);

				return;
			    } 

			    portOpened();
			    setCursor(previousCursor);

		}
		if (evt.getSource() == botClosedPort){
			portClosed();
		}
		if (evt.getSource() == botCheckPrinter)
			;
			
	}

	public void portOpened() {
		botOpenPort.setEnabled(false);
		botClosedPort.setEnabled(true);
		Tfhka m_Tfhka = new Tfhka();
	}

 class ConfigurationPanel extends JPanel implements ItemListener{

		private JFrame jFrameParent;
		
		private JLabel jLabelPortName, jLabelBaud, jLabelFlowControlIn, jLabelFlowContrlOut,
						jLabelDataBits, jLabelStopBits,jLabelParity;
		
		private JComboBox jComboBoxBaud,jComboBoxDataBits,jComboBoxBitsStop,jComboBoxParity,jComboBoxPort;
		
		/*private Choice flowChoiceIn;
		private Choice flowChoiceOut;
		*/
		private Connection connection;
		
		/**
		 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
		 */
		public ConfigurationPanel(JFrame jFrameParent) {
			//	Set JFrame Parent
			this.jFrameParent = jFrameParent;

			//	Set Layout
			this.setLayout(
					new GridLayout(3,3));
			
			//	Initialize Components
			//	Initialize Port Name
			jLabelPortName =
					new JLabel("Port Name", JLabel.LEFT);
			
			jComboBoxPort =
					new JComboBox();
			getListPort(jComboBoxPort);
			
			//	Initialize Baud Rate
			jLabelBaud = 
					new JLabel("Baud Rate", JLabel.LEFT);

			jComboBoxBaud =
					new JComboBox();
			getListBaudios(jComboBoxBaud);
			
			//	Initialize Data Bits
			jLabelDataBits =
					new JLabel("Data Bits", JLabel.LEFT);
			jComboBoxDataBits =
					new JComboBox();
			getListDataBits(jComboBoxDataBits);
			
			//	Initialize Stops Bits
			jLabelStopBits =
					new JLabel("Stop Bits",JLabel.LEFT);
			jComboBoxBitsStop =
					new JComboBox();
			getListBitsStop(jComboBoxBitsStop);
			
			//	Initialize Parity
			jLabelParity =
					new JLabel("Parity", JLabel.LEFT);
			jComboBoxParity =
					new JComboBox();
			getListParity(jComboBoxParity);
			
			//	Add Component to Panel configuration
			//	Add port Name
			this.add(jLabelPortName);
			this.add(jComboBoxPort);
			
			//	Add Baud rate
			this.add(jLabelBaud);
			this.add(jComboBoxBaud);
			
			//	Add Data Bits
			this.add(jLabelDataBits);
			this.add(jComboBoxDataBits);
			
			//	Add Stop Bits
			this.add(jLabelStopBits);
			this.add(jComboBoxBitsStop);
			
			//	Add Parity
			this.add(jLabelParity);
			this.add(jComboBoxParity);
			
		}


		/**
		 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
		 * @param jComboBoxParity2
		 */
		private void getListParity(JComboBox cm) {
			cm.addItem("Unknown");
			cm.addItem("None");
			cm.addItem("Odd");
			cm.addItem("Even");
			cm.setSelectedItem(parameters.getParityString());
			cm.addItemListener(this);

		}
		
		/**
		 * Sets the elements for the portChoice from the ports available on the
		 * system. Uses an emuneration of comm ports returned by
		 * CommPortIdentifier.getPortIdentifiers(), then sets the current
		 * choice to a mathing element in the parameters object.
		 */
		public void getListPort(JComboBox cm) {
			CommPortIdentifier portId;
			Enumeration	       en = CommPortIdentifier.getPortIdentifiers();
			
			// iterate through the ports.
			while (en.hasMoreElements()) {
				portId = (CommPortIdentifier) en.nextElement();
				
				if (portId.getPortType() == CommPortIdentifier.PORT_SERIAL) {
					cm.addItem(portId.getName());
				} 
			} 

			//cm.setSelectedItem(parameters.getPortName());
		} 


		/**
		 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
		 * @param cm
		 */
		private void getListBitsStop(JComboBox cm) {
			cm.addItem("Unknown");
			cm.addItem("1");
			cm.addItem("1.5");
			cm.addItem("2");
			cm.setSelectedItem(parameters.getStopbitsString());
			cm.addItemListener(this);
		}


		/**
		 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
		 * @param cm
		 */
		private void getListDataBits(JComboBox cm) {
			cm.addItem("Unknown");
			cm.addItem("5");
			cm.addItem("6");
			cm.addItem("7");
			cm.addItem("8");
			cm.setSelectedItem(parameters.getDatabitsString());
			
			cm.addItemListener(this);

		}


		/**
		 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
		 * @param cm
		 */
		private void getListBaudios(JComboBox cm) {
			cm.addItem(BAUD_RATE_UNKNOWN);
			cm.addItem("50");
			cm.addItem("75");
			cm.addItem("110");
			cm.addItem("134");
			cm.addItem("150");
			cm.addItem("200");
			cm.addItem("300");
			cm.addItem("600");
			cm.addItem("1200");
			cm.addItem("1800");
			cm.addItem("2400");
			cm.addItem("4800");
			cm.addItem("9600");
			cm.addItem("19200");
			cm.addItem("28800");  // This is a known bad value to test
			cm.addItem("38400");
			cm.addItem("57600");
			cm.addItem("115200");
			cm.setSelectedItem(parameters.getBaudRateString());
			cm.addItemListener(this);
		}


		/**
		 * Sets the configuration panel to the settings in the parameters object.
		 */
		public void setConfigurationPanel() {
			jComboBoxPort.setSelectedItem(parameters.getPortName());
			jComboBoxBaud.setSelectedItem(parameters.getBaudRate());
			
			jComboBoxDataBits.setSelectedItem(parameters.getDatabits());
			jComboBoxBitsStop.setSelectedItem(parameters.getStopbits());

			jComboBoxParity.setSelectedItem(parameters.getParity());
			
			//flowChoiceIn.select(parameters.getFlowControlInString());
		    //flowChoiceOut.select(parameters.getFlowControlOutString());
		} 

		/**
		 * Sets the parameters object to the settings in the configuration panel.
		 */
		public void setParameters() {
		    parameters.setPortName(jComboBoxPort.getSelectedItem().toString());
		    parameters.setBaudRate(jComboBoxBaud.getSelectedItem().toString());
		    //parameters.setFlowControlIn(flowChoiceIn.getSelectedItem());
		    //parameters.setFlowControlOut(flowChoiceOut.getSelectedItem());
		    parameters.setDatabits(jComboBoxDataBits.getSelectedItem().toString());
		    parameters.setStopbits(jComboBoxBitsStop.getSelectedItem().toString());
		    parameters.setParity(jComboBoxParity.getSelectedItem().toString());
		} 

		/**
		 * Sets the elements for the portChoice from the ports available on the
		 * system. Uses an emuneration of comm ports returned by
		 * CommPortIdentifier.getPortIdentifiers(), then sets the current
		 * choice to a mathing element in the parameters object.
		 */
		void listPortChoices() {
		    CommPortIdentifier portId;
		    Enumeration	       en = CommPortIdentifier.getPortIdentifiers();

		    // iterate through the ports.
		    while (en.hasMoreElements()) {
			portId = (CommPortIdentifier) en.nextElement();

			if (portId.getPortType() == CommPortIdentifier.PORT_SERIAL) {
			    jComboBoxPort.addItem(portId.getName());
			} 
		    } 

		    jComboBoxPort.setSelectedItem(parameters.getPortName());
		  
		} 

		/**
		 * Event handler for changes in the current selection of the Choices.
		 * If a port is open the port can not be changed.
		 * If the choice is unsupported on the platform then the user will
		 * be notified and the settings will revert to their pre-selection
		 * state.
		 */
		public void itemStateChanged(ItemEvent e) {

		    // Check if port is open.
		    if (connection.isOpen()) {

			// If port is open do not allow port to change.
			if (e.getItemSelectable() == jComboBoxPort) {

			    // Alert user.
			    AlertDialog ad = new AlertDialog(jFrameParent, "Port Open!", 
							     "Port can not", 
							     "be changed", 
							     "while a port is open.");

			    // Return configurationPanel to pre-choice settings.
			    setConfigurationPanel();

			    return;
			} 

			// Set the parameters from the choice panel.
			setParameters();

			try {

			    // Attempt to change the settings on an open port.
			    connection.setConnectionParameters();
			} catch (SerialConnectionException ex) {

			    // If setting can not be changed, alert user, return to
			    // pre-choice settings.
			    AlertDialog ad = 
				new AlertDialog(jFrameParent, "Unsupported Configuration!", 
						"Configuration Parameter unsupported,", 
						"select new value.", 
						"Returning to previous configuration.");

			    setConfigurationPanel();
			} 
		    } else {

			// Since port is not open just set the parameter object.
			setParameters();
		    } 
		} 



		private static final String BAUD_RATE_UNKNOWN = "Unknown";

		
		
	}
	
}
