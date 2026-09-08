-- Aureon Core 0.2.4: Freeing the Light (54933), invisible helpers must not melee.
-- Death recap identifies InvisBunny; these four templates have one spawn each
-- around Lightspawn on map 2175, hostile faction 14, and no AI/script binding.
-- Preserve their faction, visuals, phases and quest/spell targeting.
UPDATE `creature_template`
SET `AIName` = 'NullCreatureAI'
WHERE `entry` IN (155572, 164022, 164025, 164026)
  AND `AIName` = '' AND `ScriptName` = '';
