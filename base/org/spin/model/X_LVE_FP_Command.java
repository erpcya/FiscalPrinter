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

/** Generated Model for LVE_FP_Command
 *  @author Adempiere (generated) 
 *  @version Release 3.8.0 - $Id$ */
public class X_LVE_FP_Command extends PO implements I_LVE_FP_Command, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160710L;

    /** Standard Constructor */
    public X_LVE_FP_Command (Properties ctx, int LVE_FP_Command_ID, String trxName)
    {
      super (ctx, LVE_FP_Command_ID, trxName);
      /** if (LVE_FP_Command_ID == 0)
        {
			setLVE_FP_Command_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LVE_FP_Command (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_FP_Command[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Command ID.
		@param LVE_FP_Command_ID Command ID	  */
	public void setLVE_FP_Command_ID (int LVE_FP_Command_ID)
	{
		if (LVE_FP_Command_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_Command_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_Command_ID, Integer.valueOf(LVE_FP_Command_ID));
	}

	/** Get Command ID.
		@return Command ID	  */
	public int getLVE_FP_Command_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_FP_Command_ID);
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