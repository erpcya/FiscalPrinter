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

/** Generated Model for LVE_FP_DocumentLine
 *  @author Adempiere (generated) 
 *  @version Release 3.8.0 - $Id$ */
public class X_LVE_FP_DocumentLine extends PO implements I_LVE_FP_DocumentLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160710L;

    /** Standard Constructor */
    public X_LVE_FP_DocumentLine (Properties ctx, int LVE_FP_DocumentLine_ID, String trxName)
    {
      super (ctx, LVE_FP_DocumentLine_ID, trxName);
      /** if (LVE_FP_DocumentLine_ID == 0)
        {
			setLVE_FP_Document_ID (0);
			setLVE_FP_DocumentLine_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_FP_DocumentLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_FP_DocumentLine[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	public org.compiere.model.I_AD_Rule getAD_RuleProcessReturn() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Rule)MTable.get(getCtx(), org.compiere.model.I_AD_Rule.Table_Name)
			.getPO(getAD_RuleProcessReturn_ID(), get_TrxName());	}

	/** Set Rule Process Return.
		@param AD_RuleProcessReturn_ID Rule Process Return	  */
	public void setAD_RuleProcessReturn_ID (int AD_RuleProcessReturn_ID)
	{
		if (AD_RuleProcessReturn_ID < 1) 
			set_Value (COLUMNNAME_AD_RuleProcessReturn_ID, null);
		else 
			set_Value (COLUMNNAME_AD_RuleProcessReturn_ID, Integer.valueOf(AD_RuleProcessReturn_ID));
	}

	/** Get Rule Process Return.
		@return Rule Process Return	  */
	public int getAD_RuleProcessReturn_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_RuleProcessReturn_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set New Command.
		@param IsNewCommand New Command	  */
	public void setIsNewCommand (boolean IsNewCommand)
	{
		set_Value (COLUMNNAME_IsNewCommand, Boolean.valueOf(IsNewCommand));
	}

	/** Get New Command.
		@return New Command	  */
	public boolean isNewCommand () 
	{
		Object oo = get_Value(COLUMNNAME_IsNewCommand);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.spin.model.I_LVE_FP_Document getLVE_FP_Document() throws RuntimeException
    {
		return (org.spin.model.I_LVE_FP_Document)MTable.get(getCtx(), org.spin.model.I_LVE_FP_Document.Table_Name)
			.getPO(getLVE_FP_Document_ID(), get_TrxName());	}

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

	/** Set FP Document Line ID.
		@param LVE_FP_DocumentLine_ID FP Document Line ID	  */
	public void setLVE_FP_DocumentLine_ID (int LVE_FP_DocumentLine_ID)
	{
		if (LVE_FP_DocumentLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_DocumentLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_FP_DocumentLine_ID, Integer.valueOf(LVE_FP_DocumentLine_ID));
	}

	/** Get FP Document Line ID.
		@return FP Document Line ID	  */
	public int getLVE_FP_DocumentLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_FP_DocumentLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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
}