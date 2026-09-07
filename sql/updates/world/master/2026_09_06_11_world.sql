-- Exile's Reach: repair quest NPC script and StringId values by entry/map,
-- because spawn GUIDs differ between database imports.
SET NAMES utf8mb4;

UPDATE `creature_template`
SET `ScriptName` = 'npc_warlord_grimaxe_lower_ship'
WHERE `entry` = 166573;

UPDATE `creature`
SET `StringId` = CASE `id`
    WHEN 156609 THEN 'bjorn_stouthands_beach'
    WHEN 156610 THEN 'austin_huxworth_beach'
    WHEN 156612 THEN 'kee_la_beach'
    WHEN 166786 THEN 'bo_beach'
    WHEN 166791 THEN 'mithran_beach'
    WHEN 166796 THEN 'lana_jordan_beach'
END
WHERE `map` = 2175
  AND `zoneId` = 10424
  AND `areaId` = 10453
  AND `id` IN (156609, 156610, 156612, 166786, 166791, 166796);