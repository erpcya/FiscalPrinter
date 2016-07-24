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
package org.spin.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for AD_FP_DocumentLine
 *  @author Adempiere (generated) 
 *  @version Release 3.8.0
 */
public interface I_AD_FP_DocumentLine 
{

    /** TableName=AD_FP_DocumentLine */
    public static final String Table_Name = "AD_FP_DocumentLine";

    /** AD_Table_ID=54154 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 4 - System 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(4);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Column_ID */
    public static final String COLUMNNAME_AD_Column_ID = "AD_Column_ID";

	/** Set Column.
	  * Column in the table
	  */
	public void setAD_Column_ID (int AD_Column_ID);

	/** Get Column.
	  * Column in the table
	  */
	public int getAD_Column_ID();

	public org.compiere.model.I_AD_Column getAD_Column() throws RuntimeException;

    /** Column name AD_FP_Cmd_ID */
    public static final String COLUMNNAME_AD_FP_Cmd_ID = "AD_FP_Cmd_ID";

	/** Set Fiscal Command	  */
	public void setAD_FP_Cmd_ID (int AD_FP_Cmd_ID);

	/** Get Fiscal Command	  */
	public int getAD_FP_Cmd_ID();

	public org.spin.model.I_AD_FP_Cmd getAD_FP_Cmd() throws RuntimeException;

    /** Column name AD_FP_DocumentChild_ID */
    public static final String COLUMNNAME_AD_FP_DocumentChild_ID = "AD_FP_DocumentChild_ID";

	/** Set Fiscal Document Child	  */
	public void setAD_FP_DocumentChild_ID (int AD_FP_DocumentChild_ID);

	/** Get Fiscal Document Child	  */
	public int getAD_FP_DocumentChild_ID();

	public org.spin.model.I_AD_FP_Document getAD_FP_DocumentChild() throws RuntimeException;

    /** Column name AD_FP_Document_ID */
    public static final String COLUMNNAME_AD_FP_Document_ID = "AD_FP_Document_ID";

	/** Set Fiscal Document	  */
	public void setAD_FP_Document_ID (int AD_FP_Document_ID);

	/** Get Fiscal Document	  */
	public int getAD_FP_Document_ID();

	public org.spin.model.I_AD_FP_Document getAD_FP_Document() throws RuntimeException;

    /** Column name AD_FP_DocumentLine_ID */
    public static final String COLUMNNAME_AD_FP_DocumentLine_ID = "AD_FP_DocumentLine_ID";

	/** Set Fiscal Document Line	  */
	public void setAD_FP_DocumentLine_ID (int AD_FP_DocumentLine_ID);

	/** Get Fiscal Document Line	  */
	public int getAD_FP_DocumentLine_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name AD_Rule_ID */
    public static final String COLUMNNAME_AD_Rule_ID = "AD_Rule_ID";

	/** Set Rule	  */
	public void setAD_Rule_ID (int AD_Rule_ID);

	/** Get Rule	  */
	public int getAD_Rule_ID();

	public org.compiere.model.I_AD_Rule getAD_Rule() throws RuntimeException;

    /** Column name Code */
    public static final String COLUMNNAME_Code = "Code";

	/** Set Validation code.
	  * Validation Code
	  */
	public void setCode (String Code);

	/** Get Validation code.
	  * Validation Code
	  */
	public String getCode();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name IsNewCmd */
    public static final String COLUMNNAME_IsNewCmd = "IsNewCmd";

	/** Set New Cmd	  */
	public void setIsNewCmd (boolean IsNewCmd);

	/** Get New Cmd	  */
	public boolean isNewCmd();

    /** Column name MaxLength */
    public static final String COLUMNNAME_MaxLength = "MaxLength";

	/** Set Maximum Length.
	  * Maximum Length of Data
	  */
	public void setMaxLength (int MaxLength);

	/** Get Maximum Length.
	  * Maximum Length of Data
	  */
	public int getMaxLength();

    /** Column name Parse */
    public static final String COLUMNNAME_Parse = "Parse";

	/** Set Parse Statement.
	  * Select if the SQL statement should be parsed based on terminating semi-colons.
	  */
	public void setParse (boolean Parse);

	/** Get Parse Statement.
	  * Select if the SQL statement should be parsed based on terminating semi-colons.
	  */
	public boolean isParse();

    /** Column name Prefix */
    public static final String COLUMNNAME_Prefix = "Prefix";

	/** Set Prefix.
	  * Prefix before the sequence number
	  */
	public void setPrefix (String Prefix);

	/** Get Prefix.
	  * Prefix before the sequence number
	  */
	public String getPrefix();

    /** Column name SeqNo */
    public static final String COLUMNNAME_SeqNo = "SeqNo";

	/** Set Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public void setSeqNo (int SeqNo);

	/** Get Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public int getSeqNo();

    /** Column name Suffix */
    public static final String COLUMNNAME_Suffix = "Suffix";

	/** Set Suffix.
	  * Suffix after the number
	  */
	public void setSuffix (String Suffix);

	/** Get Suffix.
	  * Suffix after the number
	  */
	public String getSuffix();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
