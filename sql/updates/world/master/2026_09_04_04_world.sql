-- 55639: Ralia auto-boards the killer and rides out; credit the ride objective at the pit mouth.
-- Previous SAI required spellclick, and WAYPOINT_ENDED with pointId 0 never fired (last node is 5).
-- Do not set WP escort quest 55639: GroupEventHappens only sets explored, it does not credit 156929.
SET NAMES utf8mb4;

DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = 156929;
INSERT INTO `smart_scripts`
(`entryorguid`, `source_type`, `id`, `link`, `Difficulties`,
 `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
 `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`,
 `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `action_param7`,
 `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`,
 `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(156929, 0, 0, 1, '', 54, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Just Summoned - Talk 0'),
(156929, 0, 1, 2, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Just Summoned - Disable gravity'),
(156929, 0, 2, 3, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 141, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Just Summoned - Set hover'),
(156929, 0, 3, 0, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 67, 1, 2000, 2000, 0, 0, 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Just Summoned - Timed event 1 in 2s'),
(156929, 0, 4, 5, '', 59, 0, 100, 0, 1, 0, 0, 0, 0, 156, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - Timed 1 - Board owner/summoner'),
(156929, 0, 5, 6, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 156, 0, 0, 0, 0, 0, 0, 0, 21, 80, 0, 0, 0, 0, 0, 0, 0, 'Ralia - Timed 1 - Board closest player'),
(156929, 0, 6, 0, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 53, 1, 15692900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - Timed 1 - Start pit path'),
(156929, 0, 7, 0, '', 27, 0, 100, 0, 0, 0, 0, 0, 0, 53, 1, 15692900, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Passenger Boarded - Start pit path'),
(156929, 0, 8, 9, '', 40, 0, 100, 0, 5, 15692900, 0, 0, 0, 33, 156929, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Path Node 5 - Kill credit passenger'),
(156929, 0, 9, 10, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 33, 156929, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Path Node 5 - Kill credit owner'),
(156929, 0, 10, 11, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 33, 156929, 0, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Path Node 5 - Kill credit closest player'),
(156929, 0, 11, 12, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Path Node 5 - Eject passenger'),
(156929, 0, 12, 0, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Path Node 5 - Despawn');
