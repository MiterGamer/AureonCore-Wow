-- Meredy's rescue uses personal, runtime actors. SpawnId 0 cannot resolve
-- a summoned creature in conversation_actors; the AI supplies their GUIDs.
DELETE FROM `conversation_actors` WHERE `ConversationId` IN (11738, 11739);

UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_meredy_huntswell_ritual'
WHERE `entry` = 153211;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_bloodbeak_harpy_roost'
WHERE `entry` = 153964;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_henry_garrick_rescue_helper'
WHERE `entry` = 155197;

DELETE FROM `spell_script_names` WHERE `spell_id` = 313583 AND `ScriptName` = 'spell_exiles_ogre_transformation';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (313583, 'spell_exiles_ogre_transformation');

-- Repair installations where the older Hrun update stopped at the invalid
-- QuestObjectiveId column. Do not assume imported spawn GUID 64049 exists.
DELETE FROM `spawn_tracking_quest_objective` WHERE `SpawnTrackingId` = 1825492;
INSERT INTO `spawn_tracking_quest_objective` (`SpawnTrackingId`, `QuestObjectiveId`, `VerifiedBuild`) VALUES
(1825492, 391940, 54630), (1825492, 397291, 54630);
DELETE FROM `spawn_tracking` WHERE `SpawnTrackingId` = 1825492;
INSERT INTO `spawn_tracking` (`SpawnTrackingId`, `SpawnType`, `SpawnId`, `QuestObjectiveIds`)
SELECT 1825492, 0, `guid`, '391940,397291'
FROM `creature` WHERE `map` = 2175 AND `id` = 156900;
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `map` = 2175 AND `id` = 156900;
