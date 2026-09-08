-- Verified against the extracted 12.1.0.69587 SpellEffect and SummonProperties DB2s.
-- 383057 triggers personal credit 383056 before CreatureAI::SpellHit.
DELETE FROM `spell_script_names` WHERE `spell_id` = 383056 AND `ScriptName` = 'spell_wild_coast_rellid_rescue';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(383056, 'spell_wild_coast_rellid_rescue');

-- SummonProperties 4926 does not auto-board. The vehicle AI now casts 382193
-- to supply both the control-vehicle aura and the captured action bar 2191.
UPDATE `creature_template`
SET `AIName` = '', `ScriptName` = 'npc_wild_coast_survey_vehicle', `VehicleId` = 7866
WHERE `entry` = 193712;
