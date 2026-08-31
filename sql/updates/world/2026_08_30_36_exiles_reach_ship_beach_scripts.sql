-- Exile's Reach ship + beach: WCDB ScriptNames (npc_exiles_reach_*) are not
-- registered in vanilla TrinityCore. Wire the TC names and the StringIds the
-- scripts look up. Beach crash NPCs were in phases 13845/15279 with no
-- phase_area, so they were invisible (same class of bug as Cole on the ship).
SET NAMES utf8mb4;

-- Ship captains / crew
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_captain_garrick' WHERE `entry` = 156280;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_warlord_grimaxe_lower_ship' WHERE `entry` = 166573;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_warlord_grimaxe_upper_ship' WHERE `entry` = 166827;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_crew_ship' WHERE `entry` IN (157042,157043,157044,157046,166585,166590,166794,166799);
UPDATE `world`.`creature_template` SET `ScriptName` = '' WHERE `entry` = 160737;

-- Beach
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_captain_garrick_beach' WHERE `entry` = 156626;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_warlord_grimaxe_beach' WHERE `entry` = 166782;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_healed_by_leader_alliance_beach' WHERE `entry` IN (149917,156622);
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_healed_by_leader_horde_beach' WHERE `entry` IN (166784,166800);
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_bjorn_stouthands_beach_laying' WHERE `entry` = 156609;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_austin_huxworth_beach_laying' WHERE `entry` = 156610;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_kee_la_beach_laying' WHERE `entry` = 156612;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_bo_beach_laying' WHERE `entry` = 166786;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_mithran_dawntracker_beach_laying' WHERE `entry` = 166791;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_lana_jordan_beach_laying' WHERE `entry` = 166796;

-- Ship StringIds (Alliance)
UPDATE `world`.`creature` SET `StringId` = 'q56775_garrick_lower_deck' WHERE `guid` = 42159 AND `id` = 156280;
UPDATE `world`.`creature` SET `StringId` = 'q58208_richter' WHERE `guid` = 42161 AND `id` = 157042;
UPDATE `world`.`creature` SET `StringId` = 'q58208_keela' WHERE `guid` = 42162 AND `id` = 157043;
UPDATE `world`.`creature` SET `StringId` = 'q58208_bjorn' WHERE `guid` = 42164 AND `id` = 157044;
UPDATE `world`.`creature` SET `StringId` = 'q58208_austin' WHERE `guid` = 42160 AND `id` = 157046;

-- Ship StringIds (Horde)
UPDATE `world`.`creature` SET `StringId` = 'q59926_grimaxe_lower_deck' WHERE `guid` = 42172 AND `id` = 166573;
UPDATE `world`.`creature` SET `StringId` = 'q59928_bo' WHERE `guid` = 42174 AND `id` = 166585;
UPDATE `world`.`creature` SET `StringId` = 'q59928_mithdran' WHERE `guid` = 42175 AND `id` = 166590;
UPDATE `world`.`creature` SET `StringId` = 'q59928_lana' WHERE `guid` = 42166 AND `id` = 166794;
UPDATE `world`.`creature` SET `StringId` = 'q59928_jinhake' WHERE `guid` = 42173 AND `id` = 166799;

-- Upper-deck captains (needed for Warming Up clone + Brace for Impact)
DELETE FROM `world`.`creature` WHERE `guid` IN (730212,730213);
INSERT INTO `world`.`creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
(730212, 156280, 2261, 10424, 10639, '0', 0, 0, 0, -1, 0, 0, 35.5643, -1.19837, 12.1479, 3.3272014, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q58208_garrick', 0),
(730213, 166827, 2369, 10424, 13377, '0', 0, 0, 0, -1, 0, 0, 25.5237,  0.283005, 26.5455, 3.3526998, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q59928_grimaxe', 0);

-- Beach: make the crash-landing set visible (phase 0) + StringIds for first aid
UPDATE `world`.`creature` SET `PhaseId` = 0, `StringId` = 'private_cole_beach' WHERE `guid` = 42176 AND `id` = 149917;
UPDATE `world`.`creature` SET `PhaseId` = 0, `StringId` = 'quartermaster_richter_beach' WHERE `guid` = 42228 AND `id` = 156622;
UPDATE `world`.`creature` SET `PhaseId` = 0 WHERE `guid` IN (42226,42227,42225) AND `id` IN (156609,156610,156612);
UPDATE `world`.`creature` SET `PhaseId` = 0 WHERE `guid` = 42178 AND `id` = 156626;

UPDATE `world`.`creature` SET `PhaseId` = 0, `StringId` = 'grunt_throg_beach' WHERE `guid` = 42184 AND `id` = 166784;
UPDATE `world`.`creature` SET `PhaseId` = 0, `StringId` = 'jin_hake_beach' WHERE `guid` = 42185 AND `id` = 166800;
UPDATE `world`.`creature` SET `PhaseId` = 0, `StringId` = 'bo_beach' WHERE `guid` = 42181 AND `id` = 166786;
UPDATE `world`.`creature` SET `PhaseId` = 0, `StringId` = 'mithran_beach' WHERE `guid` = 42182 AND `id` = 166791;
UPDATE `world`.`creature` SET `PhaseId` = 0 WHERE `guid` = 42183 AND `id` = 166796;
UPDATE `world`.`creature` SET `PhaseId` = 0 WHERE `guid` = 42179 AND `id` = 166782;

-- 303064 / 325107 use TARGET 142; the compiled hook only matches 303065 / 325108
DELETE FROM `world`.`spell_script_names` WHERE `spell_id` IN (303064,325107) AND `ScriptName` = 'spell_summon_sparring_partner';
