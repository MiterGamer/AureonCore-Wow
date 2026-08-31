-- Exile's Reach Alliance ship (map 2261): Private Cole is the 2nd quest NPC
-- after Warming Up (56775) -> Stand Your Ground (58209).
-- Spawn guid 42150 was in phase 13753. That phase has no phase_area and no
-- phase_name, so the player never sees him. Rest of the deck is phase 0.
-- Also set StringId so the Stand Your Ground spar script can find him.
SET NAMES utf8mb4;

UPDATE `world`.`creature`
SET `phaseId` = 0, `StringId` = 'q58209_cole'
WHERE `guid` = 42150 AND `id` = 160664 AND `map` = 2261;

UPDATE `world`.`creature_template`
SET `StringId` = 'q58209_cole', `npcflag` = `npcflag` | 2
WHERE `entry` = 160664;

-- Same pattern on the Horde ship (map 2369): Grunt Throg / Stand Your Ground 59927
UPDATE `world`.`creature`
SET `phaseId` = 0, `StringId` = 'q59927_throg'
WHERE `guid` = 42167 AND `id` = 166583 AND `map` = 2369;

UPDATE `world`.`creature_template`
SET `StringId` = 'q59927_throg', `npcflag` = `npcflag` | 2
WHERE `entry` = 166583;
