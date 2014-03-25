-- Sep 24, 2013 11:14:43 AM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53245,0,TO_DATE('2013-09-24 11:14:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Port Not Configured for User','E',TO_DATE('2013-09-24 11:14:40','YYYY-MM-DD HH24:MI:SS'),100,'PortNotConfiguredforUser')
;

-- Sep 24, 2013 11:14:43 AM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53245 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Sep 24, 2013 11:15:23 AM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Puerto No Configurado',Updated=TO_DATE('2013-09-24 11:15:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53245 AND AD_Language='es_MX'
;

-- Sep 24, 2013 11:21:37 AM VET
-- Get Weight from Scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53246,0,TO_DATE('2013-09-24 11:21:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Weight Scale Not Configigurated For User','E',TO_DATE('2013-09-24 11:21:34','YYYY-MM-DD HH24:MI:SS'),100,'WeightScaleNotConfigForUser')
;

-- Sep 24, 2013 11:21:37 AM VET
-- Get Weight from Scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53246 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Sep 24, 2013 11:22:08 AM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET MsgText='Báscula no Configurada para el Usuario',Updated=TO_DATE('2013-09-24 11:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53246 AND AD_Language='es_MX'
;

-- Sep 24, 2013 11:23:27 AM VET
-- Get Weight from Scale
UPDATE AD_Message SET Value='PortNotConfiguredForUser',Updated=TO_DATE('2013-09-24 11:23:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53245
;

-- Sep 24, 2013 11:23:40 AM VET
-- Get Weight from Scale
UPDATE AD_Message SET MsgText='Weight Scale Not Configigurated for User',Updated=TO_DATE('2013-09-24 11:23:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53246
;

-- Sep 24, 2013 11:23:40 AM VET
-- Get Weight from Scale
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53246
;

-- Sep 24, 2013 1:56:42 PM VET
-- Get Weight from Scale
UPDATE AD_SysConfig SET Description='Flag to indicate if Open Port automatic in Get Weight from Scale',Updated=TO_DATE('2013-09-24 13:56:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=50065
;

-- Sep 24, 2013 2:04:03 PM VET
-- Get Weight from Scale
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52212,'C_UOM.UOMType = ''WE''',TO_DATE('2013-09-24 14:03:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_UOM Weight Scale','S',TO_DATE('2013-09-24 14:03:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 24, 2013 2:04:14 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET AD_Val_Rule_ID=52212,Updated=TO_DATE('2013-09-24 14:04:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68004
;

-- Sep 24, 2013 2:05:05 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET DefaultValue='-1',Updated=TO_DATE('2013-09-24 14:05:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68004
;

-- Sep 24, 2013 2:07:35 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-09-24 14:07:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67986
;

-- Sep 24, 2013 2:11:17 PM VET
-- Get Weight from Scale
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2013-09-24 14:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67982
;

