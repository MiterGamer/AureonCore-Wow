--
CREATE TABLE IF NOT EXISTS `spell_scripts` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `effIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `delay` int unsigned NOT NULL DEFAULT '0',
  `command` int unsigned NOT NULL DEFAULT '0',
  `datalong` int unsigned NOT NULL DEFAULT '0',
  `datalong2` int unsigned NOT NULL DEFAULT '0',
  `dataint` int NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `spell_scripts` WHERE `id` IN (65797,66166,74083);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_cast_caster_to_target' AND `spell_id` IN (65797,74083);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_cancel_aura' AND `spell_id` IN (66166);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(65797,'spell_gen_cast_caster_to_target'),
(66166,'spell_gen_cancel_aura'),
(74083,'spell_gen_cast_caster_to_target');
