-- #704 Who Lurks in the Pit: re-insert missing rows for Hrun (SpawnTrackingID 1825492).
-- 1825492 was deleted from all 3 spawn_tracking tables in 2025_01_05_01_world.sql
-- (replaced by cocoon IDs 1864694-1864796) and never fully restored:
--   spawn_tracking_template     → restored in 2025_05_24_06_world.sql
--   spawn_tracking_quest_objective → NOT restored (deleted at line 21)
--   spawn_tracking              → NOT restored (deleted at line 29)
-- Without these rows the client lacks spawn↔tracking-ID mapping, so
-- per-player quest-based visibility fails (one player sees Hrun, the other does not).
SET NAMES utf8mb4;

-- restore quest-objective binding (links tracking ID to quest 55639 / 59949 objectives)
DELETE FROM `spawn_tracking_quest_objective` WHERE `SpawnTrackingId` = 1825492;
INSERT INTO `spawn_tracking_quest_objective`
(`SpawnTrackingId`, `QuestObjectiveId`, `VerifiedBuild`)
VALUES
(1825492, 391940, 54630),
(1825492, 397291, 54630);

-- restore spawn-to-tracking mapping (SpawnId 64049 = creature 156900 Hrun)
DELETE FROM `spawn_tracking` WHERE `SpawnTrackingId` = 1825492;
INSERT INTO `spawn_tracking`
(`SpawnTrackingId`, `SpawnType`, `SpawnId`, `QuestObjectiveId`)
VALUES
(1825492, 0, 64049, 391940),
(1825492, 0, 64049, 397291);

-- Hrun must respawn after death so other party members can kill him too.
-- Default spawntimesecs is 0 (never respawn). Set to 120 s like other quest bosses.
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `guid` = 64049 AND `id` = 156900;
