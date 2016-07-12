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

/** Generated Model for AD_FP_Document
 *  @author Adempiere (generated) 
 *  @version Release 3.8.0 - $Id$ */
public class X_AD_FP_Document extends PO implements I_AD_FP_Document, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160712L;

    /** Standard Constructor */
    public X_AD_FP_Document (Properties ctx, int AD_FP_Document_ID, String trxName)
    {
      super (ctx, AD_FP_Document_ID, trxName);
      /** if (AD_FP_Document_ID == 0)
        {
			setAD_DeviceType_ID (0);
			setAD_FP_Document_ID (0);
			setAD_FP_DocumentType_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_AD_FP_Document (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_AD_FP_Document[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.spin.model.I_AD_DeviceType getAD_DeviceType() throws RuntimeException
    {
		return (org.spin.model.I_AD_DeviceType)MTable.get(getCtx(), org.spin.model.I_AD_DeviceType.Table_Name)
			.getPO(getAD_DeviceType_ID(), get_TrxName());	}

	/** Set Device Type.
		@param AD_DeviceType_ID Device Type	  */
	public void setAD_DeviceType_ID (int AD_DeviceType_ID)
	{
		if (AD_DeviceType_ID < 1) 
			set_Value (COLUMNNAME_AD_DeviceType_ID, null);
		else 
			set_Value (COLUMNNAME_AD_DeviceType_ID, Integer.valueOf(AD_DeviceType_ID));
	}

	/** Get Device Type.
		@return Device Type	  */
	public int getAD_DeviceType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_DeviceType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Fiscal Document.
		@param AD_FP_Document_ID Fiscal Document	  */
	public void setAD_FP_Document_ID (int AD_FP_Document_ID)
	{
		if (AD_FP_Document_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_AD_FP_Document_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_AD_FP_Document_ID, Integer.valueOf(AD_FP_Document_ID));
	}

	/** Get Fiscal Document.
		@return Fiscal Document	  */
	public int getAD_FP_Document_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_FP_Document_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_AD_FP_DocumentType getAD_FP_DocumentType() throws RuntimeException
    {
		return (org.spin.model.I_AD_FP_DocumentType)MTable.get(getCtx(), org.spin.model.I_AD_FP_DocumentType.Table_Name)
			.getPO(getAD_FP_DocumentType_ID(), get_TrxName());	}

	/** Set Fiscal Document Type.
		@param AD_FP_DocumentType_ID Fiscal Document Type	  */
	public void setAD_FP_DocumentType_ID (int AD_FP_DocumentType_ID)
	{
		if (AD_FP_DocumentType_ID < 1) 
			set_Value (COLUMNNAME_AD_FP_DocumentType_ID, null);
		else 
			set_Value (COLUMNNAME_AD_FP_DocumentType_ID, Integer.valueOf(AD_FP_DocumentType_ID));
	}

	/** Get Fiscal Document Type.
		@return Fiscal Document Type	  */
	public int getAD_FP_DocumentType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_FP_DocumentType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getAD_FP_DocumentType_ID()));
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