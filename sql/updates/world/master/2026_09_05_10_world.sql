-- After ogre disguise drops, hub NPCs were all in phase 13839.
-- Sniff 19-16-21:
--   19:24:15 13839 added (55981 complete) — inner Jaina/Garrick/Henry, chained Kelra
--   19:32:25 13843 added (55990 complete) — free Kelra 156965
--   19:40:33 13839+13843 removed, 13417 added — post-dungeon Jaina 245686 / Kalecgos 244389
-- Ogres/catapults must stay visible during the disguise (phase 0).
-- Dungeon 2236 companions from CreateObject1 19:33:21.
SET NAMES utf8mb4;

UPDATE `conditions`
SET `ConditionValue2` = 66,
    `Comment` = 'Sniff 19-16-21: phase 13839 if 55981 complete | rewarded'
WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 13839 AND `SourceEntry` = 10424
  AND `ConditionTypeOrReference` = 47 AND `ConditionValue1` = 55981;

UPDATE `creature` SET `PhaseId` = 0
WHERE `map` = 2175 AND `id` IN (153239, 153242, 153581, 153582, 153583, 154103)
  AND `PhaseId` = 13839;

UPDATE `gameobject` SET `PhaseId` = 0
WHERE `guid` BETWEEN 8000943 AND 8000946 AND `id` = 326651 AND `PhaseId` = 13839;

UPDATE `creature` SET `PhaseId` = 13843 WHERE `guid` = 8000939 AND `id` = 156965;
UPDATE `creature` SET `PhaseId` = 13417 WHERE `guid` = 8000940 AND `id` = 245686;
UPDATE `creature` SET `PhaseId` = 13417 WHERE `guid` = 8000941 AND `id` = 244389;

INSERT IGNORE INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(10424, 13843, 'Captain Kelra freed in Darkmaul Citadel'),
(10424, 13417, 'Alliance heroes after Darkmaul Citadel');

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` IN (13843, 13417) AND `SourceEntry` = 10424
  AND `Comment` LIKE 'Sniff 19-16-21:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(26,13843,10424,0,0,47,0,55990,66,0,'',0,0,0,'','Sniff 19-16-21: phase 13843 if 55990 complete | rewarded'),
(26,13417,10424,0,0,47,0,55992,66,0,'',0,0,0,'','Sniff 19-16-21: phase 13417 if 55992 complete | rewarded');

-- Chained Kelra 156954 stays in 13839 but hides once 55990 is complete (free Kelra takes her place).
DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 32 AND `SourceGroup` = 3 AND `SourceEntry` = 156954
  AND `Comment` LIKE 'Sniff 19-16-21:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(32,3,156954,0,0,47,0,55990,66,0,'',1,0,0,'','Sniff 19-16-21: hide chained Kelra if 55990 complete | rewarded');

-- Leave-gossip only after the ritual objective, not as soon as 55992 is picked up.
DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 39497 AND `SourceEntry` = 0
  AND `Comment` LIKE 'Sniff 19-16-21:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(15,39497,0,0,0,47,0,55992,8,0,'',0,0,0,'','Sniff 19-16-21: leave Darkmaul gossip if 55992 incomplete'),
(15,39497,0,0,0,48,0,394065,0,0,'',0,0,0,'','Sniff 19-16-21: leave Darkmaul gossip after ritual 89016');

DELETE FROM `creature` WHERE `guid` IN (8000975, 8000976, 8000977);
INSERT INTO `creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
(8000975, 161350, 2236, 10581, 10581, '150', 0, 0, 0, -1, 0, 0, 880.7118, -1781.1875, 181.34094, 3.6419549, 7200, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'dc_garrick', 69587),
(8000976, 161504, 2236, 10581, 10581, '150', 0, 0, 0, -1, 0, 0, 886.184, -1780.1771, 181.27142, 3.5828581, 7200, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'dc_henry', 69587),
(8000977, 245401, 2236, 10581, 10581, '150', 0, 0, 0, -1, 0, 0, 882.92883, -1783.6754, 181.34094, 3.6419549, 7200, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'dc_jaina', 69587);
