-- Requested initial Sanctum population: campaign cast and weekly NPCs.
-- Custom placements around the existing scouting map, NOT sniffed retail coordinates.
-- Platform Z copied from nearby recorded Lor'themar spawn; verify in game.
-- Preserve templates, quest relations and other spawns. No campaign/weekly unlock bypass.
START TRANSACTION;
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,PhaseId,
 equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,
 curHealthPct,MovementType,unit_flags,StringId,VerifiedBuild)
SELECT s.guid,s.entry,0,15969,16333,'0',27428,
 IF(EXISTS(SELECT 1 FROM creature_equip_template e WHERE e.CreatureID=s.entry AND e.ID=1),1,0),
 s.x,s.y,48.334892,s.o,120,100,0,768,'silvermoon_sanctum_initial_20260907',0
FROM (
 SELECT 11900000 AS guid,236134 AS entry,8463.0 AS x,-4611.5 AS y,3.85 AS o
 UNION ALL SELECT 11900001,252822,8463.0,-4621.5,2.45
 UNION ALL SELECT 11900002,235792,8457.0,-4624.0,1.57
 UNION ALL SELECT 11900003,236583,8450.0,-4621.5,0.60
 UNION ALL SELECT 11900004,256203,8447.0,-4609.0,5.62
 UNION ALL SELECT 11900005,256210,8447.0,-4613.0,5.93
 UNION ALL SELECT 11900006,256212,8447.0,-4617.0,0.03
) s
JOIN creature_template t ON t.entry=s.entry
WHERE NOT EXISTS (SELECT 1 FROM creature c WHERE c.guid=s.guid)
AND NOT EXISTS (SELECT 1 FROM creature c WHERE c.id=s.entry AND c.map=0
 AND ABS(c.position_x-8457)<40 AND ABS(c.position_y+4616.67)<40);
COMMIT;
