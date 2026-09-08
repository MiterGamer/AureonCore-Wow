-- Emergency correction: public map sightings were incorrectly treated as permanent spawns.
-- Remove only Aureon's 23 globally visible hunter quest prowlers; preserve pets and other spawns.
START TRANSACTION;
DELETE FROM creature WHERE guid BETWEEN 11903200 AND 11903222 AND id=164990 AND map=2175;
-- Restore the original friendly template faction instead of the introduced hostile faction.
UPDATE creature_template SET faction=35 WHERE entry=164990 AND faction=14 AND ScriptName='npc_exiles_stalking_prowler';
COMMIT;
