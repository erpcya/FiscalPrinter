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
/** Generated Model - DO NOT CHANGE */
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Model for LVE_FiscalPrinter
 *  @author Adempiere (generated) 
 *  @version Release 3.8.0 - $Id$ */
public class X_LVE_FiscalPrinter extends PO implements I_LVE_FiscalPrinter, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160710L;

    /** Standard Constructor */
    public X_LVE_FiscalPrinter (Properties ctx, int LVE_FiscalPrinter_ID, String trxName)
    {
      super (ctx, LVE_FiscalPrinter_ID, trxName);
      /** if (LVE_FiscalPrinter_ID == 0)
        {
			setAD_Sequence_ID (0);
			setFTA_SerialPortConfig_ID (0);
			setLVE_FiscalPrinter_ID (0);
			setLVE_FP_Device_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LVE_FiscalPrinter (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LVE_FiscalPrinter[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_AD_Sequence getAD_Sequence() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Sequence)MTable.get(getCtx(), org.compiere.model.I_AD_Sequence.Table_Name)
			.getPO(getAD_Sequence_ID(), get_TrxName());	}

	/** Set Sequence.
		@param AD_Sequence_ID 
		Document Sequence
	  */
	public void setAD_Sequence_ID (int AD_Sequence_ID)
	{
		if (AD_Sequence_ID < 1) 
			set_Value (COLUMNNAME_AD_Sequence_ID, null);
		else 
			set_Value (COLUMNNAME_AD_Sequence_ID, Integer.valueOf(AD_Sequence_ID));
	}

	/** Get Sequence.
		@return Document Sequence
	  */
	public int getAD_Sequence_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Sequence_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_SerialPortConfig getFTA_SerialPortConfig() throws RuntimeException
    {
		return (org.spin.model.I_FTA_SerialPortConfig)MTable.get(getCtx(), org.spin.model.I_FTA_SerialPortConfig.Table_Name)
			.getPO(getFTA_SerialPortConfig_ID(), get_TrxName());	}

	/** Set Serial Port Configuration.
		@param FTA_SerialPortConfig_ID 
		Serial Port Configuration example: COM1 or tty01, 9600...
	  */
	public void setFTA_SerialPortConfig_ID (int FTA_SerialPortConfig_ID)
	{
		if (FTA_SerialPortConfig_ID < 1) 
			set_Value (COLUMNNAME_FTA_SerialPortConfig_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_SerialPortConfig_ID, Integer.valueOf(FTA_SerialPortConfig_ID));
	}

	/** Get Serial Port Configuration.
		@return Serial Port Configuration example: COM1 or tty01, 9600...
	  */
	public int getFTA_SerialPortConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_SerialPortConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Fiscal Printer ID.
		@param LVE_FiscalPrinter_ID Fiscal Printer ID	  */
	public void setLVE_FiscalPrinter_ID (int LVE_FiscalPrinter_ID)
	{
		if (LVE_FiscalPrinter_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_FiscalPrinter_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_FiscalPrinter_ID, Integer.valueOf(LVE_FiscalPrinter_ID));
	}

	/** Get Fiscal Printer ID.
		@return Fiscal Printer ID	  */
	public int getLVE_FiscalPrinter_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_FiscalPrinter_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_LVE_FP_Device getLVE_FP_Device() throws RuntimeException
    {
		return (org.spin.model.I_LVE_FP_Device)MTable.get(getCtx(), org.spin.model.I_LVE_FP_Device.Table_Name)
			.getPO(getLVE_FP_Device_ID(), get_TrxName());	}

	/** Set Device.
		@param LVE_FP_Device_ID Device	  */
	public void setLVE_FP_Device_ID (int LVE_FP_Device_ID)
	{
		if (LVE_FP_Device_ID < 1) 
			set_Value (COLUMNNAME_LVE_FP_Device_ID, null);
		else 
			set_Value (COLUMNNAME_LVE_FP_Device_ID, Integer.valueOf(LVE_FP_Device_ID));
	}

	/** Get Device.
		@return Device	  */
	public int getLVE_FP_Device_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_FP_Device_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
    }

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}