-- Who Lurks in the Pit: repair Hrun for imports with different spawn GUIDs.
-- The previous fix targeted the old GUID 64049, while this database uses a
-- different GUID and retained a two-hour persisted respawn entry.
SET NAMES utf8mb4;

UPDATE `creature`
SET `spawntimesecs` = 120
WHERE `map` = 2175
  AND `id` = 156900;

DELETE FROM `tc_characters`.`respawn`
WHERE `type` = 0
  AND `spawnId` IN (SELECT `guid` FROM `creature` WHERE `map` = 2175 AND `id` = 156900);

DELETE FROM `spawn_tracking`
WHERE `SpawnTrackingId` = 1825492;

INSERT INTO `spawn_tracking`
(`SpawnTrackingId`, `SpawnType`, `SpawnId`, `QuestObjectiveIds`)
SELECT 1825492, 0, `guid`, '391940,397291'
FROM `creature`
WHERE `map` = 2175
  AND `id` = 156900;