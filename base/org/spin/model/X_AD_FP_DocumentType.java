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

/** Generated Model for AD_FP_DocumentType
 *  @author Adempiere (generated) 
 *  @version Release 3.8.0 - $Id$ */
public class X_AD_FP_DocumentType extends PO implements I_AD_FP_DocumentType, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160723L;

    /** Standard Constructor */
    public X_AD_FP_DocumentType (Properties ctx, int AD_FP_DocumentType_ID, String trxName)
    {
      super (ctx, AD_FP_DocumentType_ID, trxName);
      /** if (AD_FP_DocumentType_ID == 0)
        {
			setAD_FP_DocumentType_ID (0);
			setName (null);
			setType (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_AD_FP_DocumentType (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 6 - System - Client 
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
      StringBuffer sb = new StringBuffer ("X_AD_FP_DocumentType[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Fiscal Document Type.
		@param AD_FP_DocumentType_ID Fiscal Document Type	  */
	public void setAD_FP_DocumentType_ID (int AD_FP_DocumentType_ID)
	{
		if (AD_FP_DocumentType_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_AD_FP_DocumentType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_AD_FP_DocumentType_ID, Integer.valueOf(AD_FP_DocumentType_ID));
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

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
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

	/** Type AD_Reference_ID=53847 */
	public static final int TYPE_AD_Reference_ID=53847;
	/** Report = R */
	public static final String TYPE_Report = "R";
	/** Document = D */
	public static final String TYPE_Document = "D";
	/** Process = P */
	public static final String TYPE_Process = "P";
	/** Set Type.
		@param Type 
		Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type)
	{

		set_Value (COLUMNNAME_Type, Type);
	}

	/** Get Type.
		@return Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType () 
	{
		return (String)get_Value(COLUMNNAME_Type);
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