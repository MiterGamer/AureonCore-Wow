-- Darkmaul Citadel: enforce the Gor'groth boss script after imported creature
-- rows were found with an empty per-spawn ScriptName.
SET NAMES utf8mb4;

UPDATE `creature_template`
SET `AIName` = '',
    `ScriptName` = 'boss_gorgroth'
WHERE `entry` = 156814;

UPDATE `creature`
SET `ScriptName` = ''
WHERE `map` = 2236
  AND `id` = 156814;