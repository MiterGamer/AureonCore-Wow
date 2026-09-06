-- Darkmaul Citadel never appeared in Dungeon Finder.
-- DBErrors: Failed to load dungeon Finsterbrecherzitadelle (Id: 2043), cant find areatrigger for map 2236.
-- Sniff 19-16-21: CMSG_DF_JOIN Slot 16779259 (LFG 2043), SMSG_NEW_WORLD map 2236
-- at 911.1528, -1765.6423, 181.19034, o 3.6743245.
SET NAMES utf8mb4;

INSERT INTO `lfg_dungeon_template`
(`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`)
VALUES
(2043, 'Darkmaul Citadel', 911.1528, -1765.6423, 181.19034, 3.6743245, 0, 69587)
ON DUPLICATE KEY UPDATE
  `position_x` = VALUES(`position_x`),
  `position_y` = VALUES(`position_y`),
  `position_z` = VALUES(`position_z`),
  `orientation` = VALUES(`orientation`),
  `VerifiedBuild` = VALUES(`VerifiedBuild`);
