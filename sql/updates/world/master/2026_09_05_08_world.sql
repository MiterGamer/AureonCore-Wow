-- 55981 cooking pit from sniff 19-16-21.
-- Credit 17000 at player 563.84,-2072.22,158.23 (not Gor'groth 587,-2063).
-- Radius 30 covers both sniffed credit and Gor'groth spawn (24.7 yd).
-- 13839 must stay on while 55981 is incomplete so chef/ogres/catapults/houses show.
-- Henry 153565 is the third chained prisoner (CreateObject2 19:22:44).
SET NAMES utf8mb4;

UPDATE `conditions`
SET `ConditionValue2` = 74,
    `Comment` = 'Sniff 19-16-21: phase 13839 if 55981 in progress | complete | rewarded'
WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 13839 AND `SourceEntry` = 10424
  AND `ConditionTypeOrReference` = 47 AND `ConditionValue1` = 55981 AND `ConditionValue2` = 66;

UPDATE `areatrigger` SET
  `PosX` = 563.8436, `PosY` = -2072.223, `PosZ` = 158.2337
WHERE `SpawnId` = 294 AND `AreaTriggerCreatePropertiesId` = 17000;

UPDATE `areatrigger_create_properties` SET `ShapeData0` = 30
WHERE `Id` = 17000 AND `IsCustom` = 1 AND `ShapeData0` = 22;

UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_ogre_disguise_prisoner'
WHERE `entry` = 153565;
