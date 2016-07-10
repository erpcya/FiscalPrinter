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

/** Generated Model for LVE_FP_DeviceReturn
 *  @author Adempiere (generated) 
 *  @version Release 3.8.0 - $Id$ */
public class X_LVE_FP_DeviceReturn extends PO implements I_LVE_FP_DeviceReturn, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160710L;

    /** Standard Constructor */
    public X_LVE_FP_DeviceReturn (Properties ctx, int LVE_FP_DeviceReturn_ID, String trxName)
    {
      super (ctx, LVE_FP_DeviceReturn_ID, trxName);
      /** if (LVE_FP_DeviceReturn_ID == 0)
        {
			setLVE_FP_Device_ID (0);
			setLVE_FP_DeviceReturn_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_FP_DeviceReturn (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_FP_DeviceReturn[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_AD_Message getAD_Message() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Message)MTable.get(getCtx(), org.compiere.model.I_AD_Message.Table_Name)
			.getPO(getAD_Message_ID(), get_TrxName());	}

	/** Set Message.
		@param AD_Message_ID 
		System Message
	  */
	public void setAD_Message_ID (int AD_Message_ID)
	{
		if (AD_Message_ID < 1) 
			set_Value (COLUMNNAME_AD_Message_ID, null);
		else 
			set_Value (COLUMNNAME_AD_Message_ID, Integer.valueOf(AD_Message_ID));
	}

	/** Get Message.
		@return System Message
	  */
	public int getAD_Message_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Message_ID);
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

	/** Set Device Return ID.
		@param LVE_FP_DeviceReturn_ID Device Return ID	  */
	public void setLVE_FP_DeviceReturn_ID (int LVE_FP_DeviceReturn_ID)
	{
		if (LVE_FP_DeviceReturn_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_DeviceReturn_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_DeviceReturn_ID, Integer.valueOf(LVE_FP_DeviceReturn_ID));
	}

	/** Get Device Return ID.
		@return Device Return ID	  */
	public int getLVE_FP_DeviceReturn_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_FP_DeviceReturn_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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