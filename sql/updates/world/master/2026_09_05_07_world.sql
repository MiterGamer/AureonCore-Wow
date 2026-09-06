-- 55981 Right Beneath Their Eyes: enter citadel did not credit.
-- Sniff 19-16-21: after ogre aura 298241 the player is in non-cosmetic phase 13334
-- (PhaseShiftFlags 16, Added 13334). 13839 is not in that list.
-- Credit 16996 at 423.56,-2066.93,128.42; 16893 at 684.37,-1919.96,180.53.
-- Gor'groth 153580 CreateObject at cooking pit. 12 SQL had put ATs in 13839.
SET NAMES utf8mb4;

INSERT IGNORE INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(10424, 13334, 'Ogre disguise in Darkmaul Citadel');

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 13334 AND `SourceEntry` = 10424
  AND `Comment` LIKE 'Sniff 19-16-21:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(26,13334,10424,0,0,1,0,298241,0,0,'',0,0,0,'','Sniff 19-16-21: phase 13334 while ogre disguise 298241 is active');

UPDATE `conditions`
SET `ConditionValue2` = 66,
    `Comment` = 'Sniff 19-16-21: phase 13839 if 55981 complete | rewarded'
WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 13839 AND `SourceEntry` = 10424
  AND `ConditionTypeOrReference` = 47 AND `ConditionValue1` = 55981 AND `ConditionValue2` = 74;

UPDATE `areatrigger` SET
  `PosX` = 423.5581, `PosY` = -2066.9287, `PosZ` = 128.41998, `PhaseId` = 13334
WHERE `SpawnId` = 293 AND `AreaTriggerCreatePropertiesId` = 16996;

UPDATE `areatrigger` SET `PhaseId` = 13334
WHERE `SpawnId` = 294 AND `AreaTriggerCreatePropertiesId` = 17000;

UPDATE `areatrigger` SET
  `PosX` = 684.3732, `PosY` = -1919.9564, `PosZ` = 180.53488, `PhaseId` = 13334
WHERE `SpawnId` = 295 AND `AreaTriggerCreatePropertiesId` = 16893;

UPDATE `creature` SET `PhaseId` = 13334
WHERE `guid` = 8000951 AND `id` = 153580 AND `PhaseId` = 13839;
