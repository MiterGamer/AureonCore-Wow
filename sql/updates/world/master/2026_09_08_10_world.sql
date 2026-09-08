-- Aureon Core 0.2.3: restore ten missing racial quest givers.
-- Coordinates: historical TrinityCore post-Cataclysm records, corroborated against current retail NPC maps and client terrain.
-- One spawn per NPC; no inferred patrol points, no hostile population, no phase or template edits.

-- https://www.wowhead.com/npc=197; sql/old/4.3.4/TDB0_to_TDB1_updates/world/052_elwynn_forest.sql:2854
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild)
SELECT 11903500,197,0,'0',-8913.069,-137.4063,80.90119,1.972222,120,0,0
WHERE NOT EXISTS (SELECT 1 FROM creature WHERE id=197 AND map=0);

-- https://www.wowhead.com/npc=951; sql/old/4.3.4/TDB0_to_TDB1_updates/world/052_elwynn_forest.sql:2920
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild)
SELECT 11903501,951,0,'0',-8814.294,-157.2969,81.66721,2.710123,120,0,0
WHERE NOT EXISTS (SELECT 1 FROM creature WHERE id=951 AND map=0);

-- https://www.wowhead.com/npc=1568; sql/old/4.3.4/TDB0_to_TDB1_updates/world/112_tirisfal_glades.sql:2060
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild)
SELECT 11903502,1568,0,'0',1689.712,1674.793,135.6747,0.3490658,120,0,0
WHERE NOT EXISTS (SELECT 1 FROM creature WHERE id=1568 AND map=0);

-- https://www.wowhead.com/npc=2307; sql/old/4.3.4/TDB0_to_TDB1_updates/world/112_tirisfal_glades.sql:2107
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild)
SELECT 11903503,2307,0,'0',1685.67,1647.569,137.3274,2.129302,120,0,0
WHERE NOT EXISTS (SELECT 1 FROM creature WHERE id=2307 AND map=0);

-- https://www.wowhead.com/npc=2981; sql/old/4.3.4/TDB0_to_TDB1_updates/world/031_mulgore.sql:1842
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild)
SELECT 11903504,2981,1,'0',-2909.955,-256.526,59.68792,0.3839724,120,0,0
WHERE NOT EXISTS (SELECT 1 FROM creature WHERE id=2981 AND map=1);

-- https://www.wowhead.com/npc=37087; sql/old/4.3.4/TDB0_to_TDB1_updates/world/026_dun_morogh.sql:5173
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild)
SELECT 11903505,37087,0,'0',-6087.605,386.0275,395.5426,1.8147,120,0,0
WHERE NOT EXISTS (SELECT 1 FROM creature WHERE id=37087 AND map=0);

-- https://www.wowhead.com/npc=37081; sql/old/4.3.4/TDB0_to_TDB1_updates/world/026_dun_morogh.sql:5242
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild)
SELECT 11903506,37081,0,'0',-6228.306,331.5486,383.2667,2.600541,120,0,0
WHERE NOT EXISTS (SELECT 1 FROM creature WHERE id=37081 AND map=0);

-- https://www.wowhead.com/npc=37951; sql/old/4.3.4/TDB0_to_TDB1_updates/world/024_creature.sql:2199
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild)
SELECT 11903507,37951,1,'0',-1168.401,-5265.219,0.9321903,2.670354,120,0,0
WHERE NOT EXISTS (SELECT 1 FROM creature WHERE id=37951 AND map=1);

-- https://www.wowhead.com/npc=10176; sql/old/4.3.4/TDB0_to_TDB1_updates/world/024_creature.sql:2650
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild)
SELECT 11903508,10176,1,'0',-615.4236,-4251.795,39.03932,3.054326,120,0,0
WHERE NOT EXISTS (SELECT 1 FROM creature WHERE id=10176 AND map=1);

-- https://www.wowhead.com/npc=2079; sql/old/4.3.4/TDB0_to_TDB1_updates/world/022_creature.sql:233
INSERT INTO creature (guid,id,map,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,MovementType,VerifiedBuild)
SELECT 11903509,2079,1,'0',10312.7,830.1215,1326.533,2.373648,120,0,0
WHERE NOT EXISTS (SELECT 1 FROM creature WHERE id=2079 AND map=1);
