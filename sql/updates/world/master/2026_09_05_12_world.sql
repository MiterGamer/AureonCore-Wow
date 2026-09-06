-- Darkmaul Citadel companions (sniff 19-16-21 CreateObject1 at 19:33:21).
-- FactionTemplate 1665, not 35. They follow the player and fight Tunk / ritual.
SET NAMES utf8mb4;

UPDATE `creature_template`
SET `ScriptName` = 'npc_darkmaul_companion',
    `faction` = 1665
WHERE `entry` IN (161350, 161504, 245401);
