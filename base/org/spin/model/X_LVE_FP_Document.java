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

/** Generated Model for LVE_FP_Document
 *  @author Adempiere (generated) 
 *  @version Release 3.8.0 - $Id$ */
public class X_LVE_FP_Document extends PO implements I_LVE_FP_Document, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160710L;

    /** Standard Constructor */
    public X_LVE_FP_Document (Properties ctx, int LVE_FP_Document_ID, String trxName)
    {
      super (ctx, LVE_FP_Document_ID, trxName);
      /** if (LVE_FP_Document_ID == 0)
        {
			setLVE_FP_Device_ID (0);
			setLVE_FP_Document_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LVE_FP_Document (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_FP_Document[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Report.
		@param IsReport 
		Indicates a Report record
	  */
	public void setIsReport (boolean IsReport)
	{
		set_Value (COLUMNNAME_IsReport, Boolean.valueOf(IsReport));
	}

	/** Get Report.
		@return Indicates a Report record
	  */
	public boolean isReport () 
	{
		Object oo = get_Value(COLUMNNAME_IsReport);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
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
			set_ValueNoCheck (COLUMNNAME_LVE_FP_Device_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_Device_ID, Integer.valueOf(LVE_FP_Device_ID));
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

	/** Set FP Document.
		@param LVE_FP_Document_ID FP Document	  */
	public void setLVE_FP_Document_ID (int LVE_FP_Document_ID)
	{
		if (LVE_FP_Document_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_Document_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_Document_ID, Integer.valueOf(LVE_FP_Document_ID));
	}

	/** Get FP Document.
		@return FP Document	  */
	public int getLVE_FP_Document_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_FP_Document_ID);
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

	/** Set Status.
		@param Status 
		Status of the currently running check
	  */
	public void setStatus (boolean Status)
	{
		set_Value (COLUMNNAME_Status, Boolean.valueOf(Status));
	}

	/** Get Status.
		@return Status of the currently running check
	  */
	public boolean isStatus () 
	{
		Object oo = get_Value(COLUMNNAME_Status);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}
}