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
import tfhka.ve.Tfhka;


/**
 * Add for testing
 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
 */
public class TestFiscalPrinter {
	public static void main ( String[] args ) {
        try {
        	Tfhka printer = new Tfhka();
        	printer.OpenFpctrl("/dev/pts/28");
        	printer.SendCmd("iR*V-24584746");
        	printer.SendCmd("iS*Yamel Senih");
        	printer.SendCmd("i01Calle 5 entre AV 25 y 26");
        	printer.SendCmd("i02Fresss Pescado en Batea");
        	printer.SendCmd("i03Araure Centro");
        	printer.SendCmd("i05Araure - Portuguesa");
        	printer.SendCmd("i06**Vendedor mSolari**");
        	
//        	printer.SendCmd("#000000010000000100Papas");
        	printer.SendCmd("!000000010000001000CARTUCHO HP MODELO 14 COLOR NEGRO|CARONEHP14|");
        	// E
        	//"8
        	//!12
        	//#22
//        	printer.SendCmd("101");
        	printer.SendCmd("3");
        	printer.SendCmd("201000000000112");
//        	printer.SendCmd("101");
        	printer.CloseFpctrl();
        } catch ( Exception e ) {
            e.printStackTrace();
        }
    }
}
