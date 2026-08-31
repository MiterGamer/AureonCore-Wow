-- 316099 / 342938 do not exist in this build's Spell.db2 (BFA/SL ranks).
-- Keep 30108 assigned; drop the nonexistent spell IDs we added earlier.
SET NAMES utf8mb4;

DELETE FROM `world`.`spell_script_names`
WHERE `ScriptName` = 'spell_warl_unstable_affliction'
  AND `spell_id` IN (316099, 342938);

-- Rebuild GO quaternions from orientation (unit quaternion on Z axis)
UPDATE `world`.`gameobject`
SET
  `rotation0` = 0,
  `rotation1` = 0,
  `rotation2` = SIN(`orientation` / 2),
  `rotation3` = COS(`orientation` / 2)
WHERE `guid` IN (220129, 220123, 220121, 220176, 220155, 220207, 220193);
