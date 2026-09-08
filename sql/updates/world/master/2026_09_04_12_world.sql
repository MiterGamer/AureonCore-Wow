-- Exile's Reach follow-up from sniff 19-16-21 + wiki.gg
-- Book 346273 in the lake (59352). Gor'groth 153580. Areatriggers 16996/17000/16893.
-- Phase 13334 was hiding unphased ogres/catapults; drop it. Put citadel world in 13839.
-- Cole / 160664 / 13753 untouched.
SET NAMES utf8mb4;

-- 298241 already turns the player into an ogre. Extra non-cosmetic 13334 hid phase-0 ogres.
DELETE FROM `phase_area` WHERE `PhaseId` = 13334 AND `AreaId` = 10424;
DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 13334 AND `SourceEntry` = 10424
  AND `Comment` LIKE 'Sniff 19-16-21:%';

-- Citadel mobs/GOs must share 13839 or they vanish while that phase is on.
UPDATE `creature` SET `PhaseId` = 13839
WHERE `map` = 2175 AND `id` IN (153239, 153242, 153581, 153582, 153583, 154103);
UPDATE `gameobject` SET `PhaseId` = 13839 WHERE `guid` BETWEEN 8000943 AND 8000946 AND `id` = 326651;

UPDATE `creature_template` SET `npcflag` = `npcflag` | 4096 WHERE `entry` IN (156800, 167213);
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_quartermaster_repair_exiles' WHERE `entry` IN (156800, 167213);
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_ogre_disguise_prisoner' WHERE `entry` IN (153566, 245399);

-- Meredy's Spellbook. Sniff 19:17:22 CreateObject1 + QUERY_GAME_OBJECT_RESPONSE.
DELETE FROM `gameobject_template` WHERE `entry` = 346273;
INSERT INTO `gameobject_template`
(`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`,
 `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`,
 `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`,
 `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`,
 `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `RequiredLevel`,
 `AIName`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
(346273, 3, 15749, 'Meredy''s Spellbook', 'questinteract', 'Opening', '', 1,
 1691, 346273, 1, 0, 0, 0, 0, 0, 59352, 0,
 0, 0, 0, 0, 23645, 0, 0, 0, 0, 0,
 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 101440, 1, 0, 0, 0, 741, 1,
 '', '', 'q59352_meredy_spellbook', 0);

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` = 346273;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(346273, 0, 175975, 0);

DELETE FROM `gameobject_loot_template` WHERE `Entry` = 346273;
INSERT INTO `gameobject_loot_template`
(`Entry`, `ItemType`, `Item`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(346273, 0, 175975, 100, 1, 1, 0, 1, 1, 'Meredy''s Spell Book');

DELETE FROM `gameobject` WHERE `guid` = 8000950;
INSERT INTO `gameobject`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`,
 `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`,
 `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
(8000950, 346273, 2175, 10424, 10529, '0', 0, 0, 0, -1, 309.97397, -2275.1633, 77.26771, 2, 0, 0, 0, 1, 120, 255, 1, '', 'q59352_meredy_spellbook', 0);

-- Gor'groth, cooking pit. Sniff 19:23:09 CreateObject1.
DELETE FROM `creature` WHERE `guid` = 8000951;
INSERT INTO `creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
(8000951, 153580, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 587.00696, -2063.2935, 159.61661, 3.5194473, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55981_gorgroth', 0);

-- Type 19 enter-credits from sniff 19:22:57 / 19:23:11 / 19:24:07.
DELETE FROM `areatrigger_template` WHERE `Id` IN (16996, 17000, 16893) AND `IsCustom` = 1;
INSERT INTO `areatrigger_template` (`Id`, `IsCustom`, `Flags`, `ActionSetId`, `ActionSetFlags`, `VerifiedBuild`) VALUES
(16996, 1, 0, 0, 0, 0),
(17000, 1, 0, 0, 0, 0),
(16893, 1, 0, 0, 0, 0);

DELETE FROM `areatrigger_create_properties` WHERE `Id` IN (16996, 17000, 16893) AND `IsCustom` = 1;
INSERT INTO `areatrigger_create_properties`
(`Id`, `IsCustom`, `AreaTriggerId`, `IsAreatriggerCustom`, `Flags`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`,
 `AnimId`, `AnimKitId`, `DecalPropertiesId`, `SpellForVisuals`, `TimeToTargetScale`, `Speed`, `SpeedIsTime`,
 `Shape`, `ShapeData0`, `ShapeData1`, `ShapeData2`, `ShapeData3`, `ShapeData4`, `ShapeData5`, `ShapeData6`, `ShapeData7`,
 `ScriptName`, `VerifiedBuild`)
VALUES
(16996, 1, 16996, 1, 0, 0, 0, 0, 0, -1, 0, 0, NULL, 0, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 'at_darkmaul_quest_objective', 0),
(17000, 1, 17000, 1, 0, 0, 0, 0, 0, -1, 0, 0, NULL, 0, 1, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 'at_darkmaul_quest_objective', 0),
(16893, 1, 16893, 1, 0, 0, 0, 0, 0, -1, 0, 0, NULL, 0, 1, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 'at_darkmaul_quest_objective', 0);

DELETE FROM `areatrigger` WHERE `SpawnId` IN (293, 294, 295);
INSERT INTO `areatrigger`
(`SpawnId`, `AreaTriggerCreatePropertiesId`, `IsCustom`, `MapId`, `SpawnDifficulties`, `PosX`, `PosY`, `PosZ`, `Orientation`,
 `PhaseUseFlags`, `PhaseId`, `PhaseGroup`, `ScriptName`, `Comment`, `VerifiedBuild`)
VALUES
(293, 16996, 1, 2175, '0', 420.0, -2075.0, 126.5, 0, 0, 13839, 0, '', '55981 enter Darkmaul Citadel', 0),
(294, 17000, 1, 2175, '0', 587.00696, -2063.2935, 159.61661, 0, 0, 13839, 0, '', '55981 ogre cooking area', 0),
(295, 16893, 1, 2175, '0', 680.0, -1925.0, 176.0, 0, 0, 13839, 0, '', '55981 citadel entrance', 0);
