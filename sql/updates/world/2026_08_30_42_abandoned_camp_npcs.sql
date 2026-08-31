-- Abandoned Camp (area 10452): Garrick / Alaria / Grimaxe / Won'sa invisible.
-- Same class of bug as Cole and the beach first-aid NPCs: WCDB phases
-- 13758/16770/15298/16769 have no phase_area. Areatrigger ScriptNames empty.
-- Follower 165359 has no TC script. Beach captains missing q54952/q59931 StringIds.
SET NAMES utf8mb4;

-- Alliance camp (54952 turn-in + cooking)
UPDATE `world`.`creature` SET `PhaseId` = 0, `StringId` = 'garrick_camp' WHERE `guid` = 42259 AND `id` = 156651;
UPDATE `world`.`creature` SET `PhaseId` = 0, `StringId` = 'alaria_standing_abandoned_camp' WHERE `guid` = 42332 AND `id` = 156607;

-- Horde camp (59931)
UPDATE `world`.`creature` SET `PhaseId` = 0, `StringId` = 'grimaxe_camp' WHERE `guid` = 42254 AND `id` = 166906;
UPDATE `world`.`creature` SET `PhaseId` = 0, `StringId` = 'wonza_standing_abandoned_camp' WHERE `guid` = 42255 AND `id` = 166854;

-- Beach captains: source for the escort guardian summon
UPDATE `world`.`creature` SET `StringId` = 'q54952_garrick' WHERE `guid` = 42178 AND `id` = 156626;
UPDATE `world`.`creature` SET `StringId` = 'q59931_grimaxe' WHERE `guid` = 42179 AND `id` = 166782;

-- Escort followers
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_garrick_summoned_beach' WHERE `entry` = 165359;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_grimaxe_summoned_beach' WHERE `entry` = 166805;

-- WCDB names are not in TrinityCore; questgiver flag is enough
UPDATE `world`.`creature_template` SET `ScriptName` = '' WHERE `entry` IN (156651, 166906, 156607, 166854, 175030, 175031)
  AND `ScriptName` LIKE 'npc_exiles_reach_abandoned_camp_%';

-- Camp areatriggers (quest credit ping + missing-follower re-summon)
UPDATE `world`.`areatrigger` SET `ScriptName` = 'areatrigger_find_the_lost_expedition' WHERE `SpawnId` = 23;
UPDATE `world`.`areatrigger` SET `ScriptName` = 'areatrigger_find_the_lost_expedition_follower' WHERE `SpawnId` = 25;
UPDATE `world`.`areatrigger_create_properties` SET `ScriptName` = 'areatrigger_find_the_lost_expedition' WHERE `Id` = 43 AND `IsCustom` = 1;
UPDATE `world`.`areatrigger_create_properties` SET `ScriptName` = 'areatrigger_find_the_lost_expedition_follower' WHERE `Id` = 24 AND `IsCustom` = 1;
