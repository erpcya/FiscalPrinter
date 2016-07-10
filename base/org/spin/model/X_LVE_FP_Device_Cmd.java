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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LVE_FP_Device_Cmd
 *  @author Adempiere (generated) 
 *  @version Release 3.8.0 - $Id$ */
public class X_LVE_FP_Device_Cmd extends PO implements I_LVE_FP_Device_Cmd, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160710L;

    /** Standard Constructor */
    public X_LVE_FP_Device_Cmd (Properties ctx, int LVE_FP_Device_Cmd_ID, String trxName)
    {
      super (ctx, LVE_FP_Device_Cmd_ID, trxName);
      /** if (LVE_FP_Device_Cmd_ID == 0)
        {
			setLVE_FP_Command_ID (0);
			setLVE_FP_Device_Cmd_ID (0);
			setLVE_FP_Device_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_FP_Device_Cmd (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 4 - System 
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
      StringBuffer sb = new StringBuffer ("X_LVE_FP_Device_Cmd[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.spin.model.I_LVE_FP_Command getLVE_FP_Command() throws RuntimeException
    {
		return (org.spin.model.I_LVE_FP_Command)MTable.get(getCtx(), org.spin.model.I_LVE_FP_Command.Table_Name)
			.getPO(getLVE_FP_Command_ID(), get_TrxName());	}

	/** Set Command.
		@param LVE_FP_Command_ID Command	  */
	public void setLVE_FP_Command_ID (int LVE_FP_Command_ID)
	{
		if (LVE_FP_Command_ID < 1) 
			set_Value (COLUMNNAME_LVE_FP_Command_ID, null);
		else 
			set_Value (COLUMNNAME_LVE_FP_Command_ID, Integer.valueOf(LVE_FP_Command_ID));
	}

	/** Get Command.
		@return Command	  */
	public int getLVE_FP_Command_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_FP_Command_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Device Cmd ID.
		@param LVE_FP_Device_Cmd_ID Device Cmd ID	  */
	public void setLVE_FP_Device_Cmd_ID (int LVE_FP_Device_Cmd_ID)
	{
		if (LVE_FP_Device_Cmd_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_Device_Cmd_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_Device_Cmd_ID, Integer.valueOf(LVE_FP_Device_Cmd_ID));
	}

	/** Get Device Cmd ID.
		@return Device Cmd ID	  */
	public int getLVE_FP_Device_Cmd_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_FP_Device_Cmd_ID);
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

	/** Set Maximum Length.
		@param MaxLength 
		Maximum Length of Data
	  */
	public void setMaxLength (BigDecimal MaxLength)
	{
		set_Value (COLUMNNAME_MaxLength, MaxLength);
	}

	/** Get Maximum Length.
		@return Maximum Length of Data
	  */
	public BigDecimal getMaxLength () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MaxLength);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Prefix.
		@param Prefix 
		Prefix before the sequence number
	  */
	public void setPrefix (String Prefix)
	{
		set_Value (COLUMNNAME_Prefix, Prefix);
	}

	/** Get Prefix.
		@return Prefix before the sequence number
	  */
	public String getPrefix () 
	{
		return (String)get_Value(COLUMNNAME_Prefix);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getPrefix());
    }

	/** Set Suffix.
		@param Suffix 
		Suffix after the number
	  */
	public void setSuffix (String Suffix)
	{
		set_Value (COLUMNNAME_Suffix, Suffix);
	}

	/** Get Suffix.
		@return Suffix after the number
	  */
	public String getSuffix () 
	{
		return (String)get_Value(COLUMNNAME_Suffix);
	}
}