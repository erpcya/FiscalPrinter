-- Apr 18, 2013 5:32:33 PM VET
-- Get Weight from Scale
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53457,'N',TO_TIMESTAMP('2013-04-18 17:32:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'Serial Port Configuration','L','CUST_SerialPortConfig',TO_TIMESTAMP('2013-04-18 17:32:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:32:33 PM VET
-- Get Weight from Scale
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53457 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Apr 18, 2013 5:32:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53604,TO_TIMESTAMP('2013-04-18 17:32:33','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table CUST_SerialPortConfig',1,'Y','N','Y','Y','CUST_SerialPortConfig','N',1000000,TO_TIMESTAMP('2013-04-18 17:32:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:37:41 PM VET
-- Get Weight from Scale
UPDATE AD_Table_Trl SET Name='Configuración de Puerto Serie',Updated=TO_TIMESTAMP('2013-04-18 17:37:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53457 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:39:35 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64885,102,0,19,53457,'AD_Client_ID',TO_TIMESTAMP('2013-04-18 17:39:34','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2013-04-18 17:39:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 5:39:35 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64885 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 5:40:26 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64886,113,0,19,53457,'AD_Org_ID',TO_TIMESTAMP('2013-04-18 17:40:26','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2013-04-18 17:40:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 5:40:26 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64886 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 5:41:13 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55814,0,'Bauds',TO_TIMESTAMP('2013-04-18 17:41:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Bauds','Bauds',TO_TIMESTAMP('2013-04-18 17:41:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:41:13 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55814 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:42:33 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Baudios',PrintName='Baudios',Description='Velocidad del Puerto en Baudios',Updated=TO_TIMESTAMP('2013-04-18 17:42:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55814 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:43:41 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55815,0,'StrLength',TO_TIMESTAMP('2013-04-18 17:43:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','String Length','String Length',TO_TIMESTAMP('2013-04-18 17:43:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:43:41 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55815 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:44:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55816,0,'StopBits',TO_TIMESTAMP('2013-04-18 17:44:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Stop Bits','Stop Bits',TO_TIMESTAMP('2013-04-18 17:44:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:44:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55816 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:44:31 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Bits de Parada',PrintName='Bits de Parada',Updated=TO_TIMESTAMP('2013-04-18 17:44:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55816 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:45:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55817,0,'StartCharacter',TO_TIMESTAMP('2013-04-18 17:45:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Start Character','Start Character',TO_TIMESTAMP('2013-04-18 17:45:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:45:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55817 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:46:13 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Caracter de Inicio',PrintName='Caracter de Inicio',Updated=TO_TIMESTAMP('2013-04-18 17:46:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55817 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:46:24 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Description='Caracter de Inicio ejemplo: ASCII (3)',Updated=TO_TIMESTAMP('2013-04-18 17:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55817 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:46:46 PM VET
-- Get Weight from Scale
UPDATE AD_Element SET Description='Start Character example: ASCII (3)',Updated=TO_TIMESTAMP('2013-04-18 17:46:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55817
;

-- Apr 18, 2013 5:46:46 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=55817
;

-- Apr 18, 2013 5:46:46 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET ColumnName='StartCharacter', Name='Start Character', Description='Start Character example: ASCII (3)', Help=NULL WHERE AD_Element_ID=55817
;

-- Apr 18, 2013 5:46:46 PM VET
-- Get Weight from Scale
UPDATE AD_Process_Para SET ColumnName='StartCharacter', Name='Start Character', Description='Start Character example: ASCII (3)', Help=NULL, AD_Element_ID=55817 WHERE UPPER(ColumnName)='STARTCHARACTER' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Apr 18, 2013 5:46:46 PM VET
-- Get Weight from Scale
UPDATE AD_Process_Para SET ColumnName='StartCharacter', Name='Start Character', Description='Start Character example: ASCII (3)', Help=NULL WHERE AD_Element_ID=55817 AND IsCentrallyMaintained='Y'
;

-- Apr 18, 2013 5:46:46 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET Name='Start Character', Description='Start Character example: ASCII (3)', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=55817) AND IsCentrallyMaintained='Y'
;

-- Apr 18, 2013 5:47:11 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55818,0,'SerialPort',TO_TIMESTAMP('2013-04-18 17:47:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Serial Port','Serial Port',TO_TIMESTAMP('2013-04-18 17:47:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:47:11 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55818 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:47:21 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Puerto Serie',PrintName='Puerto Serie',Updated=TO_TIMESTAMP('2013-04-18 17:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55818 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:48:08 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55819,0,'PosStartCut',TO_TIMESTAMP('2013-04-18 17:48:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Position Start (Cut)','Position Start (Cut)',TO_TIMESTAMP('2013-04-18 17:48:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:48:08 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55819 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:48:35 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Posición de Inicio (Corte)',PrintName='Posición de Inicio (Corte)',Updated=TO_TIMESTAMP('2013-04-18 17:48:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55819 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:48:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55820,0,'PosStart_SCut',TO_TIMESTAMP('2013-04-18 17:48:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Position Start (Screen cut)','Position Start (Screen cut)',TO_TIMESTAMP('2013-04-18 17:48:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:48:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55820 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:49:09 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Posición de Inicio (Corte de Pantalla)',PrintName='Posición de Inicio (Corte de Pantalla)',Updated=TO_TIMESTAMP('2013-04-18 17:49:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55820 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:49:31 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55821,0,'PosEndCut',TO_TIMESTAMP('2013-04-18 17:49:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Position End (Cut)','Position End (Cut)',TO_TIMESTAMP('2013-04-18 17:49:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:49:31 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55821 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:49:57 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Posición de Fin (Corte)',PrintName='Posición de Fin (Corte)',Updated=TO_TIMESTAMP('2013-04-18 17:49:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55821 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:50:21 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55822,0,'PosEnd_SCut',TO_TIMESTAMP('2013-04-18 17:50:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Position End (Screen cut)','Position End (Screen cut)',TO_TIMESTAMP('2013-04-18 17:50:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:50:21 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55822 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:50:35 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Posición de Fin (Corte de Pantalla)',PrintName='Posición de Fin (Corte de Pantalla)',Updated=TO_TIMESTAMP('2013-04-18 17:50:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55822 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:50:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55823,0,'Parity',TO_TIMESTAMP('2013-04-18 17:50:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Parity','Parity',TO_TIMESTAMP('2013-04-18 17:50:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:50:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55823 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:51:09 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Paridad',PrintName='Paridad',Updated=TO_TIMESTAMP('2013-04-18 17:51:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55823 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:51:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55824,0,'FlowControl',TO_TIMESTAMP('2013-04-18 17:51:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Flow Control','Flow Control',TO_TIMESTAMP('2013-04-18 17:51:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:51:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55824 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:51:47 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Control de Flujo',PrintName='Control de Flujo',Updated=TO_TIMESTAMP('2013-04-18 17:51:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55824 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:52:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55825,0,'EndCharacter',TO_TIMESTAMP('2013-04-18 17:52:16','YYYY-MM-DD HH24:MI:SS'),100,'End Character example: ASCII (28)','ECA02','Y','End Character','End Character',TO_TIMESTAMP('2013-04-18 17:52:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:52:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55825 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:52:42 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Caracter de Fin',PrintName='Caracter de Fin',Description='Caracter de Fin de Trama ejemplo: ASCII (28)',Updated=TO_TIMESTAMP('2013-04-18 17:52:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55825 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:53:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55826,0,'DataBits',TO_TIMESTAMP('2013-04-18 17:53:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Data Bits','Data Bits',TO_TIMESTAMP('2013-04-18 17:53:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:53:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55826 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:53:45 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Bits de Datos',PrintName='Bits de Datos',Updated=TO_TIMESTAMP('2013-04-18 17:53:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55826 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:54:45 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55827,0,'CUST_SerialPortConfig_ID',TO_TIMESTAMP('2013-04-18 17:54:45','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 9600...','ECA02','Y','Serial Port Configuration','Serial Port Configuration',TO_TIMESTAMP('2013-04-18 17:54:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:54:45 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55827 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:55:06 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Configuración de Puerto Serie',PrintName='Configuración de Puerto Serie',Description='Configuración de Puerto Serie ejemplo: COM1 o tty01, 9600...',Updated=TO_TIMESTAMP('2013-04-18 17:55:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55827 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:55:31 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55828,0,'CUST_PortConfig_Role_ID',TO_TIMESTAMP('2013-04-18 17:55:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Port Configuration by User','Port Configuration by User',TO_TIMESTAMP('2013-04-18 17:55:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 5:55:31 PM VET
-- Get Weight from Scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55828 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 5:56:43 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Configuración de Puerto por Perfil',PrintName='Configuración de Puerto por Perfil',Updated=TO_TIMESTAMP('2013-04-18 17:56:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55828 AND AD_Language='es_MX'
;

-- Apr 18, 2013 5:57:22 PM VET
-- Get Weight from Scale
UPDATE AD_Element_Trl SET Name='Longitud de Trama',PrintName='Longitud de Trama',Updated=TO_TIMESTAMP('2013-04-18 17:57:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55815 AND AD_Language='es_MX'
;

-- Apr 18, 2013 6:07:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53482,TO_TIMESTAMP('2013-04-18 18:07:03','YYYY-MM-DD HH24:MI:SS'),100,'Speed in Bauds','ECA02','Y','Y','Bauds',TO_TIMESTAMP('2013-04-18 18:07:03','YYYY-MM-DD HH24:MI:SS'),100,'L','000000')
;

-- Apr 18, 2013 6:07:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53482 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Apr 18, 2013 6:07:28 PM VET
-- Get Weight from Scale
UPDATE AD_Reference_Trl SET Name='Baudios',Description='Velocidad en Baudios',Updated=TO_TIMESTAMP('2013-04-18 18:07:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53482 AND AD_Language='es_MX'
;

-- Apr 18, 2013 6:07:45 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53896,TO_TIMESTAMP('2013-04-18 18:07:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','110',TO_TIMESTAMP('2013-04-18 18:07:45','YYYY-MM-DD HH24:MI:SS'),100,'110')
;

-- Apr 18, 2013 6:07:45 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53896 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:08:44 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53897,TO_TIMESTAMP('2013-04-18 18:08:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','115200',TO_TIMESTAMP('2013-04-18 18:08:44','YYYY-MM-DD HH24:MI:SS'),100,'115200')
;

-- Apr 18, 2013 6:08:44 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53897 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:08:56 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53898,TO_TIMESTAMP('2013-04-18 18:08:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','1200',TO_TIMESTAMP('2013-04-18 18:08:56','YYYY-MM-DD HH24:MI:SS'),100,'1200')
;

-- Apr 18, 2013 6:08:56 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53898 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:09:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53899,TO_TIMESTAMP('2013-04-18 18:09:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','19200',TO_TIMESTAMP('2013-04-18 18:09:17','YYYY-MM-DD HH24:MI:SS'),100,'19200')
;

-- Apr 18, 2013 6:09:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53899 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:09:52 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53900,TO_TIMESTAMP('2013-04-18 18:09:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','2400',TO_TIMESTAMP('2013-04-18 18:09:51','YYYY-MM-DD HH24:MI:SS'),100,'2400')
;

-- Apr 18, 2013 6:09:52 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53900 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:10:04 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53901,TO_TIMESTAMP('2013-04-18 18:10:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','300',TO_TIMESTAMP('2013-04-18 18:10:04','YYYY-MM-DD HH24:MI:SS'),100,'300')
;

-- Apr 18, 2013 6:10:04 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53901 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:10:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53902,TO_TIMESTAMP('2013-04-18 18:10:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','38400',TO_TIMESTAMP('2013-04-18 18:10:17','YYYY-MM-DD HH24:MI:SS'),100,'38400')
;

-- Apr 18, 2013 6:10:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53902 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:10:29 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53903,TO_TIMESTAMP('2013-04-18 18:10:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','4800',TO_TIMESTAMP('2013-04-18 18:10:28','YYYY-MM-DD HH24:MI:SS'),100,'4800')
;

-- Apr 18, 2013 6:10:29 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53903 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:10:43 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53904,TO_TIMESTAMP('2013-04-18 18:10:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','57600',TO_TIMESTAMP('2013-04-18 18:10:42','YYYY-MM-DD HH24:MI:SS'),100,'57600')
;

-- Apr 18, 2013 6:10:43 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53904 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:10:53 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53905,TO_TIMESTAMP('2013-04-18 18:10:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','75',TO_TIMESTAMP('2013-04-18 18:10:53','YYYY-MM-DD HH24:MI:SS'),100,'75')
;

-- Apr 18, 2013 6:10:53 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53905 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:11:06 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53482,53906,TO_TIMESTAMP('2013-04-18 18:11:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','9600',TO_TIMESTAMP('2013-04-18 18:11:06','YYYY-MM-DD HH24:MI:SS'),100,'9600')
;

-- Apr 18, 2013 6:11:06 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53906 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:13:55 PM VET
-- Get Weight from Scale
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53483,TO_TIMESTAMP('2013-04-18 18:13:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','DataBits',TO_TIMESTAMP('2013-04-18 18:13:55','YYYY-MM-DD HH24:MI:SS'),100,'L','0')
;

-- Apr 18, 2013 6:13:55 PM VET
-- Get Weight from Scale
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53483 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Apr 18, 2013 6:14:12 PM VET
-- Get Weight from Scale
UPDATE AD_Reference_Trl SET Name='Bit de Datos',Updated=TO_TIMESTAMP('2013-04-18 18:14:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53483 AND AD_Language='es_MX'
;

-- Apr 18, 2013 6:14:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53483,53907,TO_TIMESTAMP('2013-04-18 18:14:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','5',TO_TIMESTAMP('2013-04-18 18:14:33','YYYY-MM-DD HH24:MI:SS'),100,'5')
;

-- Apr 18, 2013 6:14:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53907 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:14:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53483,53908,TO_TIMESTAMP('2013-04-18 18:14:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','6',TO_TIMESTAMP('2013-04-18 18:14:46','YYYY-MM-DD HH24:MI:SS'),100,'6')
;

-- Apr 18, 2013 6:14:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53908 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:14:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53483,53909,TO_TIMESTAMP('2013-04-18 18:14:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','7',TO_TIMESTAMP('2013-04-18 18:14:57','YYYY-MM-DD HH24:MI:SS'),100,'7')
;

-- Apr 18, 2013 6:14:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53909 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:15:10 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53483,53910,TO_TIMESTAMP('2013-04-18 18:15:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','8',TO_TIMESTAMP('2013-04-18 18:15:10','YYYY-MM-DD HH24:MI:SS'),100,'8')
;

-- Apr 18, 2013 6:15:10 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53910 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:15:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53484,TO_TIMESTAMP('2013-04-18 18:15:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','FlowControl',TO_TIMESTAMP('2013-04-18 18:15:57','YYYY-MM-DD HH24:MI:SS'),100,'L','0')
;

-- Apr 18, 2013 6:15:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53484 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Apr 18, 2013 6:16:22 PM VET
-- Get Weight from Scale
UPDATE AD_Reference_Trl SET Name='Control de Flujo',Updated=TO_TIMESTAMP('2013-04-18 18:16:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53484 AND AD_Language='es_MX'
;

-- Apr 18, 2013 6:16:44 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53484,53911,TO_TIMESTAMP('2013-04-18 18:16:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','None',TO_TIMESTAMP('2013-04-18 18:16:43','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- Apr 18, 2013 6:16:44 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53911 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:16:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53484,53912,TO_TIMESTAMP('2013-04-18 18:16:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','RTSCTS IN',TO_TIMESTAMP('2013-04-18 18:16:58','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- Apr 18, 2013 6:16:58 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53912 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:17:22 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53484,53913,TO_TIMESTAMP('2013-04-18 18:17:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','RTSCTS OUT',TO_TIMESTAMP('2013-04-18 18:17:22','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- Apr 18, 2013 6:17:22 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53913 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:17:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53484,53914,TO_TIMESTAMP('2013-04-18 18:17:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','XON/XOFF IN',TO_TIMESTAMP('2013-04-18 18:17:39','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- Apr 18, 2013 6:17:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53914 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:17:56 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53484,53915,TO_TIMESTAMP('2013-04-18 18:17:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','XON/XOFF OUT',TO_TIMESTAMP('2013-04-18 18:17:56','YYYY-MM-DD HH24:MI:SS'),100,'8')
;

-- Apr 18, 2013 6:17:56 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53915 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:18:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53485,TO_TIMESTAMP('2013-04-18 18:18:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','Parity',TO_TIMESTAMP('2013-04-18 18:18:36','YYYY-MM-DD HH24:MI:SS'),100,'L','0')
;

-- Apr 18, 2013 6:18:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53485 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Apr 18, 2013 6:19:00 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53485,53916,TO_TIMESTAMP('2013-04-18 18:18:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','None',TO_TIMESTAMP('2013-04-18 18:18:59','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- Apr 18, 2013 6:19:00 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53916 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:19:16 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53485,53917,TO_TIMESTAMP('2013-04-18 18:19:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Odd',TO_TIMESTAMP('2013-04-18 18:19:16','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- Apr 18, 2013 6:19:16 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53917 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:19:31 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53485,53918,TO_TIMESTAMP('2013-04-18 18:19:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Even',TO_TIMESTAMP('2013-04-18 18:19:30','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- Apr 18, 2013 6:19:31 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53918 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:19:45 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53485,53919,TO_TIMESTAMP('2013-04-18 18:19:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Mark',TO_TIMESTAMP('2013-04-18 18:19:45','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- Apr 18, 2013 6:19:45 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53919 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:20:01 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53485,53920,TO_TIMESTAMP('2013-04-18 18:20:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Space',TO_TIMESTAMP('2013-04-18 18:20:01','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- Apr 18, 2013 6:20:01 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53920 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:20:13 PM VET
-- Get Weight from Scale
UPDATE AD_Ref_List_Trl SET Name='Espacio',Updated=TO_TIMESTAMP('2013-04-18 18:20:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=53920 AND AD_Language='es_MX'
;

-- Apr 18, 2013 6:20:28 PM VET
-- Get Weight from Scale
UPDATE AD_Ref_List_Trl SET Name='Marca',Updated=TO_TIMESTAMP('2013-04-18 18:20:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=53919 AND AD_Language='es_MX'
;

-- Apr 18, 2013 6:20:41 PM VET
-- Get Weight from Scale
UPDATE AD_Ref_List_Trl SET Name='Par',Updated=TO_TIMESTAMP('2013-04-18 18:20:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=53918 AND AD_Language='es_MX'
;

-- Apr 18, 2013 6:24:36 PM VET
-- Get Weight from Scale
UPDATE AD_Ref_List_Trl SET Name='Impar',Updated=TO_TIMESTAMP('2013-04-18 18:24:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=53917 AND AD_Language='es_MX'
;

-- Apr 18, 2013 6:25:05 PM VET
-- Get Weight from Scale
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53486,TO_TIMESTAMP('2013-04-18 18:25:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','StopBits',TO_TIMESTAMP('2013-04-18 18:25:04','YYYY-MM-DD HH24:MI:SS'),100,'L','0')
;

-- Apr 18, 2013 6:25:05 PM VET
-- Get Weight from Scale
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53486 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Apr 18, 2013 6:25:16 PM VET
-- Get Weight from Scale
UPDATE AD_Reference_Trl SET Name='Bit de Parada',Updated=TO_TIMESTAMP('2013-04-18 18:25:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53486 AND AD_Language='es_MX'
;

-- Apr 18, 2013 6:27:27 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53486,53921,TO_TIMESTAMP('2013-04-18 18:27:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','1',TO_TIMESTAMP('2013-04-18 18:27:26','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- Apr 18, 2013 6:27:27 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53921 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:28:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53486,53922,TO_TIMESTAMP('2013-04-18 18:28:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','2',TO_TIMESTAMP('2013-04-18 18:28:02','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- Apr 18, 2013 6:28:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53922 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:28:28 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53486,53923,TO_TIMESTAMP('2013-04-18 18:28:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','1.5',TO_TIMESTAMP('2013-04-18 18:28:27','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- Apr 18, 2013 6:28:28 PM VET
-- Get Weight from Scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53923 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Apr 18, 2013 6:29:48 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64904,55814,0,17,53482,53457,'Bauds',TO_TIMESTAMP('2013-04-18 18:29:48','YYYY-MM-DD HH24:MI:SS'),100,'9600','ECA02',6,'Y','Y','N','N','N','Y','N','Y','N','Y','N','N','Y','Bauds',3,TO_TIMESTAMP('2013-04-18 18:29:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:29:48 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64904 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:31:08 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64905,245,0,16,53457,'Created',TO_TIMESTAMP('2013-04-18 18:31:08','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2013-04-18 18:31:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:31:08 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64905 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:31:52 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64906,246,0,18,110,53457,'CreatedBy',TO_TIMESTAMP('2013-04-18 18:31:52','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02',10,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2013-04-18 18:31:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:31:52 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64906 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:32:27 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64907,55827,0,13,53457,'CUST_SerialPortConfig_ID',TO_TIMESTAMP('2013-04-18 18:32:26','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 9600...','ECA02',10,'Y','Y','N','N','N','N','Y','Y','N','N','N','N','N','Serial Port Configuration',0,TO_TIMESTAMP('2013-04-18 18:32:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:32:27 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64907 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:33:37 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64908,55826,0,17,53483,53457,'DataBits',TO_TIMESTAMP('2013-04-18 18:33:36','YYYY-MM-DD HH24:MI:SS'),100,'8','ECA02',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Data Bits',0,TO_TIMESTAMP('2013-04-18 18:33:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:33:37 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64908 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:34:26 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64909,55825,0,11,53457,'EndCharacter',TO_TIMESTAMP('2013-04-18 18:34:25','YYYY-MM-DD HH24:MI:SS'),100,'End Character example: ASCII (28)','ECA02',14,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','End Character',0,TO_TIMESTAMP('2013-04-18 18:34:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:34:26 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64909 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:35:15 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64910,55824,0,17,53484,53457,'FlowControl',TO_TIMESTAMP('2013-04-18 18:35:15','YYYY-MM-DD HH24:MI:SS'),100,'1','ECA02',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Flow Control',0,TO_TIMESTAMP('2013-04-18 18:35:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:35:15 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64910 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:35:43 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64911,348,0,20,53457,'IsActive',TO_TIMESTAMP('2013-04-18 18:35:43','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2013-04-18 18:35:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:35:43 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64911 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:36:24 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64912,469,0,10,53457,'Name',TO_TIMESTAMP('2013-04-18 18:36:24','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','N','N','N','Y','N','Y','N','Y','N','N','Y','Name',1,TO_TIMESTAMP('2013-04-18 18:36:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:36:24 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64912 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:37:27 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64913,55823,0,17,53485,53457,'Parity',TO_TIMESTAMP('2013-04-18 18:37:27','YYYY-MM-DD HH24:MI:SS'),100,'0','ECA02',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Parity',0,TO_TIMESTAMP('2013-04-18 18:37:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:37:27 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64913 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:38:20 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64914,55821,0,11,53457,'PosEndCut',TO_TIMESTAMP('2013-04-18 18:38:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Position End (Cut)',0,TO_TIMESTAMP('2013-04-18 18:38:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:38:20 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64914 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:39:10 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64915,55819,0,11,53457,'PosStartCut',TO_TIMESTAMP('2013-04-18 18:39:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Position Start (Cut)',0,TO_TIMESTAMP('2013-04-18 18:39:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:39:10 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64915 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:40:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64916,55818,0,10,53457,'SerialPort',TO_TIMESTAMP('2013-04-18 18:40:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','Y','N','Y','N','N','N','N','Y','Serial Port',2,TO_TIMESTAMP('2013-04-18 18:40:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:40:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64916 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:40:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64917,55817,0,11,53457,'StartCharacter',TO_TIMESTAMP('2013-04-18 18:40:33','YYYY-MM-DD HH24:MI:SS'),100,'Start Character example: ASCII (3)','ECA02',14,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Start Character',0,TO_TIMESTAMP('2013-04-18 18:40:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:40:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64917 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:41:05 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64918,55816,0,17,53486,53457,'StopBits',TO_TIMESTAMP('2013-04-18 18:41:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Stop Bits',0,TO_TIMESTAMP('2013-04-18 18:41:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:41:05 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64918 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:41:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64919,55815,0,11,53457,'StrLength',TO_TIMESTAMP('2013-04-18 18:41:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','String Length',0,TO_TIMESTAMP('2013-04-18 18:41:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:41:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64919 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:42:04 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64920,607,0,16,53457,'Updated',TO_TIMESTAMP('2013-04-18 18:42:04','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Updated',0,TO_TIMESTAMP('2013-04-18 18:42:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:42:04 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64920 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:42:37 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64921,608,0,18,110,53457,'UpdatedBy',TO_TIMESTAMP('2013-04-18 18:42:35','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02',10,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2013-04-18 18:42:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:42:37 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64921 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:43:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64922,55822,0,11,53457,'PosEnd_SCut',TO_TIMESTAMP('2013-04-18 18:43:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Position End (Screen cut)',0,TO_TIMESTAMP('2013-04-18 18:43:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:43:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64922 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:44:13 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64923,55820,0,11,53457,'PosStart_SCut',TO_TIMESTAMP('2013-04-18 18:44:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Position Start (Screen cut)',0,TO_TIMESTAMP('2013-04-18 18:44:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:44:13 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64923 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:45:03 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET DefaultValue='1',Updated=TO_TIMESTAMP('2013-04-18 18:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=64918
;

-- Apr 18, 2013 6:45:46 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-04-18 18:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=64920
;

-- Apr 18, 2013 6:46:01 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_TIMESTAMP('2013-04-18 18:46:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=64916
;

-- Apr 18, 2013 6:46:22 PM VET
-- Get Weight from Scale
CREATE TABLE CUST_SerialPortConfig (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Bauds VARCHAR(6) DEFAULT '9600' NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CUST_SerialPortConfig_ID NUMERIC(10) NOT NULL, DataBits CHAR(1) DEFAULT '8' NOT NULL, EndCharacter NUMERIC(10) NOT NULL, FlowControl CHAR(1) DEFAULT '1' NOT NULL, IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Parity CHAR(1) DEFAULT '0' NOT NULL, PosEndCut NUMERIC(10) NOT NULL, PosEnd_SCut NUMERIC(10) NOT NULL, PosStartCut NUMERIC(10) NOT NULL, PosStart_SCut NUMERIC(10) NOT NULL, SerialPort VARCHAR(60) NOT NULL, StartCharacter NUMERIC(10) NOT NULL, StopBits VARCHAR(3) DEFAULT '1' NOT NULL, StrLength NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT CUST_SerialPortConfig_Key PRIMARY KEY (CUST_SerialPortConfig_ID))
;

-- Apr 18, 2013 6:47:07 PM VET
-- Get Weight from Scale
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53459,'N',TO_TIMESTAMP('2013-04-18 18:47:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'Port Configuration by Role','L','CUST_PortConfig_Role',TO_TIMESTAMP('2013-04-18 18:47:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 6:47:07 PM VET
-- Get Weight from Scale
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53459 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Apr 18, 2013 6:47:08 PM VET
-- Get Weight from Scale
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53605,TO_TIMESTAMP('2013-04-18 18:47:07','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table CUST_PortConfig_Role',1,'Y','N','Y','Y','CUST_PortConfig_Role','N',1000000,TO_TIMESTAMP('2013-04-18 18:47:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 6:47:23 PM VET
-- Get Weight from Scale
UPDATE AD_Table_Trl SET Name='Perfiles Asignados',Updated=TO_TIMESTAMP('2013-04-18 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53459 AND AD_Language='es_MX'
;

-- Apr 18, 2013 6:49:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64924,102,0,19,53459,'AD_Client_ID',TO_TIMESTAMP('2013-04-18 18:49:33','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2013-04-18 18:49:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:49:34 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64924 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:49:57 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64925,113,0,19,53459,'AD_Org_ID',TO_TIMESTAMP('2013-04-18 18:49:57','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2013-04-18 18:49:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:49:57 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64925 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:50:46 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64926,123,0,19,53459,'AD_Role_ID',TO_TIMESTAMP('2013-04-18 18:50:45','YYYY-MM-DD HH24:MI:SS'),100,'Responsibility Role','ECA02',10,'The Role determines security and access a user who has this Role will have in the System.','Y','Y','N','N','N','Y','N','Y','Y','N','N','N','N','Role',2,TO_TIMESTAMP('2013-04-18 18:50:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:50:46 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64926 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:51:16 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64927,245,0,16,53459,'Created',TO_TIMESTAMP('2013-04-18 18:51:15','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2013-04-18 18:51:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:51:16 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64927 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:51:51 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64928,246,0,18,110,53459,'CreatedBy',TO_TIMESTAMP('2013-04-18 18:51:50','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02',10,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2013-04-18 18:51:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:51:51 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64928 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:53:18 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64929,55827,0,19,53459,'CUST_SerialPortConfig_ID',TO_TIMESTAMP('2013-04-18 18:53:16','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 9600...','ECA02',10,'Y','Y','N','N','N','Y','N','Y','Y','N','N','N','N','Serial Port Configuration',1,TO_TIMESTAMP('2013-04-18 18:53:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:53:18 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64929 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:53:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64930,348,0,20,53459,'IsActive',TO_TIMESTAMP('2013-04-18 18:53:47','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2013-04-18 18:53:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:53:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64930 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:54:22 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64931,607,0,16,53459,'Updated',TO_TIMESTAMP('2013-04-18 18:54:21','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2013-04-18 18:54:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:54:22 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64931 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:54:59 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64932,608,0,18,110,53459,'UpdatedBy',TO_TIMESTAMP('2013-04-18 18:54:59','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02',10,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2013-04-18 18:54:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 6:54:59 PM VET
-- Get Weight from Scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64932 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 6:57:56 PM VET
-- Get Weight from Scale
CREATE TABLE CUST_PortConfig_Role (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AD_Role_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CUST_SerialPortConfig_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT CUST_PortConfig_Role_Key PRIMARY KEY (AD_Role_ID, CUST_SerialPortConfig_ID))
;

-- Apr 18, 2013 6:59:32 PM VET
-- Get Weight from Scale
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53212,TO_TIMESTAMP('2013-04-18 18:59:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','Serial Port Configuration','N',TO_TIMESTAMP('2013-04-18 18:59:31','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Apr 18, 2013 6:59:32 PM VET
-- Get Weight from Scale
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53212 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Apr 18, 2013 6:59:42 PM VET
-- Get Weight from Scale
UPDATE AD_Window_Trl SET Name='Configuración del Puerto Serie',Updated=TO_TIMESTAMP('2013-04-18 18:59:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53212 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:00:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53602,53457,53212,TO_TIMESTAMP('2013-04-18 19:00:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','Y','N','N','Port Configuration','N',10,0,TO_TIMESTAMP('2013-04-18 19:00:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:00:25 PM VET
-- Get Weight from Scale
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53602 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Apr 18, 2013 7:00:35 PM VET
-- Get Weight from Scale
UPDATE AD_Tab_Trl SET Name='Configuración de Puerto',Updated=TO_TIMESTAMP('2013-04-18 19:00:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53602 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:01:02 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64911,66135,0,53602,TO_TIMESTAMP('2013-04-18 19:00:59','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2013-04-18 19:00:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:02 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66135 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64904,66136,0,53602,TO_TIMESTAMP('2013-04-18 19:01:02','YYYY-MM-DD HH24:MI:SS'),100,6,'ECA02','Y','Y','Y','N','N','N','N','N','Bauds',TO_TIMESTAMP('2013-04-18 19:01:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66136 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64885,66137,0,53602,TO_TIMESTAMP('2013-04-18 19:01:03','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2013-04-18 19:01:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66137 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64908,66138,0,53602,TO_TIMESTAMP('2013-04-18 19:01:03','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Data Bits',TO_TIMESTAMP('2013-04-18 19:01:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66138 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:04 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64909,66139,0,53602,TO_TIMESTAMP('2013-04-18 19:01:03','YYYY-MM-DD HH24:MI:SS'),100,'End Character example: ASCII (28)',14,'ECA02','Y','Y','Y','N','N','N','N','N','End Character',TO_TIMESTAMP('2013-04-18 19:01:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:04 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66139 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:04 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64910,66140,0,53602,TO_TIMESTAMP('2013-04-18 19:01:04','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Flow Control',TO_TIMESTAMP('2013-04-18 19:01:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:04 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66140 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:05 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64912,66141,0,53602,TO_TIMESTAMP('2013-04-18 19:01:04','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2013-04-18 19:01:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:05 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66141 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:05 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64886,66142,0,53602,TO_TIMESTAMP('2013-04-18 19:01:05','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2013-04-18 19:01:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:05 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66142 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:06 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64913,66143,0,53602,TO_TIMESTAMP('2013-04-18 19:01:05','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Parity',TO_TIMESTAMP('2013-04-18 19:01:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:06 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66143 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:06 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64914,66144,0,53602,TO_TIMESTAMP('2013-04-18 19:01:06','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Position End (Cut)',TO_TIMESTAMP('2013-04-18 19:01:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:06 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66144 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:07 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64922,66145,0,53602,TO_TIMESTAMP('2013-04-18 19:01:06','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Position End (Screen cut)',TO_TIMESTAMP('2013-04-18 19:01:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:07 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66145 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:07 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64915,66146,0,53602,TO_TIMESTAMP('2013-04-18 19:01:07','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Position Start (Cut)',TO_TIMESTAMP('2013-04-18 19:01:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:07 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66146 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:08 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64923,66147,0,53602,TO_TIMESTAMP('2013-04-18 19:01:07','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Position Start (Screen cut)',TO_TIMESTAMP('2013-04-18 19:01:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:08 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66147 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:09 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64916,66148,0,53602,TO_TIMESTAMP('2013-04-18 19:01:08','YYYY-MM-DD HH24:MI:SS'),100,60,'ECA02','Y','Y','Y','N','N','N','N','N','Serial Port',TO_TIMESTAMP('2013-04-18 19:01:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:09 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66148 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:10 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64907,66149,0,53602,TO_TIMESTAMP('2013-04-18 19:01:09','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 9600...',10,'ECA02','Y','Y','N','N','N','N','N','N','Serial Port Configuration',TO_TIMESTAMP('2013-04-18 19:01:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:10 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66149 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:11 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64917,66150,0,53602,TO_TIMESTAMP('2013-04-18 19:01:10','YYYY-MM-DD HH24:MI:SS'),100,'Start Character example: ASCII (3)',14,'ECA02','Y','Y','Y','N','N','N','N','N','Start Character',TO_TIMESTAMP('2013-04-18 19:01:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:11 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66150 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:12 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64918,66151,0,53602,TO_TIMESTAMP('2013-04-18 19:01:11','YYYY-MM-DD HH24:MI:SS'),100,3,'ECA02','Y','Y','Y','N','N','N','N','N','Stop Bits',TO_TIMESTAMP('2013-04-18 19:01:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:12 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66151 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:01:12 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64919,66152,0,53602,TO_TIMESTAMP('2013-04-18 19:01:12','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','String Length',TO_TIMESTAMP('2013-04-18 19:01:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:01:12 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66152 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:04:10 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=66137
;

-- Apr 18, 2013 7:04:10 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=66142
;

-- Apr 18, 2013 7:04:10 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=66135
;

-- Apr 18, 2013 7:04:10 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=66141
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=66148
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=66136
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=66143
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=66138
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=66151
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=66140
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=66152
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=66150
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=66139
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=66146
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=66144
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=66147
;

-- Apr 18, 2013 7:04:11 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=66145
;

-- Apr 18, 2013 7:04:32 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-18 19:04:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66142
;

-- Apr 18, 2013 7:04:58 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET DisplayLength=6,Updated=TO_TIMESTAMP('2013-04-18 19:04:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66148
;

-- Apr 18, 2013 7:05:10 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-18 19:05:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66136
;

-- Apr 18, 2013 7:05:29 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-18 19:05:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66138
;

-- Apr 18, 2013 7:05:50 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-18 19:05:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66140
;

-- Apr 18, 2013 7:06:02 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-04-18 19:06:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66152
;

-- Apr 18, 2013 7:06:16 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-04-18 19:06:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66150
;

-- Apr 18, 2013 7:06:33 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET DisplayLength=10, IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-18 19:06:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66139
;

-- Apr 18, 2013 7:06:41 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-04-18 19:06:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66146
;

-- Apr 18, 2013 7:06:49 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET DisplayLength=10, IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-18 19:06:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66144
;

-- Apr 18, 2013 7:07:00 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-04-18 19:07:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66147
;

-- Apr 18, 2013 7:07:18 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET DisplayLength=10, IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-18 19:07:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66145
;

-- Apr 18, 2013 7:08:38 PM VET
-- Get Weight from Scale
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53603,53459,53212,TO_TIMESTAMP('2013-04-18 19:08:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','N','N','N','Port Configuration by Role','N',20,0,TO_TIMESTAMP('2013-04-18 19:08:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:08:38 PM VET
-- Get Weight from Scale
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53603 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Apr 18, 2013 7:08:46 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64930,66153,0,53603,TO_TIMESTAMP('2013-04-18 19:08:45','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2013-04-18 19:08:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:08:46 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66153 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:08:46 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64924,66154,0,53603,TO_TIMESTAMP('2013-04-18 19:08:46','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2013-04-18 19:08:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:08:46 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66154 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:08:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64925,66155,0,53603,TO_TIMESTAMP('2013-04-18 19:08:46','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2013-04-18 19:08:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:08:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66155 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:08:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64926,66156,0,53603,TO_TIMESTAMP('2013-04-18 19:08:47','YYYY-MM-DD HH24:MI:SS'),100,'Responsibility Role',10,'ECA02','The Role determines security and access a user who has this Role will have in the System.','Y','Y','Y','N','N','N','N','N','Role',TO_TIMESTAMP('2013-04-18 19:08:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:08:47 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66156 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:08:48 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,64929,66157,0,53603,TO_TIMESTAMP('2013-04-18 19:08:47','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 9600...',10,'ECA02','Y','Y','Y','N','N','N','N','N','Serial Port Configuration',TO_TIMESTAMP('2013-04-18 19:08:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:08:48 PM VET
-- Get Weight from Scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66157 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 7:09:08 PM VET
-- Get Weight from Scale
UPDATE AD_Tab_Trl SET Name='Perfiles Asignados',Updated=TO_TIMESTAMP('2013-04-18 19:09:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53603 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:09:24 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=66154
;

-- Apr 18, 2013 7:09:24 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=66155
;

-- Apr 18, 2013 7:09:24 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=66153
;

-- Apr 18, 2013 7:09:24 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=66157
;

-- Apr 18, 2013 7:09:24 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=66156
;

-- Apr 18, 2013 7:09:30 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-18 19:09:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66155
;

-- Apr 18, 2013 7:09:53 PM VET
-- Get Weight from Scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-18 19:09:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66156
;

-- Apr 18, 2013 7:10:22 PM VET
-- Get Weight from Scale
UPDATE AD_Table SET AD_Window_ID=53212,Updated=TO_TIMESTAMP('2013-04-18 19:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53457
;

-- Apr 18, 2013 7:10:39 PM VET
-- Get Weight from Scale
UPDATE AD_Table SET AD_Window_ID=53212,Updated=TO_TIMESTAMP('2013-04-18 19:10:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53459
;

-- Apr 18, 2013 7:12:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53488,0,53212,TO_TIMESTAMP('2013-04-18 19:12:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Serial Port Configuration',TO_TIMESTAMP('2013-04-18 19:12:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 7:12:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53488 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Apr 18, 2013 7:12:36 PM VET
-- Get Weight from Scale
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53488, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53488)
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=161
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=367
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=456
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=501
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=326
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=566
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=392
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53488
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=113
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=220
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=351
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=11, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=289
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=12, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=302
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=13, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=303
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=14, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=321
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=15, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=461
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=16, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53193
;

-- Apr 18, 2013 7:13:18 PM VET
-- Get Weight from Scale
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=17, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=383
;

