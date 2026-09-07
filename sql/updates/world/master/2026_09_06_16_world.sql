-- Exile's Reach: restore the missing Priest class quest after Who Lurks in
-- the Pit. The quest and objectives existed, but both questgiver links and
-- the final NPC spawns were missing from this database import.
SET NAMES utf8mb4;

INSERT INTO `quest_template_addon`
(`ID`, `AllowableClasses`, `PrevQuestID`)
VALUES
(58953, 16, 55639),
(59961, 16, 59949)
ON DUPLICATE KEY UPDATE
    `AllowableClasses` = VALUES(`AllowableClasses`),
    `PrevQuestID` = VALUES(`PrevQuestID`);

DELETE FROM `creature_queststarter` WHERE `quest` IN (58953, 59961);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(156801, 58953, 0),
(167216, 59961, 0);

DELETE FROM `creature_questender` WHERE `quest` IN (58953, 59961);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(163108, 58953, 0),
(167188, 59961, 0);

UPDATE `creature_template`
SET `npcflag` = `npcflag` | 2
WHERE `entry` IN (163108, 167188);

DELETE FROM `creature`
WHERE `guid` IN (8000990, 8000991)
  AND `id` IN (163108, 167188);

INSERT INTO `creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
(8000990, 163108, 2175, 10424, 10529, '0', 0, 15011, 0, -1, 0, 0, 187.064, -2279.73, 81.9311, 3.14,
 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q58953_branven', 0),
(8000991, 167188, 2175, 10424, 10529, '0', 0, 15447, 0, -1, 0, 0, 183.418, -2278.02, 81.9317, 0,
 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q59961_shazul', 0);