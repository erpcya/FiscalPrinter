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

/** Generated Model for AD_FP_DocumentLine
 *  @author Adempiere (generated) 
 *  @version Release 3.8.0 - $Id$ */
public class X_AD_FP_DocumentLine extends PO implements I_AD_FP_DocumentLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160723L;

    /** Standard Constructor */
    public X_AD_FP_DocumentLine (Properties ctx, int AD_FP_DocumentLine_ID, String trxName)
    {
      super (ctx, AD_FP_DocumentLine_ID, trxName);
      /** if (AD_FP_DocumentLine_ID == 0)
        {
			setAD_FP_Cmd_ID (0);
			setAD_FP_Document_ID (0);
			setAD_FP_DocumentLine_ID (0);
			setMaxLength (0);
			setParse (true);
// Y
			setSeqNo (0);
        } */
    }

    /** Load Constructor */
    public X_AD_FP_DocumentLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_AD_FP_DocumentLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_AD_Column getAD_Column() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Column)MTable.get(getCtx(), org.compiere.model.I_AD_Column.Table_Name)
			.getPO(getAD_Column_ID(), get_TrxName());	}

	/** Set Column.
		@param AD_Column_ID 
		Column in the table
	  */
	public void setAD_Column_ID (int AD_Column_ID)
	{
		if (AD_Column_ID < 1) 
			set_Value (COLUMNNAME_AD_Column_ID, null);
		else 
			set_Value (COLUMNNAME_AD_Column_ID, Integer.valueOf(AD_Column_ID));
	}

	/** Get Column.
		@return Column in the table
	  */
	public int getAD_Column_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Column_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_AD_FP_Cmd getAD_FP_Cmd() throws RuntimeException
    {
		return (org.spin.model.I_AD_FP_Cmd)MTable.get(getCtx(), org.spin.model.I_AD_FP_Cmd.Table_Name)
			.getPO(getAD_FP_Cmd_ID(), get_TrxName());	}

	/** Set Fiscal Command.
		@param AD_FP_Cmd_ID Fiscal Command	  */
	public void setAD_FP_Cmd_ID (int AD_FP_Cmd_ID)
	{
		if (AD_FP_Cmd_ID < 1) 
			set_Value (COLUMNNAME_AD_FP_Cmd_ID, null);
		else 
			set_Value (COLUMNNAME_AD_FP_Cmd_ID, Integer.valueOf(AD_FP_Cmd_ID));
	}

	/** Get Fiscal Command.
		@return Fiscal Command	  */
	public int getAD_FP_Cmd_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_FP_Cmd_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_AD_FP_Document getAD_FP_DocumentChild() throws RuntimeException
    {
		return (org.spin.model.I_AD_FP_Document)MTable.get(getCtx(), org.spin.model.I_AD_FP_Document.Table_Name)
			.getPO(getAD_FP_DocumentChild_ID(), get_TrxName());	}

	/** Set Fiscal Document Child.
		@param AD_FP_DocumentChild_ID Fiscal Document Child	  */
	public void setAD_FP_DocumentChild_ID (int AD_FP_DocumentChild_ID)
	{
		if (AD_FP_DocumentChild_ID < 1) 
			set_Value (COLUMNNAME_AD_FP_DocumentChild_ID, null);
		else 
			set_Value (COLUMNNAME_AD_FP_DocumentChild_ID, Integer.valueOf(AD_FP_DocumentChild_ID));
	}

	/** Get Fiscal Document Child.
		@return Fiscal Document Child	  */
	public int getAD_FP_DocumentChild_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_FP_DocumentChild_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_AD_FP_Document getAD_FP_Document() throws RuntimeException
    {
		return (org.spin.model.I_AD_FP_Document)MTable.get(getCtx(), org.spin.model.I_AD_FP_Document.Table_Name)
			.getPO(getAD_FP_Document_ID(), get_TrxName());	}

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

	/** Set Fiscal Document Line.
		@param AD_FP_DocumentLine_ID Fiscal Document Line	  */
	public void setAD_FP_DocumentLine_ID (int AD_FP_DocumentLine_ID)
	{
		if (AD_FP_DocumentLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_AD_FP_DocumentLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_AD_FP_DocumentLine_ID, Integer.valueOf(AD_FP_DocumentLine_ID));
	}

	/** Get Fiscal Document Line.
		@return Fiscal Document Line	  */
	public int getAD_FP_DocumentLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_FP_DocumentLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_AD_Rule getAD_Rule() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Rule)MTable.get(getCtx(), org.compiere.model.I_AD_Rule.Table_Name)
			.getPO(getAD_Rule_ID(), get_TrxName());	}

	/** Set Rule.
		@param AD_Rule_ID Rule	  */
	public void setAD_Rule_ID (int AD_Rule_ID)
	{
		if (AD_Rule_ID < 1) 
			set_Value (COLUMNNAME_AD_Rule_ID, null);
		else 
			set_Value (COLUMNNAME_AD_Rule_ID, Integer.valueOf(AD_Rule_ID));
	}

	/** Get Rule.
		@return Rule	  */
	public int getAD_Rule_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Rule_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Validation code.
		@param Code 
		Validation Code
	  */
	public void setCode (String Code)
	{
		set_Value (COLUMNNAME_Code, Code);
	}

	/** Get Validation code.
		@return Validation Code
	  */
	public String getCode () 
	{
		return (String)get_Value(COLUMNNAME_Code);
	}

	/** Set New Cmd.
		@param IsNewCmd New Cmd	  */
	public void setIsNewCmd (boolean IsNewCmd)
	{
		set_Value (COLUMNNAME_IsNewCmd, Boolean.valueOf(IsNewCmd));
	}

	/** Get New Cmd.
		@return New Cmd	  */
	public boolean isNewCmd () 
	{
		Object oo = get_Value(COLUMNNAME_IsNewCmd);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Maximum Length.
		@param MaxLength 
		Maximum Length of Data
	  */
	public void setMaxLength (int MaxLength)
	{
		set_Value (COLUMNNAME_MaxLength, Integer.valueOf(MaxLength));
	}

	/** Get Maximum Length.
		@return Maximum Length of Data
	  */
	public int getMaxLength () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_MaxLength);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Parse Statement.
		@param Parse 
		Select if the SQL statement should be parsed based on terminating semi-colons.
	  */
	public void setParse (boolean Parse)
	{
		set_Value (COLUMNNAME_Parse, Boolean.valueOf(Parse));
	}

	/** Get Parse Statement.
		@return Select if the SQL statement should be parsed based on terminating semi-colons.
	  */
	public boolean isParse () 
	{
		Object oo = get_Value(COLUMNNAME_Parse);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
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

	/** Set Sequence.
		@param SeqNo 
		Method of ordering records; lowest number comes first
	  */
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
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