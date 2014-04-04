/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * LVE-Fiscal-Printer
 * org.fiscalprinter.model
 * Impress.java
 * 30/03/2014
 */
package org.fiscalprinter.model;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public interface Impress {

	public boolean isDisplay	= false;
	public boolean isGaveta		= false;
	public int typeDocument 	= -1;
	

	
	public void GeneratedInvoice();
	
}
