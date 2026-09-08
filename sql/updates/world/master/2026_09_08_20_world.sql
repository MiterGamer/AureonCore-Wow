-- Aureon Core 0.2.4: three missing starting-area quest givers.
-- Legacy coordinate reference corroborated by public NPC locations and local terrain; VerifiedBuild remains 0.
-- Existing template flags, scripts and quests are inherited.
START TRANSACTION;
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild) SELECT 11903600,15278,530,'0',10352,-6359.93,34.1146,2.07694,120,0,0 WHERE NOT EXISTS(SELECT 1 FROM creature WHERE id=15278) AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11903600);
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild) SELECT 11903601,15281,530,'0',10302.3,-6229.3,26.7049,6.19592,120,0,0 WHERE NOT EXISTS(SELECT 1 FROM creature WHERE id=15281) AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11903601);
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild) SELECT 11903602,16477,530,'0',-4039.4,-13773.7,75.3083,5.18363,120,0,0 WHERE NOT EXISTS(SELECT 1 FROM creature WHERE id=16477) AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11903602);
COMMIT;
