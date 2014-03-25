-- Apr 18, 2013 7:24:26 PM VET
-- Get Weight from Scale
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50065,'C',TO_TIMESTAMP('2013-04-18 19:24:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','OPEN_PORT_AUTOMATIC_IN_GETWEIGHT',TO_TIMESTAMP('2013-04-18 19:24:25','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;

-- Apr 18, 2013 7:26:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53207,0,TO_TIMESTAMP('2013-04-18 19:26:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Get Weight From Scale','I',TO_TIMESTAMP('2013-04-18 19:26:17','YYYY-MM-DD HH24:MI:SS'),100,'GetWeightFromScale')
;

-- Apr 18, 2013 7:26:17 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53207 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:26:26 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Obtener Peso desde Báscula',Updated=TO_TIMESTAMP('2013-04-18 19:26:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53207 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:26:49 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53208,0,TO_TIMESTAMP('2013-04-18 19:26:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Incomplete String','I',TO_TIMESTAMP('2013-04-18 19:26:48','YYYY-MM-DD HH24:MI:SS'),100,'IncompleteStr')
;

-- Apr 18, 2013 7:26:49 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53208 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:27:03 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Trama Incompleta',Updated=TO_TIMESTAMP('2013-04-18 19:27:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53208 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:27:23 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53209,0,TO_TIMESTAMP('2013-04-18 19:27:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','In/Out Exception','I',TO_TIMESTAMP('2013-04-18 19:27:23','YYYY-MM-DD HH24:MI:SS'),100,'IOException')
;

-- Apr 18, 2013 7:27:23 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53209 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:27:31 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Problemas de Entrada/Salida',Updated=TO_TIMESTAMP('2013-04-18 19:27:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53209 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:27:57 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53210,0,TO_TIMESTAMP('2013-04-18 19:27:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','No Class Defined Found Error','I',TO_TIMESTAMP('2013-04-18 19:27:57','YYYY-MM-DD HH24:MI:SS'),100,'NoClassDefFoundError')
;

-- Apr 18, 2013 7:27:57 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53210 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:28:10 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='No Existe la Clase Definida',Updated=TO_TIMESTAMP('2013-04-18 19:28:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53210 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:29:04 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53211,0,TO_TIMESTAMP('2013-04-18 19:29:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','No Such Port','I',TO_TIMESTAMP('2013-04-18 19:29:03','YYYY-MM-DD HH24:MI:SS'),100,'NoSuchPortException')
;

-- Apr 18, 2013 7:29:04 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53211 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:29:12 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='No Existe el Puerto Físico',Updated=TO_TIMESTAMP('2013-04-18 19:29:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53211 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:29:32 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53212,0,TO_TIMESTAMP('2013-04-18 19:29:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Port In Use','I',TO_TIMESTAMP('2013-04-18 19:29:32','YYYY-MM-DD HH24:MI:SS'),100,'PortInUseException')
;

-- Apr 18, 2013 7:29:32 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53212 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:29:44 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Puerto en Uso',Updated=TO_TIMESTAMP('2013-04-18 19:29:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53212 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:30:10 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53213,0,TO_TIMESTAMP('2013-04-18 19:30:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Port Not Configured for User','I',TO_TIMESTAMP('2013-04-18 19:30:10','YYYY-MM-DD HH24:MI:SS'),100,'PortNotConfigUser')
;

-- Apr 18, 2013 7:30:10 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53213 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:30:20 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Puerto No configurado para el Usuario',Updated=TO_TIMESTAMP('2013-04-18 19:30:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53213 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:30:40 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53214,0,TO_TIMESTAMP('2013-04-18 19:30:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Start Cutting position should not be more than Final Cutting Position','I',TO_TIMESTAMP('2013-04-18 19:30:39','YYYY-MM-DD HH24:MI:SS'),100,'PosStartCutOverPosEndCut')
;

-- Apr 18, 2013 7:30:40 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53214 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:30:50 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Posición de Corte de Inicio no debe ser mayor a la Posición de Corte Final',Updated=TO_TIMESTAMP('2013-04-18 19:30:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53214 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:31:08 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53215,0,TO_TIMESTAMP('2013-04-18 19:31:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Start Cutting position Screen should not be more than Final Cutting Position Screen','I',TO_TIMESTAMP('2013-04-18 19:31:08','YYYY-MM-DD HH24:MI:SS'),100,'PosStart_SCutOverPosEnd_SCut')
;

-- Apr 18, 2013 7:31:08 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53215 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:31:21 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Posición de Corte de Inicio de Pantalla no debe ser mayor a la Posición de Corte Final de Pantalla',Updated=TO_TIMESTAMP('2013-04-18 19:31:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53215 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:31:41 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53216,0,TO_TIMESTAMP('2013-04-18 19:31:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','String Length should no be less or equal to Zero','I',TO_TIMESTAMP('2013-04-18 19:31:41','YYYY-MM-DD HH24:MI:SS'),100,'StrLengthUnderZero')
;

-- Apr 18, 2013 7:31:42 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53216 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:31:51 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Longitud de Cadena no debe ser menor o igual a Cero',Updated=TO_TIMESTAMP('2013-04-18 19:31:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53216 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:32:07 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53217,0,TO_TIMESTAMP('2013-04-18 19:32:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Too Many Listeners','I',TO_TIMESTAMP('2013-04-18 19:32:07','YYYY-MM-DD HH24:MI:SS'),100,'TooManyListenersException')
;

-- Apr 18, 2013 7:32:07 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53217 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:32:24 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Existen Muchos Escuchadores para el Puerto',Updated=TO_TIMESTAMP('2013-04-18 19:32:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53217 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:32:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53218,0,TO_TIMESTAMP('2013-04-18 19:32:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Unsatisfied Link Error','I',TO_TIMESTAMP('2013-04-18 19:32:39','YYYY-MM-DD HH24:MI:SS'),100,'UnsatisfiedLinkError')
;

-- Apr 18, 2013 7:32:39 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53218 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:32:47 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Error de Enlace',Updated=TO_TIMESTAMP('2013-04-18 19:32:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53218 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:33:09 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53219,0,TO_TIMESTAMP('2013-04-18 19:33:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Unsupported Comm Operation','I',TO_TIMESTAMP('2013-04-18 19:33:09','YYYY-MM-DD HH24:MI:SS'),100,'UnsupportedCommOperationException')
;

-- Apr 18, 2013 7:33:09 PM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53219 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 18, 2013 7:33:17 PM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Operación No Soportada por el Puerto',Updated=TO_TIMESTAMP('2013-04-18 19:33:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53219 AND AD_Language='es_MX'
;

-- Apr 18, 2013 7:33:32 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53207
;

-- Apr 18, 2013 7:33:35 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53208
;

-- Apr 18, 2013 7:33:40 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:33:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53209
;

-- Apr 18, 2013 7:33:43 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:33:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53210
;

-- Apr 18, 2013 7:33:45 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:33:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53211
;

-- Apr 18, 2013 7:33:49 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:33:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53212
;

-- Apr 18, 2013 7:33:51 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:33:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53213
;

-- Apr 18, 2013 7:33:54 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:33:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53214
;

-- Apr 18, 2013 7:33:57 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:33:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53215
;

-- Apr 18, 2013 7:33:59 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:33:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53216
;

-- Apr 18, 2013 7:34:01 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:34:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53217
;

-- Apr 18, 2013 7:34:03 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:34:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53218
;

-- Apr 18, 2013 7:34:05 PM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-18 19:34:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53219
;

