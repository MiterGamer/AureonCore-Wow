-- Emergency First Aid (54951): treated survivors stay face-down.
-- Credit already works (KilledMonsterCredit). Standing copies 151088/151089/154170
-- sit in phase 15274 with no phase_area, so UpdateVisibilityForPlayer has nothing
-- to swap in. Conversations 11685/12127/12128/12043 fail: missing actor Idx 0.
SET NAMES utf8mb4;

-- Standing survivors: same phase as the beach, same coords as the laying copies
-- so the swap looks like they stand up in place.
UPDATE `world`.`creature`
SET `PhaseId` = 0,
    `position_x` = -448.918, `position_y` = -2606.02, `position_z` = 0.602431, `orientation` = 1.22242,
    `StringId` = 'kee_la_beach'
WHERE `guid` = 42189 AND `id` = 151088;

UPDATE `world`.`creature`
SET `PhaseId` = 0,
    `position_x` = -420.587, `position_y` = -2600.04, `position_z` = 0.551657, `orientation` = 3.63304,
    `StringId` = 'bjorn_stouthands_beach'
WHERE `guid` = 42190 AND `id` = 151089;

UPDATE `world`.`creature`
SET `PhaseId` = 0,
    `position_x` = -428.672, `position_y` = -2593.88, `position_z` = 0.151311, `orientation` = 1.43917,
    `StringId` = 'austin_huxworth_beach'
WHERE `guid` = 42191 AND `id` = 154170;

UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_kee_la_beach_standing' WHERE `entry` = 151088;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_bjorn_stouthands_beach_standing' WHERE `entry` = 151089;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_austin_huxworth_beach_standing' WHERE `entry` = 154170;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_bo_beach_standing' WHERE `entry` = 166787;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_mithdran_dawntracker_beach_standing' WHERE `entry` = 166792;
UPDATE `world`.`creature_template` SET `ScriptName` = 'npc_lana_jordan_beach_standing' WHERE `entry` = 166797;

UPDATE `world`.`creature` SET `StringId` = 'lana_jordan_beach' WHERE `guid` = 42183 AND `id` = 166796;

-- Spawn tracking: laying visible until that objective is done, standing after.
-- 9000101 Bjorn (388448), 9000102 Kee-La (391858), 9000103 Austin (391859)
DELETE FROM `world`.`spawn_tracking_state` WHERE `SpawnType` = 0 AND `SpawnId` IN (42226, 42190, 42225, 42189, 42227, 42191);
DELETE FROM `world`.`spawn_tracking` WHERE `SpawnTrackingId` IN (9000101, 9000102, 9000103);
DELETE FROM `world`.`spawn_tracking_quest_objective` WHERE `SpawnTrackingId` IN (9000101, 9000102, 9000103);
DELETE FROM `world`.`spawn_tracking_template` WHERE `SpawnTrackingId` IN (9000101, 9000102, 9000103);

INSERT INTO `world`.`spawn_tracking_template`
(`SpawnTrackingId`, `MapId`, `PhaseId`, `PhaseGroup`, `PhaseUseFlags`, `VerifiedBuild`)
VALUES
(9000101, 2175, 0, 0, 0, 0),
(9000102, 2175, 0, 0, 0, 0),
(9000103, 2175, 0, 0, 0, 0);

INSERT INTO `world`.`spawn_tracking_quest_objective`
(`SpawnTrackingId`, `QuestObjectiveId`, `VerifiedBuild`)
VALUES
(9000101, 388448, 0),
(9000102, 391858, 0),
(9000103, 391859, 0);

INSERT INTO `world`.`spawn_tracking`
(`SpawnTrackingId`, `SpawnType`, `SpawnId`, `QuestObjectiveIds`)
VALUES
(9000101, 0, 42226, '388448'),
(9000101, 0, 42190, '388448'),
(9000102, 0, 42225, '391858'),
(9000102, 0, 42189, '391858'),
(9000103, 0, 42227, '391859'),
(9000103, 0, 42191, '391859');

-- State 0 None / 1 Active / 2 Complete
INSERT INTO `world`.`spawn_tracking_state`
(`SpawnType`, `SpawnId`, `State`, `Visible`, `StateSpellVisualId`, `StateAnimId`, `StateAnimKitId`, `StateWorldEffects`)
VALUES
-- Bjorn laying
(0, 42226, 0, 1, NULL, NULL, NULL, NULL),
(0, 42226, 1, 1, NULL, NULL, NULL, NULL),
(0, 42226, 2, 0, NULL, NULL, NULL, NULL),
-- Bjorn standing
(0, 42190, 0, 0, NULL, NULL, NULL, NULL),
(0, 42190, 1, 0, NULL, NULL, NULL, NULL),
(0, 42190, 2, 1, NULL, NULL, NULL, NULL),
-- Kee-La laying
(0, 42225, 0, 1, NULL, NULL, NULL, NULL),
(0, 42225, 1, 1, NULL, NULL, NULL, NULL),
(0, 42225, 2, 0, NULL, NULL, NULL, NULL),
-- Kee-La standing
(0, 42189, 0, 0, NULL, NULL, NULL, NULL),
(0, 42189, 1, 0, NULL, NULL, NULL, NULL),
(0, 42189, 2, 1, NULL, NULL, NULL, NULL),
-- Austin laying
(0, 42227, 0, 1, NULL, NULL, NULL, NULL),
(0, 42227, 1, 1, NULL, NULL, NULL, NULL),
(0, 42227, 2, 0, NULL, NULL, NULL, NULL),
-- Austin standing
(0, 42191, 0, 0, NULL, NULL, NULL, NULL),
(0, 42191, 1, 0, NULL, NULL, NULL, NULL),
(0, 42191, 2, 1, NULL, NULL, NULL, NULL);

-- Heal + Murloc Mania conversations: actor 0 = NPC spawn, actor 1 = player
DELETE FROM `world`.`conversation_actors` WHERE `ConversationId` IN (11685, 12127, 12128, 12043, 14432);
INSERT INTO `world`.`conversation_actors`
(`ConversationId`, `ConversationActorId`, `ConversationActorGuid`,
 `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`, `ActivePlayerObject`, `VerifiedBuild`)
VALUES
(11685, 0, 42226, 0, 0, 0, 0, 0, 0),
(11685, 0,     0, 1, 0, 0, 0, 1, 0),
(12127, 0, 42225, 0, 0, 0, 0, 0, 0),
(12127, 0,     0, 1, 0, 0, 0, 1, 0),
(12128, 0, 42227, 0, 0, 0, 0, 0, 0),
(12128, 0,     0, 1, 0, 0, 0, 1, 0),
(12043, 0, 42178, 0, 0, 0, 0, 0, 0),
(12043, 0,     0, 1, 0, 0, 0, 1, 0),
(14432, 0, 42179, 0, 0, 0, 0, 0, 0),
(14432, 0,     0, 1, 0, 0, 0, 1, 0);
