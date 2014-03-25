-- Sep 23, 2013 3:22:51 PM VET
-- Get Weight from Scale
UPDATE AD_Table SET TableName='FTA_SerialPortConfig',Updated=TO_TIMESTAMP('2013-09-23 15:22:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53457
;

-- Sep 23, 2013 3:23:06 PM VET
-- Get Weight from Scale
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53722,TO_TIMESTAMP('2013-09-23 15:22:51','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_SerialPortConfig',1,'Y','N','Y','Y','FTA_SerialPortConfig','N',1000000,TO_TIMESTAMP('2013-09-23 15:22:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 3:23:28 PM VET
-- Get Weight from Scale
UPDATE AD_Element SET ColumnName='FTA_SerialPortConfig_ID',Updated=TO_TIMESTAMP('2013-09-23 15:23:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55827
;

-- Sep 23, 2013 3:23:28 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET ColumnName='FTA_SerialPortConfig_ID', Name='Serial Port Configuration', Description='Serial Port Configuration example: COM1 or tty01, 9600...', Help=NULL WHERE AD_Element_ID=55827
;

-- Sep 23, 2013 3:23:28 PM VET
-- Get Weight from Scale
UPDATE AD_Process_Para SET ColumnName='FTA_SerialPortConfig_ID', Name='Serial Port Configuration', Description='Serial Port Configuration example: COM1 or tty01, 9600...', Help=NULL, AD_Element_ID=55827 WHERE UPPER(ColumnName)='FTA_SERIALPORTCONFIG_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 23, 2013 3:23:28 PM VET
-- Get Weight from Scale
UPDATE AD_Process_Para SET ColumnName='FTA_SerialPortConfig_ID', Name='Serial Port Configuration', Description='Serial Port Configuration example: COM1 or tty01, 9600...', Help=NULL WHERE AD_Element_ID=55827 AND IsCentrallyMaintained='Y'
;

-- Sep 23, 2013 3:23:56 PM VET
-- Get Weight from Scale
UPDATE AD_Table SET TableName='FTA_PortConfig_Role',Updated=TO_TIMESTAMP('2013-09-23 15:23:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53459
;

-- Sep 23, 2013 3:23:57 PM VET
-- Get Weight from Scale
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53723,TO_TIMESTAMP('2013-09-23 15:23:56','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_PortConfig_Role',1,'Y','N','Y','Y','FTA_PortConfig_Role','N',1000000,TO_TIMESTAMP('2013-09-23 15:23:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 3:49:01 PM VET
-- Get Weight from Scale
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53593,'N',TO_TIMESTAMP('2013-09-23 15:48:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'Screen Configuration','L','FTA_ScreenConfig',TO_TIMESTAMP('2013-09-23 15:48:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 3:49:01 PM VET
-- Get Weight from Scale
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53593 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Sep 23, 2013 3:49:02 PM VET
-- Get Weight from Scale
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53724,TO_TIMESTAMP('2013-09-23 15:49:01','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_ScreenConfig',1,'Y','N','Y','Y','FTA_ScreenConfig','N',1000000,TO_TIMESTAMP('2013-09-23 15:49:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 3:50:12 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67978,102,0,19,53593,'AD_Client_ID',TO_TIMESTAMP('2013-09-23 15:50:03','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2013-09-23 15:50:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:12 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67978 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:13 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67979,113,0,19,53593,'AD_Org_ID',TO_TIMESTAMP('2013-09-23 15:50:12','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2013-09-23 15:50:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:13 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67979 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:15 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67980,245,0,16,53593,'Created',TO_TIMESTAMP('2013-09-23 15:50:13','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2013-09-23 15:50:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:15 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67980 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:18 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67981,246,0,18,110,53593,'CreatedBy',TO_TIMESTAMP('2013-09-23 15:50:16','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2013-09-23 15:50:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:18 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67981 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:19 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67982,55825,0,11,53593,'EndCharacter',TO_TIMESTAMP('2013-09-23 15:50:18','YYYY-MM-DD HH24:MI:SS'),100,'End Character example: ASCII (28)','ECA02',14,'Y','N','N','N','N','Y','N','N','N','N','Y','End Character',0,TO_TIMESTAMP('2013-09-23 15:50:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:19 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67982 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:21 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56385,0,'FTA_ScreenConfig_ID',TO_TIMESTAMP('2013-09-23 15:50:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Screen Configuration','Screen Configuration',TO_TIMESTAMP('2013-09-23 15:50:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 3:50:21 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56385 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 23, 2013 3:50:22 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67983,56385,0,13,53593,'FTA_ScreenConfig_ID',TO_TIMESTAMP('2013-09-23 15:50:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','Y','Y','N','N','N','N','N','Screen Configuration',0,TO_TIMESTAMP('2013-09-23 15:50:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:22 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67983 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:23 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67984,348,0,20,53593,'IsActive',TO_TIMESTAMP('2013-09-23 15:50:22','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2013-09-23 15:50:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:23 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67984 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:24 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67985,469,0,10,53593,'Name',TO_TIMESTAMP('2013-09-23 15:50:23','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','Y','N','Y','N','N','Y','Name',1,TO_TIMESTAMP('2013-09-23 15:50:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:24 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67985 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67986,55821,0,11,53593,'PosEndCut',TO_TIMESTAMP('2013-09-23 15:50:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','N','N','N','N','N','N','N','N','N','Y','Position End (Cut)',0,TO_TIMESTAMP('2013-09-23 15:50:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67986 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:27 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67987,55822,0,11,53593,'PosEnd_SCut',TO_TIMESTAMP('2013-09-23 15:50:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','N','N','N','N','Y','N','N','N','N','Y','Position End (Screen cut)',0,TO_TIMESTAMP('2013-09-23 15:50:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:27 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67987 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:28 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67988,55819,0,11,53593,'PosStartCut',TO_TIMESTAMP('2013-09-23 15:50:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','N','N','N','N','Y','N','N','N','N','Y','Position Start (Cut)',0,TO_TIMESTAMP('2013-09-23 15:50:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:28 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67988 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:30 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67989,55820,0,11,53593,'PosStart_SCut',TO_TIMESTAMP('2013-09-23 15:50:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','N','N','N','N','Y','N','N','N','N','Y','Position Start (Screen cut)',0,TO_TIMESTAMP('2013-09-23 15:50:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:30 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67989 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:31 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67990,55817,0,11,53593,'StartCharacter',TO_TIMESTAMP('2013-09-23 15:50:30','YYYY-MM-DD HH24:MI:SS'),100,'Start Character example: ASCII (3)','ECA02',14,'Y','N','N','N','N','Y','N','N','N','N','Y','Start Character',0,TO_TIMESTAMP('2013-09-23 15:50:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:31 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67990 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:32 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67991,55815,0,11,53593,'StrLength',TO_TIMESTAMP('2013-09-23 15:50:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','N','N','N','N','Y','N','N','N','N','Y','String Length',0,TO_TIMESTAMP('2013-09-23 15:50:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:32 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67991 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:33 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67992,607,0,16,53593,'Updated',TO_TIMESTAMP('2013-09-23 15:50:32','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2013-09-23 15:50:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:33 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67992 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:50:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67993,608,0,18,110,53593,'UpdatedBy',TO_TIMESTAMP('2013-09-23 15:50:33','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2013-09-23 15:50:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 3:50:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67993 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 3:52:58 PM VET
-- Get Weight from Scale
UPDATE AD_Table_Trl SET Name='Configuración de Pantalla',Updated=TO_TIMESTAMP('2013-09-23 15:52:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53593 AND AD_Language='es_MX'
;

-- Sep 23, 2013 3:55:13 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Configuración de Pantalla',PrintName='Configuración de Pantalla',Description='Configuración de Pantalla de Romana',Updated=TO_TIMESTAMP('2013-09-23 15:55:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56385 AND AD_Language='es_MX'
;

-- Sep 23, 2013 4:00:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53279,TO_TIMESTAMP('2013-09-23 16:00:24','YYYY-MM-DD HH24:MI:SS'),100,'Screen Configuration','ECA02','Y','N','N','Y','Screen Config','N',TO_TIMESTAMP('2013-09-23 16:00:24','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Sep 23, 2013 4:00:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53279 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Sep 23, 2013 4:01:34 PM VET
-- Get Weight from Scale
UPDATE AD_Window_Trl SET Name='Configuración de Pantalla',Description='Configuración de Pantalla de Romana',Updated=TO_TIMESTAMP('2013-09-23 16:01:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53279 AND AD_Language='es_MX'
;

-- Sep 23, 2013 4:02:24 PM VET
-- Get Weight from Scale
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53770,53593,53279,TO_TIMESTAMP('2013-09-23 16:02:24','YYYY-MM-DD HH24:MI:SS'),100,'Screen Configuration','ECA02','N','N','Y','N','N','Y','N','N','N','N','Screen Config','N',10,0,TO_TIMESTAMP('2013-09-23 16:02:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:24 PM VET
-- Get Weight from Scale
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53770 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Sep 23, 2013 4:02:44 PM VET
-- Get Weight from Scale
UPDATE AD_Tab_Trl SET Name='Configuración de Pantalla',Description='Configuración de Pantalla Romana',Updated=TO_TIMESTAMP('2013-09-23 16:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53770 AND AD_Language='es_MX'
;

-- Sep 23, 2013 4:02:53 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67984,69582,0,53770,TO_TIMESTAMP('2013-09-23 16:02:52','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2013-09-23 16:02:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:53 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69582 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:53 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67978,69583,0,53770,TO_TIMESTAMP('2013-09-23 16:02:53','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2013-09-23 16:02:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:53 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69583 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:54 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67982,69584,0,53770,TO_TIMESTAMP('2013-09-23 16:02:53','YYYY-MM-DD HH24:MI:SS'),100,'End Character example: ASCII (28)',14,'ECA02','Y','Y','Y','N','N','N','N','N','End Character',TO_TIMESTAMP('2013-09-23 16:02:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:54 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69584 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:56 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67985,69585,0,53770,TO_TIMESTAMP('2013-09-23 16:02:54','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2013-09-23 16:02:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:56 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69585 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:56 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67979,69586,0,53770,TO_TIMESTAMP('2013-09-23 16:02:56','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2013-09-23 16:02:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:56 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69586 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:57 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67986,69587,0,53770,TO_TIMESTAMP('2013-09-23 16:02:56','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Position End (Cut)',TO_TIMESTAMP('2013-09-23 16:02:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:57 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69587 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:57 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67987,69588,0,53770,TO_TIMESTAMP('2013-09-23 16:02:57','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Position End (Screen cut)',TO_TIMESTAMP('2013-09-23 16:02:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:57 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69588 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67988,69589,0,53770,TO_TIMESTAMP('2013-09-23 16:02:57','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Position Start (Cut)',TO_TIMESTAMP('2013-09-23 16:02:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69589 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67989,69590,0,53770,TO_TIMESTAMP('2013-09-23 16:02:58','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Position Start (Screen cut)',TO_TIMESTAMP('2013-09-23 16:02:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69590 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67983,69591,0,53770,TO_TIMESTAMP('2013-09-23 16:02:58','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','N','N','N','N','N','N','Screen Configuration',TO_TIMESTAMP('2013-09-23 16:02:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69591 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:59 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67990,69592,0,53770,TO_TIMESTAMP('2013-09-23 16:02:58','YYYY-MM-DD HH24:MI:SS'),100,'Start Character example: ASCII (3)',14,'ECA02','Y','Y','Y','N','N','N','N','N','Start Character',TO_TIMESTAMP('2013-09-23 16:02:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:59 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69592 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:02:59 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67991,69593,0,53770,TO_TIMESTAMP('2013-09-23 16:02:59','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','String Length',TO_TIMESTAMP('2013-09-23 16:02:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:02:59 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69593 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=69583
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=69586
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=69582
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=69585
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=69593
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=69592
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=69584
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=69589
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=69587
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=69590
;

-- Sep 23, 2013 4:08:31 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=69588
;

-- Sep 23, 2013 4:08:55 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-23 16:08:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69586
;

-- Sep 23, 2013 4:09:59 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-23 16:09:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69593
;

-- Sep 23, 2013 4:10:06 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-09-23 16:10:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69585
;

-- Sep 23, 2013 4:11:07 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-23 16:11:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69584
;

-- Sep 23, 2013 4:11:13 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-23 16:11:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69587
;

-- Sep 23, 2013 4:11:17 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-23 16:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69588
;

-- Sep 23, 2013 4:12:48 PM VET
-- Get Weight from Scale
UPDATE AD_Table SET AD_Window_ID=53279,Updated=TO_TIMESTAMP('2013-09-23 16:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53593
;

-- Sep 23, 2013 4:13:35 PM VET
-- Get Weight from Scale
UPDATE AD_Tab SET IsSingleRow='Y',Updated=TO_TIMESTAMP('2013-09-23 16:13:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53770
;

-- Sep 23, 2013 4:14:26 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=66152
;

-- Sep 23, 2013 4:14:26 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field WHERE AD_Field_ID=66152
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=66150
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field WHERE AD_Field_ID=66150
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=66139
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field WHERE AD_Field_ID=66139
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=66146
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field WHERE AD_Field_ID=66146
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=66144
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field WHERE AD_Field_ID=66144
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=66147
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field WHERE AD_Field_ID=66147
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=66145
;

-- Sep 23, 2013 4:14:27 PM VET
-- Get Weight from Scale
DELETE FROM AD_Field WHERE AD_Field_ID=66145
;

-- Sep 23, 2013 4:19:05 PM VET
-- Get Weight from Scale
DELETE FROM AD_Tab_Trl WHERE AD_Tab_ID=53603
;

-- Sep 23, 2013 4:19:05 PM VET
-- Get Weight from Scale
DELETE FROM AD_Tab WHERE AD_Tab_ID=53603
;

-- Sep 23, 2013 4:21:46 PM VET
-- Get Weight from Scale
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53594,'N',TO_TIMESTAMP('2013-09-23 16:21:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'Weigh Scale','L','FTA_WeighScale',TO_TIMESTAMP('2013-09-23 16:21:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:21:46 PM VET
-- Get Weight from Scale
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53594 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Sep 23, 2013 4:21:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53725,TO_TIMESTAMP('2013-09-23 16:21:46','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_WeighScale',1,'Y','N','Y','Y','FTA_WeighScale','N',1000000,TO_TIMESTAMP('2013-09-23 16:21:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:22:05 PM VET
-- Get Weight from Scale
UPDATE AD_Table_Trl SET Name='Báscula',Updated=TO_TIMESTAMP('2013-09-23 16:22:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53594 AND AD_Language='es_MX'
;

-- Sep 23, 2013 4:23:33 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67994,102,0,19,53594,'AD_Client_ID',TO_TIMESTAMP('2013-09-23 16:23:30','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2013-09-23 16:23:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:23:33 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67994 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:23:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67995,113,0,19,53594,'AD_Org_ID',TO_TIMESTAMP('2013-09-23 16:23:33','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2013-09-23 16:23:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:23:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67995 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:23:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67996,245,0,16,53594,'Created',TO_TIMESTAMP('2013-09-23 16:23:34','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2013-09-23 16:23:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:23:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67996 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:23:35 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67997,246,0,18,110,53594,'CreatedBy',TO_TIMESTAMP('2013-09-23 16:23:34','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2013-09-23 16:23:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:23:35 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67997 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:23:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56386,0,'FTA_WeighScale_ID',TO_TIMESTAMP('2013-09-23 16:23:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Weigh Scale','Weigh Scale',TO_TIMESTAMP('2013-09-23 16:23:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:23:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56386 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 23, 2013 4:23:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67998,56386,0,13,53594,'FTA_WeighScale_ID',TO_TIMESTAMP('2013-09-23 16:23:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','Y','Y','N','N','N','N','N','Weigh Scale',0,TO_TIMESTAMP('2013-09-23 16:23:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:23:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67998 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:23:37 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67999,348,0,20,53594,'IsActive',TO_TIMESTAMP('2013-09-23 16:23:36','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2013-09-23 16:23:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:23:37 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67999 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:23:38 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68000,469,0,10,53594,'Name',TO_TIMESTAMP('2013-09-23 16:23:37','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','Y','N','Y','N','N','Y','Name',1,TO_TIMESTAMP('2013-09-23 16:23:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:23:38 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68000 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:23:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68001,607,0,16,53594,'Updated',TO_TIMESTAMP('2013-09-23 16:23:38','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2013-09-23 16:23:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:23:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68001 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:23:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68002,608,0,18,110,53594,'UpdatedBy',TO_TIMESTAMP('2013-09-23 16:23:39','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2013-09-23 16:23:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:23:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68002 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:24:08 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Báscula',PrintName='Báscula',Description='Báscula o Romana',Updated=TO_TIMESTAMP('2013-09-23 16:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56386 AND AD_Language='es_MX'
;

-- Sep 23, 2013 4:25:48 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68003,275,0,14,53594,'Description',TO_TIMESTAMP('2013-09-23 16:25:48','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_TIMESTAMP('2013-09-23 16:25:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:25:48 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68003 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:26:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68004,215,0,19,53594,'C_UOM_ID',TO_TIMESTAMP('2013-09-23 16:26:34','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','ECA02',10,'The UOM defines a unique non monetary Unit of Measure','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','UOM',0,TO_TIMESTAMP('2013-09-23 16:26:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:26:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68004 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:27:35 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68005,55827,0,19,53594,'FTA_SerialPortConfig_ID',TO_TIMESTAMP('2013-09-23 16:27:33','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 9600...','ECA02',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Serial Port Configuration',0,TO_TIMESTAMP('2013-09-23 16:27:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:27:35 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68005 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:28:10 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68006,56385,0,19,53594,'FTA_ScreenConfig_ID',TO_TIMESTAMP('2013-09-23 16:28:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Screen Configuration',0,TO_TIMESTAMP('2013-09-23 16:28:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 23, 2013 4:28:10 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68006 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 23, 2013 4:31:48 PM VET
-- Get Weight from Scale
UPDATE AD_Table SET Name='Weight Scale by Role', TableName='FTA_WeightScale_Role',Updated=TO_TIMESTAMP('2013-09-23 16:31:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53459
;

-- Sep 23, 2013 4:31:48 PM VET
-- Get Weight from Scale
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53459
;

-- Sep 23, 2013 4:31:55 PM VET
-- Get Weight from Scale
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53726,TO_TIMESTAMP('2013-09-23 16:31:48','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_WeightScale_Role',1,'Y','N','Y','Y','FTA_WeightScale_Role','N',1000000,TO_TIMESTAMP('2013-09-23 16:31:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:32:49 PM VET
-- Get Weight from Scale
UPDATE AD_Element SET ColumnName='FTA_WeightScale_ID', Name='Weight Scale', PrintName='Weight Scale',Updated=TO_TIMESTAMP('2013-09-23 16:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56386
;

-- Sep 23, 2013 4:32:49 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56386
;

-- Sep 23, 2013 4:32:49 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET ColumnName='FTA_WeightScale_ID', Name='Weight Scale', Description=NULL, Help=NULL WHERE AD_Element_ID=56386
;

-- Sep 23, 2013 4:32:49 PM VET
-- Get Weight from Scale
UPDATE AD_Process_Para SET ColumnName='FTA_WeightScale_ID', Name='Weight Scale', Description=NULL, Help=NULL, AD_Element_ID=56386 WHERE UPPER(ColumnName)='FTA_WEIGHTSCALE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 23, 2013 4:32:49 PM VET
-- Get Weight from Scale
UPDATE AD_Process_Para SET ColumnName='FTA_WeightScale_ID', Name='Weight Scale', Description=NULL, Help=NULL WHERE AD_Element_ID=56386 AND IsCentrallyMaintained='Y'
;

-- Sep 23, 2013 4:32:49 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET Name='Weight Scale', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56386) AND IsCentrallyMaintained='Y'
;

-- Sep 23, 2013 4:32:49 PM VET
-- Get Weight from Scale
UPDATE AD_PrintFormatItem SET PrintName='Weight Scale', Name='Weight Scale' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56386)
;

-- Sep 23, 2013 4:33:00 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET AD_Element_ID=56386, ColumnName='FTA_WeightScale_ID', Description=NULL, Help=NULL, IsUpdateable='N', Name='Weight Scale',Updated=TO_TIMESTAMP('2013-09-23 16:33:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=64929
;

-- Sep 23, 2013 4:33:00 PM VET
-- Get Weight from Scale
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=64929
;

-- Sep 23, 2013 4:33:00 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET Name='Weight Scale', Description=NULL, Help=NULL WHERE AD_Column_ID=64929 AND IsCentrallyMaintained='Y'
;

-- Sep 23, 2013 4:33:15 PM VET
-- Get Weight from Scale
UPDATE AD_Table SET Name='Weight Scale', TableName='FTA_WeightScale',Updated=TO_TIMESTAMP('2013-09-23 16:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53594
;

-- Sep 23, 2013 4:33:15 PM VET
-- Get Weight from Scale
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53594
;

-- Sep 23, 2013 4:33:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53727,TO_TIMESTAMP('2013-09-23 16:33:15','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_WeightScale',1,'Y','N','Y','Y','FTA_WeightScale','N',1000000,TO_TIMESTAMP('2013-09-23 16:33:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:34:07 PM VET
-- Get Weight from Scale
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53280,TO_TIMESTAMP('2013-09-23 16:34:04','YYYY-MM-DD HH24:MI:SS'),100,'Weight Scale','ECA02','Y','N','N','Y','Weight Scale','N',TO_TIMESTAMP('2013-09-23 16:34:04','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Sep 23, 2013 4:34:07 PM VET
-- Get Weight from Scale
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53280 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Sep 23, 2013 4:34:26 PM VET
-- Get Weight from Scale
UPDATE AD_Window_Trl SET Name='Báscula (Romana)',Description='Básculao Romana',Updated=TO_TIMESTAMP('2013-09-23 16:34:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53280 AND AD_Language='es_MX'
;

-- Sep 23, 2013 4:34:59 PM VET
-- Get Weight from Scale
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53771,53459,53280,TO_TIMESTAMP('2013-09-23 16:34:58','YYYY-MM-DD HH24:MI:SS'),100,'Weight Scale','ECA02','N','N','Y','N','N','Y','N','Y','N','N','Weight Scale','N',10,0,TO_TIMESTAMP('2013-09-23 16:34:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:34:59 PM VET
-- Get Weight from Scale
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53771 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Sep 23, 2013 4:35:16 PM VET
-- Get Weight from Scale
UPDATE AD_Tab_Trl SET Name='Báscula',Description='Báscula (Romana)',Updated=TO_TIMESTAMP('2013-09-23 16:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53771 AND AD_Language='es_MX'
;

-- Sep 23, 2013 4:35:24 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64930,69594,0,53771,TO_TIMESTAMP('2013-09-23 16:35:23','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2013-09-23 16:35:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:35:24 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69594 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:35:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64924,69595,0,53771,TO_TIMESTAMP('2013-09-23 16:35:24','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2013-09-23 16:35:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:35:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69595 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:35:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64925,69596,0,53771,TO_TIMESTAMP('2013-09-23 16:35:25','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2013-09-23 16:35:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:35:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69596 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:35:26 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64926,69597,0,53771,TO_TIMESTAMP('2013-09-23 16:35:25','YYYY-MM-DD HH24:MI:SS'),100,'Responsibility Role',10,'ECA02','The Role determines security and access a user who has this Role will have in the System.','Y','Y','Y','N','N','N','N','N','Role',TO_TIMESTAMP('2013-09-23 16:35:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:35:26 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69597 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:35:26 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64929,69598,0,53771,TO_TIMESTAMP('2013-09-23 16:35:26','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Weight Scale',TO_TIMESTAMP('2013-09-23 16:35:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:35:26 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69598 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:35:54 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=69595
;

-- Sep 23, 2013 4:35:54 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=69596
;

-- Sep 23, 2013 4:35:54 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=69594
;

-- Sep 23, 2013 4:35:54 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=69598
;

-- Sep 23, 2013 4:35:54 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=69597
;

-- Sep 23, 2013 4:36:01 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-23 16:36:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69596
;

-- Sep 23, 2013 4:36:23 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-23 16:36:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69597
;

-- Sep 23, 2013 4:38:06 PM VET
-- Get Weight from Scale
UPDATE AD_Tab SET Description='Weight Scale By Role', IsSingleRow='N', Name='Weight Scale by Role', SeqNo=20, TabLevel=1,Updated=TO_TIMESTAMP('2013-09-23 16:38:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53771
;

-- Sep 23, 2013 4:38:06 PM VET
-- Get Weight from Scale
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=53771
;

-- Sep 23, 2013 4:38:16 PM VET
-- Get Weight from Scale
UPDATE AD_Tab_Trl SET Name='Báscula por Rol',Updated=TO_TIMESTAMP('2013-09-23 16:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53771 AND AD_Language='es_MX'
;

-- Sep 23, 2013 4:38:52 PM VET
-- Get Weight from Scale
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53772,53594,53280,TO_TIMESTAMP('2013-09-23 16:38:49','YYYY-MM-DD HH24:MI:SS'),100,'Weight Scale','ECA02','N','N','Y','N','N','Y','N','Y','N','N','Weight Scale','N',10,0,TO_TIMESTAMP('2013-09-23 16:38:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:38:52 PM VET
-- Get Weight from Scale
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53772 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Sep 23, 2013 4:39:25 PM VET
-- Get Weight from Scale
UPDATE AD_Tab_Trl SET Name='Báscula',Description='Báscula (Romana)',Updated=TO_TIMESTAMP('2013-09-23 16:39:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53772 AND AD_Language='es_MX'
;

-- Sep 23, 2013 4:39:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67999,69599,0,53772,TO_TIMESTAMP('2013-09-23 16:39:34','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2013-09-23 16:39:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:39:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69599 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:39:37 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67994,69600,0,53772,TO_TIMESTAMP('2013-09-23 16:39:36','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2013-09-23 16:39:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:39:37 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69600 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:39:38 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68003,69601,0,53772,TO_TIMESTAMP('2013-09-23 16:39:37','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_TIMESTAMP('2013-09-23 16:39:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:39:38 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69601 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:39:38 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68000,69602,0,53772,TO_TIMESTAMP('2013-09-23 16:39:38','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2013-09-23 16:39:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:39:38 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69602 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:39:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67995,69603,0,53772,TO_TIMESTAMP('2013-09-23 16:39:38','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2013-09-23 16:39:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:39:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69603 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:39:40 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68006,69604,0,53772,TO_TIMESTAMP('2013-09-23 16:39:39','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Screen Configuration',TO_TIMESTAMP('2013-09-23 16:39:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:39:40 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69604 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:39:40 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68005,69605,0,53772,TO_TIMESTAMP('2013-09-23 16:39:40','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 9600...',10,'ECA02','Y','Y','Y','N','N','N','N','N','Serial Port Configuration',TO_TIMESTAMP('2013-09-23 16:39:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:39:40 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69605 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:39:41 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68004,69606,0,53772,TO_TIMESTAMP('2013-09-23 16:39:40','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure',10,'ECA02','The UOM defines a unique non monetary Unit of Measure','Y','Y','Y','N','N','N','N','N','UOM',TO_TIMESTAMP('2013-09-23 16:39:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:39:41 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69606 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:39:43 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67998,69607,0,53772,TO_TIMESTAMP('2013-09-23 16:39:41','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','N','N','N','N','N','N','Weight Scale',TO_TIMESTAMP('2013-09-23 16:39:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:39:43 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69607 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 23, 2013 4:40:39 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=69600
;

-- Sep 23, 2013 4:40:39 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=69603
;

-- Sep 23, 2013 4:40:39 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=69602
;

-- Sep 23, 2013 4:40:39 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=69601
;

-- Sep 23, 2013 4:40:39 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=69599
;

-- Sep 23, 2013 4:40:39 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=69606
;

-- Sep 23, 2013 4:40:39 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=69605
;

-- Sep 23, 2013 4:40:39 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=69604
;

-- Sep 23, 2013 4:40:44 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-23 16:40:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69603
;

-- Sep 23, 2013 4:40:53 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-23 16:40:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69606
;

-- Sep 23, 2013 4:41:03 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-23 16:41:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69604
;

-- Sep 23, 2013 4:41:18 PM VET
-- Get Weight from Scale
UPDATE AD_Table SET AD_Window_ID=53280,Updated=TO_TIMESTAMP('2013-09-23 16:41:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53594
;

-- Sep 23, 2013 4:41:36 PM VET
-- Get Weight from Scale
UPDATE AD_Table SET AD_Window_ID=53280,Updated=TO_TIMESTAMP('2013-09-23 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53459
;

-- Sep 23, 2013 4:43:21 PM VET
-- Get Weight from Scale
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53628,0,TO_TIMESTAMP('2013-09-23 16:43:19','YYYY-MM-DD HH24:MI:SS'),100,'Weight Scale Configuration','ECA02','Y','Y','N','N','Y','Weight Scale Config',TO_TIMESTAMP('2013-09-23 16:43:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:43:21 PM VET
-- Get Weight from Scale
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53628 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Sep 23, 2013 4:43:21 PM VET
-- Get Weight from Scale
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53628, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53628)
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=161
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=367
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=456
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=501
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=326
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=566
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=392
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53628
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53488
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=113
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=220
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=11, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=351
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=12, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=289
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=13, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=302
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=14, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=303
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=15, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=321
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=16, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=461
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=17, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53193
;

-- Sep 23, 2013 4:43:46 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=18, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=383
;

-- Sep 23, 2013 4:45:15 PM VET
-- Get Weight from Scale
UPDATE AD_Menu_Trl SET Name='Configuración de Báscula (Romana)',Description='Configuración de Báscula (Romana)',Updated=TO_TIMESTAMP('2013-09-23 16:45:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53628 AND AD_Language='es_MX'
;

-- Sep 23, 2013 4:45:50 PM VET
-- Get Weight from Scale
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53629,0,53280,TO_TIMESTAMP('2013-09-23 16:45:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Weight Scale',TO_TIMESTAMP('2013-09-23 16:45:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:45:50 PM VET
-- Get Weight from Scale
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53629 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Sep 23, 2013 4:45:50 PM VET
-- Get Weight from Scale
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53629, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53629)
;

-- Sep 23, 2013 4:46:35 PM VET
-- Get Weight from Scale
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53630,0,53279,TO_TIMESTAMP('2013-09-23 16:46:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Screen Config',TO_TIMESTAMP('2013-09-23 16:46:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2013 4:46:35 PM VET
-- Get Weight from Scale
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53630 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Sep 23, 2013 4:46:35 PM VET
-- Get Weight from Scale
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53630, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53630)
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=161
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=367
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=456
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=501
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=326
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=566
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=392
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53628
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53488
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53629
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=113
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=11, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=220
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=12, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=351
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=13, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=289
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=14, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=302
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=15, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=303
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=16, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=321
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=17, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=461
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=18, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53193
;

-- Sep 23, 2013 4:46:53 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=19, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=383
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=161
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=367
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=456
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=501
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=326
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=566
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=392
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53628
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53488
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53629
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53630
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=11, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=113
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=12, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=220
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=13, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=351
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=14, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=289
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=15, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=302
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=16, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=303
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=17, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=321
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=18, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=461
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=19, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53193
;

-- Sep 23, 2013 4:46:57 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=20, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=383
;

-- Sep 23, 2013 4:47:06 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=53628, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53629
;

-- Sep 23, 2013 4:47:12 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=53628, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53630
;

-- Sep 23, 2013 4:47:12 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=53628, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53629
;

-- Sep 23, 2013 4:47:15 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=53628, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53488
;

-- Sep 23, 2013 4:47:15 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=53628, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53630
;

-- Sep 23, 2013 4:47:15 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=53628, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53629
;

-- Sep 23, 2013 4:48:13 PM VET
-- Get Weight from Scale
UPDATE AD_Window SET Name='Serial Port Config',Updated=TO_TIMESTAMP('2013-09-23 16:48:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53212
;

-- Sep 23, 2013 4:48:13 PM VET
-- Get Weight from Scale
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=53212
;

-- Sep 23, 2013 4:48:13 PM VET
-- Get Weight from Scale
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Serial Port Config',Updated=TO_TIMESTAMP('2013-09-23 16:48:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53488
;

-- Sep 23, 2013 4:48:13 PM VET
-- Get Weight from Scale
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53488
;

-- Sep 23, 2013 4:48:24 PM VET
-- Get Weight from Scale
UPDATE AD_Window_Trl SET Name='Configuración de Puerto Serie',Updated=TO_TIMESTAMP('2013-09-23 16:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53212 AND AD_Language='es_MX'
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=64909
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column WHERE AD_Column_ID=64909
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=64914
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column WHERE AD_Column_ID=64914
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=64922
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column WHERE AD_Column_ID=64922
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=64915
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column WHERE AD_Column_ID=64915
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=64923
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column WHERE AD_Column_ID=64923
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=64917
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column WHERE AD_Column_ID=64917
;

-- Sep 23, 2013 5:13:04 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=64919
;

-- Sep 23, 2013 5:13:05 PM VET
-- Get Weight from Scale
DELETE FROM AD_Column WHERE AD_Column_ID=64919
;

