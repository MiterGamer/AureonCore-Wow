-- Who Lurks in the Pit: repair Hrun for imports with different spawn GUIDs.
-- The previous fix targeted the old GUID 64049, while this database uses a
-- different GUID and retained a two-hour persisted respawn entry.
SET NAMES utf8mb4;

UPDATE `creature`
SET `spawntimesecs` = 120
WHERE `map` = 2175
  AND `id` = 156900;

-- Persisted character respawns are deliberately not modified by a world
-- migration: the characters database name is configurable. Existing timers
-- expire normally; subsequent deaths use the corrected 120 second delay.

DELETE FROM `spawn_tracking`
WHERE `SpawnTrackingId` = 1825492;

INSERT INTO `spawn_tracking`
(`SpawnTrackingId`, `SpawnType`, `SpawnId`, `QuestObjectiveIds`)
SELECT 1825492, 0, `guid`, '391940,397291'
FROM `creature`
WHERE `map` = 2175
  AND `id` = 156900;
