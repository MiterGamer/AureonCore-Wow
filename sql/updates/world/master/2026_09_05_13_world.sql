-- Quest 55990 Controlling their Stones (sniff 19-16-21).
-- Visible ritual beams are creature 161306 channeling 314144 at chained Kelra.
-- Runestone GO 339865 is type 10; player casts 314180 (OPEN_LOCK) on it.
SET NAMES utf8mb4;

UPDATE `gameobject_template`
SET `Data10` = 314180
WHERE `entry` = 339865 AND `Data10` = 0;

UPDATE `gameobject`
SET `orientation` = 6.1296496, `rotation2` = -0.07669258, `rotation3` = 0.9970548
WHERE `guid` = 8000947 AND `id` = 339865;
UPDATE `gameobject`
SET `orientation` = 4.302524, `rotation2` = -0.8362074, `rotation3` = 0.5484134
WHERE `guid` = 8000948 AND `id` = 339865;
UPDATE `gameobject`
SET `orientation` = 5.4742947, `rotation2` = -0.3935089, `rotation3` = 0.91932076
WHERE `guid` = 8000949 AND `id` = 339865;

UPDATE `creature_template`
SET `ScriptName` = 'npc_ogre_runestone_stalker',
    `unit_flags` = 256
WHERE `entry` = 161306;

INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(314180, 'spell_disable_ogre_runestone');

INSERT IGNORE INTO `creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
(8000980, 161306, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 701.96704, -1869.1146, 186.59119, 3.5557222, 120, 0, 0, 100, 0, NULL, 256, NULL, NULL, '', 'q55990_rune_beam_1', 69587),
(8000981, 161306, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 710.9358, -1862.2274, 186.59119, 3.2164285, 120, 0, 0, 100, 0, NULL, 256, NULL, NULL, '', 'q55990_rune_beam_2', 69587),
(8000982, 161306, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 713.19965, -1873.5712, 186.59119, 4.3882003, 120, 0, 0, 100, 0, NULL, 256, NULL, NULL, '', 'q55990_rune_beam_3', 69587);

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 32 AND `SourceGroup` = 3 AND `SourceEntry` = 161306
  AND `Comment` LIKE 'Sniff 19-16-21:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(32,3,161306,0,0,47,0,55990,66,0,'',1,0,0,'','Sniff 19-16-21: hide rune beams if 55990 complete | rewarded');
