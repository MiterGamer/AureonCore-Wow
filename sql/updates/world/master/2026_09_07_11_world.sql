-- Update 0.2.1: Wild Coast and Wingrest Embassy, 2026-09-07.
-- Static world observations from client 69587; no player or realm GUIDs imported.
-- See doc/WILD_COAST_0.2.1.md for sources, inference boundaries and pending work.
START TRANSACTION;
-- Shore Crab; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:13.156
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902000,60761,2444,13644,13722,'0',3481.4004,-1898.7051,-0.11380124,0.9626786708831787,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=60761)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902000)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=60761 AND map=2444 AND ABS(position_x-(3481.4004))<10 AND ABS(position_y-(-1898.7051))<10 AND ABS(position_z-(-0.11380124))<10);
-- Shore Crab; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:02.956
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902001,60761,2444,13644,13722,'0',3495.8723,-1891.6616,-0.16462119,1.0032519102096558,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=60761)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902001)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=60761 AND map=2444 AND ABS(position_x-(3495.8723))<10 AND ABS(position_y-(-1891.6616))<10 AND ABS(position_z-(-0.16462119))<10);
-- Shore Crab; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:16.735
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902002,60761,2444,13644,13722,'0',3499.8713,-1833.49,-0.15623137,5.049781322479248,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=60761)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902002)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=60761 AND map=2444 AND ABS(position_x-(3499.8713))<10 AND ABS(position_y-(-1833.49))<10 AND ABS(position_z-(-0.15623137))<10);
-- Shore Crab; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:46.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902003,60761,2444,13644,13722,'0',3516.1804,-1895.595,0.50850034,3.8397741317749023,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=60761)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902003)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=60761 AND map=2444 AND ABS(position_x-(3516.1804))<10 AND ABS(position_y-(-1895.595))<10 AND ABS(position_z-(0.50850034))<10);
-- Shore Crab; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.632
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902004,60761,2444,13644,13722,'0',3534.3018,-1887.2352,1.8507999,4.3553466796875,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=60761)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902004)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=60761 AND map=2444 AND ABS(position_x-(3534.3018))<10 AND ABS(position_y-(-1887.2352))<10 AND ABS(position_z-(1.8507999))<10);
-- Shore Crab; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902005,60761,2444,13644,13722,'0',3548.463,-1842.0198,12.887107,0.8392878770828247,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=60761)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902005)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=60761 AND map=2444 AND ABS(position_x-(3548.463))<10 AND ABS(position_y-(-1842.0198))<10 AND ABS(position_z-(12.887107))<10);
-- Shore Crab; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902006,60761,2444,13644,13722,'0',3717.168,-1840.6267,-0.31362975,6.063165187835693,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=60761)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902006)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=60761 AND map=2444 AND ABS(position_x-(3717.168))<10 AND ABS(position_y-(-1840.6267))<10 AND ABS(position_z-(-0.31362975))<10);
-- Captain Garrick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:08.992
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902007,184449,2444,13644,13939,'0',3534.2917,-1467.7153,93.71737,1.5122648477554321,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184449)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902007)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184449 AND map=2444 AND ABS(position_x-(3534.2917))<1000 AND ABS(position_y-(-1467.7153))<1000 AND ABS(position_z-(93.71737))<1000);
-- Henry Garrick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:08.992
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902008,184450,2444,13644,13939,'0',3533.2483,-1465.9983,93.649,5.743871688842773,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184450)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902008)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184450 AND map=2444 AND ABS(position_x-(3533.2483))<1000 AND ABS(position_y-(-1465.9983))<1000 AND ABS(position_z-(93.649))<1000);
-- Shuja Grimaxe; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:08.992
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902009,184451,2444,13644,13939,'0',3610.5383,-1439.0226,95.56538,0.26324334740638733,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184451)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902009)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184451 AND map=2444 AND ABS(position_x-(3610.5383))<1000 AND ABS(position_y-(-1439.0226))<1000 AND ABS(position_z-(95.56538))<1000);
-- Warlord Breka Grimaxe; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:08.992
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902010,184452,2444,13644,13939,'0',3612.698,-1438.4392,95.574585,2.8576698303222656,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184452)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902010)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184452 AND map=2444 AND ABS(position_x-(3612.698))<1000 AND ABS(position_y-(-1438.4392))<1000 AND ABS(position_z-(95.574585))<1000);
-- Eager Acquisitionist; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902011,184639,2444,13644,13722,'0',3669.0173,-1835.7048,2.740231,3.577924966812134,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184639)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902011)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184639 AND map=2444 AND ABS(position_x-(3669.0173))<1000 AND ABS(position_y-(-1835.7048))<1000 AND ABS(position_z-(2.740231))<1000);
-- Restless Explorer; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902012,184812,2444,13644,13939,'0',3503.0295,-1421.1163,94.32024,1.8294802904129028,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184812)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902012)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184812 AND map=2444 AND ABS(position_x-(3503.0295))<10 AND ABS(position_y-(-1421.1163))<10 AND ABS(position_z-(94.32024))<10);
-- Brave Researcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902013,184813,2444,13644,13939,'0',3513.3057,-1440.0348,95.32672,2.8651304244995117,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184813)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902013)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184813 AND map=2444 AND ABS(position_x-(3513.3057))<10 AND ABS(position_y-(-1440.0348))<10 AND ABS(position_z-(95.32672))<10);
-- Brave Researcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:06.770
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902014,184813,2444,13644,13939,'0',3571.625,-1473.8438,91.473145,4.748072147369385,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184813)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902014)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184813 AND map=2444 AND ABS(position_x-(3571.625))<10 AND ABS(position_y-(-1473.8438))<10 AND ABS(position_z-(91.473145))<10);
-- Brave Researcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:18.265
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902015,184813,2444,13644,13939,'0',3575.4922,-1373.625,99.12327,5.629904747009277,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184813)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902015)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184813 AND map=2444 AND ABS(position_x-(3575.4922))<10 AND ABS(position_y-(-1373.625))<10 AND ABS(position_z-(99.12327))<10);
-- Brave Researcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:07.990
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902016,184813,2444,13644,13939,'0',3586.1458,-1444.5139,91.81945,3.0483245849609375,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184813)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902016)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184813 AND map=2444 AND ABS(position_x-(3586.1458))<10 AND ABS(position_y-(-1444.5139))<10 AND ABS(position_z-(91.81945))<10);
-- Rugged Artisan; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:07.990
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902017,184814,2444,13644,13939,'0',3572.1328,-1455.6337,91.59896,2.767077684402466,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184814)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902017)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184814 AND map=2444 AND ABS(position_x-(3572.1328))<10 AND ABS(position_y-(-1455.6337))<10 AND ABS(position_z-(91.59896))<10);
-- Rugged Artisan; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:12.525
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902018,184814,2444,13644,13939,'0',3585.23,-1414.7379,96.38233,3.130239486694336,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184814)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902018)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184814 AND map=2444 AND ABS(position_x-(3585.23))<10 AND ABS(position_y-(-1414.7379))<10 AND ABS(position_z-(96.38233))<10);
-- Rugged Artisan; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:06.770
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902019,184814,2444,13644,13939,'0',3611.3135,-1458.132,91.458336,2.196418046951294,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184814)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902019)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184814 AND map=2444 AND ABS(position_x-(3611.3135))<10 AND ABS(position_y-(-1458.132))<10 AND ABS(position_z-(91.458336))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:03.610
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902020,184851,2444,13644,13722,'0',3462.4714,-1709.1545,43.454193,1.4450322389602661,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902020)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3462.4714))<10 AND ABS(position_y-(-1709.1545))<10 AND ABS(position_z-(43.454193))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:03.610
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902021,184851,2444,13644,13722,'0',3479.4124,-1687.3906,27.15486,5.002787113189697,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902021)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3479.4124))<10 AND ABS(position_y-(-1687.3906))<10 AND ABS(position_z-(27.15486))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:40:49.614
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902022,184851,2444,13644,13722,'0',3484.3289,-1816.3628,2.1119204,3.437077522277832,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902022)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3484.3289))<10 AND ABS(position_y-(-1816.3628))<10 AND ABS(position_z-(2.1119204))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:56.302
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902023,184851,2444,13644,13722,'0',3485.764,-1696.0022,29.339191,1.219618558883667,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902023)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3485.764))<10 AND ABS(position_y-(-1696.0022))<10 AND ABS(position_z-(29.339191))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:03.610
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902024,184851,2444,13644,13722,'0',3486.5251,-1695.8212,12.567229,5.002787113189697,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902024)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3486.5251))<10 AND ABS(position_y-(-1695.8212))<10 AND ABS(position_z-(12.567229))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:46.536
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902025,184851,2444,13644,13722,'0',3488.1445,-1711.6512,12.60628,4.427020072937012,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902025)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3488.1445))<10 AND ABS(position_y-(-1711.6512))<10 AND ABS(position_z-(12.60628))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:41.644
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902026,184851,2444,13644,13722,'0',3494.6667,-1742.4098,19.598804,1.4781571626663208,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902026)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3494.6667))<10 AND ABS(position_y-(-1742.4098))<10 AND ABS(position_z-(19.598804))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:12.591
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902027,184851,2444,13644,13722,'0',3500.7456,-1674.2014,12.646312,3.158402442932129,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3500.7456))<10 AND ABS(position_y-(-1674.2014))<10 AND ABS(position_z-(12.646312))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:03.610
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902028,184851,2444,13644,13722,'0',3501.4783,-1687.6216,12.137236,5.002787113189697,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902028)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3501.4783))<10 AND ABS(position_y-(-1687.6216))<10 AND ABS(position_z-(12.137236))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:48.139
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902029,184851,2444,13644,13722,'0',3529.7778,-2046.5312,20.831625,1.4450322389602661,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902029)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3529.7778))<10 AND ABS(position_y-(-2046.5312))<10 AND ABS(position_z-(20.831625))<10);
-- Lava Snail; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:26.556
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902030,184851,2444,13644,13722,'0',3597.9766,-2020.3837,20.110228,3.6973345279693604,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184851)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902030)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184851 AND map=2444 AND ABS(position_x-(3597.9766))<10 AND ABS(position_y-(-2020.3837))<10 AND ABS(position_z-(20.110228))<10);
-- Primal Scythid Queen; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:30.703
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902031,184853,2444,13644,13722,'0',3354.3315,-1819.8577,40.730957,5.588606357574463,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184853)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902031)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184853 AND map=2444 AND ABS(position_x-(3354.3315))<10 AND ABS(position_y-(-1819.8577))<10 AND ABS(position_z-(40.730957))<10);
-- Salty Skitterfly; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902032,184855,2444,13644,13722,'0',3740.914,-1789.1771,1.2331204,6.222358703613281,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184855)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902032)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184855 AND map=2444 AND ABS(position_x-(3740.914))<10 AND ABS(position_y-(-1789.1771))<10 AND ABS(position_z-(1.2331204))<10);
-- Salty Skitterbug; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902033,184856,2444,13644,13722,'0',3726.5212,-1844.9559,3.6418078,4.7560319900512695,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184856)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902033)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184856 AND map=2444 AND ABS(position_x-(3726.5212))<10 AND ABS(position_y-(-1844.9559))<10 AND ABS(position_z-(3.6418078))<10);
-- Salty Skitterbug; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902034,184856,2444,13644,13722,'0',3726.5437,-1829.4556,2.4334786,3.8290326595306396,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184856)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902034)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184856 AND map=2444 AND ABS(position_x-(3726.5437))<10 AND ABS(position_y-(-1829.4556))<10 AND ABS(position_z-(2.4334786))<10);
-- Salty Skitterbug; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902035,184856,2444,13644,13722,'0',3743.1787,-1836.6953,3.6418362,0.5729758143424988,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184856)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902035)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184856 AND map=2444 AND ABS(position_x-(3743.1787))<10 AND ABS(position_y-(-1836.6953))<10 AND ABS(position_z-(3.6418362))<10);
-- Salty Skitterbug; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.396
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902036,184856,2444,13644,13722,'0',3772.9941,-1807.6897,2.3547509,2.0856735706329346,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184856)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902036)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184856 AND map=2444 AND ABS(position_x-(3772.9941))<10 AND ABS(position_y-(-1807.6897))<10 AND ABS(position_z-(2.3547509))<10);
-- Rambunctious Tideskipper; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.396
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902037,184857,2444,13644,13722,'0',3774.593,-1836.8287,-2.765041,0.8603257536888123,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184857)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902037)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184857 AND map=2444 AND ABS(position_x-(3774.593))<10 AND ABS(position_y-(-1836.8287))<10 AND ABS(position_z-(-2.765041))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:25.757
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902038,184861,2444,13644,13722,'0',3428.4583,-2034.0555,45.227547,0.006240318994969129,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902038)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3428.4583))<10 AND ABS(position_y-(-2034.0555))<10 AND ABS(position_z-(45.227547))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:32.692
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902039,184861,2444,13644,13722,'0',3476.139,-1765.7223,23.977112,4.078955173492432,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902039)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3476.139))<10 AND ABS(position_y-(-1765.7223))<10 AND ABS(position_z-(23.977112))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:46.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902040,184861,2444,13644,13722,'0',3513.7996,-1905.1354,19.204712,0.7499088644981384,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902040)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3513.7996))<10 AND ABS(position_y-(-1905.1354))<10 AND ABS(position_z-(19.204712))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:47.446
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902041,184861,2444,13644,13722,'0',3517.1614,-1826.6823,21.069733,5.8059186935424805,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902041)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3517.1614))<10 AND ABS(position_y-(-1826.6823))<10 AND ABS(position_z-(21.069733))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:39.613
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902042,184861,2444,13644,13722,'0',3518.8916,-2006.5278,41.487404,1.1344107389450073,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902042)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3518.8916))<10 AND ABS(position_y-(-2006.5278))<10 AND ABS(position_z-(41.487404))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:19.231
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902043,184861,2444,13644,13722,'0',3522.8665,-1814.0173,36.822945,5.827846527099609,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902043)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3522.8665))<10 AND ABS(position_y-(-1814.0173))<10 AND ABS(position_z-(36.822945))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:40.995
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902044,184861,2444,13644,13722,'0',3550.6128,-1640.1354,45.958687,4.790771007537842,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902044)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3550.6128))<10 AND ABS(position_y-(-1640.1354))<10 AND ABS(position_z-(45.958687))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:01.158
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902045,184861,2444,13644,13722,'0',3552.6216,-1732.8368,49.630787,3.0678529739379883,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902045)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3552.6216))<10 AND ABS(position_y-(-1732.8368))<10 AND ABS(position_z-(49.630787))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:46.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902046,184861,2444,13644,13722,'0',3553.5513,-1792.8524,34.767353,5.671100616455078,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902046)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3553.5513))<10 AND ABS(position_y-(-1792.8524))<10 AND ABS(position_z-(34.767353))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902047,184861,2444,13644,13722,'0',3556.4324,-1859.7778,22.945583,0.24143631756305695,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902047)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3556.4324))<10 AND ABS(position_y-(-1859.7778))<10 AND ABS(position_z-(22.945583))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:19.874
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902048,184861,2444,13644,13722,'0',3565.968,-1713.2622,56.954983,4.078955173492432,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902048)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3565.968))<10 AND ABS(position_y-(-1713.2622))<10 AND ABS(position_z-(56.954983))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:12.591
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902049,184861,2444,13644,13722,'0',3585.126,-1748.8837,38.0067,4.1245927810668945,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902049)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3585.126))<10 AND ABS(position_y-(-1748.8837))<10 AND ABS(position_z-(38.0067))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:25.979
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902050,184861,2444,13644,13722,'0',3591.7812,-1673.4254,56.248978,3.7790842056274414,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902050)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3591.7812))<10 AND ABS(position_y-(-1673.4254))<10 AND ABS(position_z-(56.248978))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:21.146
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902051,184861,2444,13644,13722,'0',3594.7727,-1745.4062,43.589962,5.616390228271484,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902051)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3594.7727))<10 AND ABS(position_y-(-1745.4062))<10 AND ABS(position_z-(43.589962))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:35:34.694
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902052,184861,2444,13644,13722,'0',3600.433,-1907.0192,27.572498,0.7499088644981384,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902052)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3600.433))<10 AND ABS(position_y-(-1907.0192))<10 AND ABS(position_z-(27.572498))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:34.861
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902053,184861,2444,13644,13722,'0',3602.558,-1973.2153,33.69601,1.867825984954834,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902053)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3602.558))<10 AND ABS(position_y-(-1973.2153))<10 AND ABS(position_z-(33.69601))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:27.772
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902054,184861,2444,13644,13722,'0',3604.0051,-1798.2622,45.007763,5.04896879196167,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902054)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3604.0051))<10 AND ABS(position_y-(-1798.2622))<10 AND ABS(position_z-(45.007763))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:27.772
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902055,184861,2444,13644,13722,'0',3611.6172,-1798.868,37.48489,4.110224723815918,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902055)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3611.6172))<10 AND ABS(position_y-(-1798.868))<10 AND ABS(position_z-(37.48489))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:35:54.608
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902056,184861,2444,13644,13722,'0',3612.02,-1969.493,37.848667,1.867825984954834,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902056)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3612.02))<10 AND ABS(position_y-(-1969.493))<10 AND ABS(position_z-(37.848667))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.396
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902057,184861,2444,13644,13722,'0',3612.5105,-1904.2795,30.267094,2.279090642929077,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902057)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3612.5105))<10 AND ABS(position_y-(-1904.2795))<10 AND ABS(position_z-(30.267094))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:29.575
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902058,184861,2444,13644,13722,'0',3630.0686,-1701.007,47.462048,3.39294171333313,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184861)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902058)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184861 AND map=2444 AND ABS(position_x-(3630.0686))<10 AND ABS(position_y-(-1701.007))<10 AND ABS(position_z-(47.462048))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:57.094
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902059,184869,2444,13644,13722,'0',3765.257,-1576.3229,43.122395,0.21044032275676727,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184869)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902059)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184869 AND map=2444 AND ABS(position_x-(3765.257))<10 AND ABS(position_y-(-1576.3229))<10 AND ABS(position_z-(43.122395))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902060,184869,2444,13644,13722,'0',3776.9397,-1721.3204,0.21781333,3.841153383255005,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184869)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902060)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184869 AND map=2444 AND ABS(position_x-(3776.9397))<10 AND ABS(position_y-(-1721.3204))<10 AND ABS(position_z-(0.21781333))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:05.278
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902061,184869,2444,13644,13722,'0',3794.339,-1542.874,64.699356,1.5994508266448975,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184869)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902061)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184869 AND map=2444 AND ABS(position_x-(3794.339))<10 AND ABS(position_y-(-1542.874))<10 AND ABS(position_z-(64.699356))<10);
-- Naleidea Rivergleam; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:06.770
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902062,184870,2444,13644,13939,'0',3585.317,-1458.6302,91.4777,2.326565742492676,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=184870)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902062)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=184870 AND map=2444 AND ABS(position_x-(3585.317))<1000 AND ABS(position_y-(-1458.6302))<1000 AND ABS(position_z-(91.4777))<1000);
-- Elia Bladeleaf; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:08.992
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902063,185773,2444,13644,13939,'0',3533.1501,-1476.8611,93.72081,6.277778148651123,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=185773)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902063)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=185773 AND map=2444 AND ABS(position_x-(3533.1501))<1000 AND ABS(position_y-(-1476.8611))<1000 AND ABS(position_z-(93.72081))<1000);
-- Dallio Morelli; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:08.992
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902064,185774,2444,13644,13939,'0',3535.0166,-1476.8177,93.71736,3.3059890270233154,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=185774)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902064)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=185774 AND map=2444 AND ABS(position_x-(3535.0166))<1000 AND ABS(position_y-(-1476.8177))<1000 AND ABS(position_z-(93.71736))<1000);
-- Expedition Guarantor; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:54.427
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902065,187061,2444,13644,13722,'0',3640.0034,-1543.191,62.221863,6.159180164337158,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187061)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902065)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187061 AND map=2444 AND ABS(position_x-(3640.0034))<10 AND ABS(position_y-(-1543.191))<10 AND ABS(position_z-(62.221863))<10);
-- Expedition Guarantor; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:57.914
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902066,187061,2444,13644,13722,'0',3656.4004,-1523.4902,63.413086,5.95126485824585,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187061)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902066)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187061 AND map=2444 AND ABS(position_x-(3656.4004))<10 AND ABS(position_y-(-1523.4902))<10 AND ABS(position_z-(63.413086))<10);
-- Expedition Guarantor; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:25.748
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902067,187062,2444,13644,13939,'0',3498.2,-1383.6852,93.71628,2.6839358806610107,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187062)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902067)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187062 AND map=2444 AND ABS(position_x-(3498.2))<10 AND ABS(position_y-(-1383.6852))<10 AND ABS(position_z-(93.71628))<10);
-- Expedition Guarantor; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:06.770
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902068,187062,2444,13644,13722,'0',3615.5903,-1469.2048,91.94873,5.150052547454834,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187062)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902068)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187062 AND map=2444 AND ABS(position_x-(3615.5903))<10 AND ABS(position_y-(-1469.2048))<10 AND ABS(position_z-(91.94873))<10);
-- Expedition Guarantor; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:01.730
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902069,187121,2444,13644,13722,'0',3612.7102,-1488.0139,86.54872,5.399322509765625,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187121)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902069)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187121 AND map=2444 AND ABS(position_x-(3612.7102))<10 AND ABS(position_y-(-1488.0139))<10 AND ABS(position_z-(86.54872))<10);
-- Expedition Guarantor; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:57.914
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902070,187121,2444,13644,13722,'0',3626.0269,-1508.9966,72.645325,5.399322509765625,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187121)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902070)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187121 AND map=2444 AND ABS(position_x-(3626.0269))<10 AND ABS(position_y-(-1508.9966))<10 AND ABS(position_z-(72.645325))<10);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.396
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902071,187123,2444,13644,13722,'0',3634.7837,-1856.647,10.409569,2.586185932159424,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187123)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902071)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187123 AND map=2444 AND ABS(position_x-(3634.7837))<10 AND ABS(position_y-(-1856.647))<10 AND ABS(position_z-(10.409569))<10);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:54.427
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902072,187123,2444,13644,13722,'0',3639.2727,-1543.8247,62.221863,4.515944004058838,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187123)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902072)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187123 AND map=2444 AND ABS(position_x-(3639.2727))<10 AND ABS(position_y-(-1543.8247))<10 AND ABS(position_z-(62.221863))<10);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:57.914
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902073,187125,2444,13644,13722,'0',3587.9722,-1506.5435,85.92707,5.108240127563477,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187125)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902073)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187125 AND map=2444 AND ABS(position_x-(3587.9722))<10 AND ABS(position_y-(-1506.5435))<10 AND ABS(position_z-(85.92707))<10);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:54.427
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902074,187125,2444,13644,13722,'0',3601.0503,-1525.8594,72.575195,5.152955055236816,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187125)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902074)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187125 AND map=2444 AND ABS(position_x-(3601.0503))<10 AND ABS(position_y-(-1525.8594))<10 AND ABS(position_z-(72.575195))<10);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:21.089
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902075,187135,2444,13644,13939,'0',3490.4775,-1397.4392,94.47328,2.327014207839966,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187135)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902075)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187135 AND map=2444 AND ABS(position_x-(3490.4775))<10 AND ABS(position_y-(-1397.4392))<10 AND ABS(position_z-(94.47328))<10);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:01.730
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902076,187135,2444,13644,13939,'0',3592.1272,-1486.8888,91.91773,5.580093860626221,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187135)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902076)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187135 AND map=2444 AND ABS(position_x-(3592.1272))<10 AND ABS(position_y-(-1486.8888))<10 AND ABS(position_z-(91.91773))<10);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902077,187135,2444,13644,13722,'0',3657.9106,-1847.2379,9.432749,5.940360069274902,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187135)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902077)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187135 AND map=2444 AND ABS(position_x-(3657.9106))<10 AND ABS(position_y-(-1847.2379))<10 AND ABS(position_z-(9.432749))<10);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902078,187135,2444,13644,13722,'0',3667.2197,-1892.0625,7.737076,0.0705263614654541,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187135)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902078)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187135 AND map=2444 AND ABS(position_x-(3667.2197))<10 AND ABS(position_y-(-1892.0625))<10 AND ABS(position_z-(7.737076))<10);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902079,187135,2444,13644,13722,'0',3687.1797,-1833.6233,2.7394242,5.408229351043701,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187135)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902079)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187135 AND map=2444 AND ABS(position_x-(3687.1797))<10 AND ABS(position_y-(-1833.6233))<10 AND ABS(position_z-(2.7394242))<10);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902080,187135,2444,13644,13722,'0',3716.2527,-1888.0192,5.887426,2.544367551803589,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187135)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902080)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187135 AND map=2444 AND ABS(position_x-(3716.2527))<10 AND ABS(position_y-(-1888.0192))<10 AND ABS(position_z-(5.887426))<10);
-- Cantankerous Hornswog; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.470
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902081,187140,2444,13644,13722,'0',3829.0095,-1844.1685,6.4587765,3.4414167404174805,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187140)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902081)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187140 AND map=2444 AND ABS(position_x-(3829.0095))<10 AND ABS(position_y-(-1844.1685))<10 AND ABS(position_z-(6.4587765))<10);
-- Cantankerous Hornswog; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.470
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902082,187140,2444,13644,13722,'0',3838.2812,-1847.6858,9.477426,4.911208152770996,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187140)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902082)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187140 AND map=2444 AND ABS(position_x-(3838.2812))<10 AND ABS(position_y-(-1847.6858))<10 AND ABS(position_z-(9.477426))<10);
-- Brave Researcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902083,187193,2444,13644,13939,'0',3527.3127,-1452.1042,93.44739,0.650580883026123,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187193)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902083)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187193 AND map=2444 AND ABS(position_x-(3527.3127))<10 AND ABS(position_y-(-1452.1042))<10 AND ABS(position_z-(93.44739))<10);
-- Brave Researcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:06.770
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902084,187193,2444,13644,13939,'0',3571.507,-1475.5348,91.4765,1.5011768341064453,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187193)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902084)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187193 AND map=2444 AND ABS(position_x-(3571.507))<10 AND ABS(position_y-(-1475.5348))<10 AND ABS(position_z-(91.4765))<10);
-- Brave Researcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:18.265
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902085,187193,2444,13644,13939,'0',3576.7197,-1374.7916,99.06183,2.381631374359131,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187193)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902085)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187193 AND map=2444 AND ABS(position_x-(3576.7197))<10 AND ABS(position_y-(-1374.7916))<10 AND ABS(position_z-(99.06183))<10);
-- Brave Researcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:08.992
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902086,187193,2444,13644,13939,'0',3584.4827,-1444.1702,91.70139,6.079361915588379,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187193)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902086)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187193 AND map=2444 AND ABS(position_x-(3584.4827))<10 AND ABS(position_y-(-1444.1702))<10 AND ABS(position_z-(91.70139))<10);
-- Brave Researcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.427
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902087,187193,2444,13644,13722,'0',3675.322,-1862.3629,5.996545,3.2288591861724854,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187193)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902087)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187193 AND map=2444 AND ABS(position_x-(3675.322))<10 AND ABS(position_y-(-1862.3629))<10 AND ABS(position_z-(5.996545))<10);
-- Restless Explorer; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902088,187194,2444,13644,13939,'0',3502.7727,-1419.441,94.38195,4.864512920379639,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187194)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902088)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187194 AND map=2444 AND ABS(position_x-(3502.7727))<10 AND ABS(position_y-(-1419.441))<10 AND ABS(position_z-(94.38195))<10);
-- Restless Explorer; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:12.525
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902089,187194,2444,13644,13939,'0',3517.112,-1451.033,93.69252,0.14317366480827332,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187194)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902089)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187194 AND map=2444 AND ABS(position_x-(3517.112))<10 AND ABS(position_y-(-1451.033))<10 AND ABS(position_z-(93.69252))<10);
-- Restless Explorer; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:06.770
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902090,187194,2444,13644,13939,'0',3550.057,-1474.1937,94.31385,2.8624494075775146,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187194)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902090)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187194 AND map=2444 AND ABS(position_x-(3550.057))<10 AND ABS(position_y-(-1474.1937))<10 AND ABS(position_z-(94.31385))<10);
-- Restless Explorer; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902091,187194,2444,13644,13722,'0',3689.2734,-1839.1216,2.9969237,0.15707963705062866,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187194)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902091)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187194 AND map=2444 AND ABS(position_x-(3689.2734))<10 AND ABS(position_y-(-1839.1216))<10 AND ABS(position_z-(2.9969237))<10);
-- Restless Explorer; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.427
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902092,187194,2444,13644,13722,'0',3707.015,-1871.7604,5.7478313,3.2986721992492676,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187194)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902092)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187194 AND map=2444 AND ABS(position_x-(3707.015))<10 AND ABS(position_y-(-1871.7604))<10 AND ABS(position_z-(5.7478313))<10);
-- Rugged Artisan; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:07.990
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902093,187196,2444,13644,13939,'0',3570.6294,-1454.8473,91.51389,5.801260948181152,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187196)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902093)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187196 AND map=2444 AND ABS(position_x-(3570.6294))<10 AND ABS(position_y-(-1454.8473))<10 AND ABS(position_z-(91.51389))<10);
-- Rugged Artisan; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:06.770
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902094,187196,2444,13644,13939,'0',3609.6501,-1457.1685,91.66493,5.244863033294678,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187196)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902094)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187196 AND map=2444 AND ABS(position_x-(3609.6501))<10 AND ABS(position_y-(-1457.1685))<10 AND ABS(position_z-(91.66493))<10);
-- Rugged Artisan; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902095,187196,2444,13644,13722,'0',3664.48,-1895.658,7.853716,3.419999837875366,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187196)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902095)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187196 AND map=2444 AND ABS(position_x-(3664.48))<10 AND ABS(position_y-(-1895.658))<10 AND ABS(position_z-(7.853716))<10);
-- Rugged Artisan; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902096,187196,2444,13644,13722,'0',3675.507,-1841.2709,2.903812,1.5929291248321533,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187196)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902096)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187196 AND map=2444 AND ABS(position_x-(3675.507))<10 AND ABS(position_y-(-1841.2709))<10 AND ABS(position_z-(2.903812))<10);
-- Cataloger Coralie; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902097,187229,2444,13644,13939,'0',3581.7847,-1426.2935,95.61062,3.128596305847168,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187229)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902097)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187229 AND map=2444 AND ABS(position_x-(3581.7847))<1000 AND ABS(position_y-(-1426.2935))<1000 AND ABS(position_z-(95.61062))<1000);
-- Pathfinder Tacha; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902098,187234,2444,13644,13939,'0',3587.6216,-1425.6702,96.34239,1.959901213645935,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187234)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902098)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187234 AND map=2444 AND ABS(position_x-(3587.6216))<1000 AND ABS(position_y-(-1425.6702))<1000 AND ABS(position_z-(96.34239))<1000);
-- Scalecommander Cindrethresh; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:10.159
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902099,187235,2444,13644,13939,'0',3615.8376,-1432.243,95.47697,3.5806009769439697,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187235)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902099)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187235 AND map=2444 AND ABS(position_x-(3615.8376))<1000 AND ABS(position_y-(-1432.243))<1000 AND ABS(position_z-(95.47697))<1000);
-- Boss Magor; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902100,187236,2444,13644,13939,'0',3604.23,-1404.8212,99.03729,0.5126185417175293,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187236)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902100)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187236 AND map=2444 AND ABS(position_x-(3604.23))<1000 AND ABS(position_y-(-1404.8212))<1000 AND ABS(position_z-(99.03729))<1000);
-- Toddy Whiskers; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:11.634
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902101,187251,2444,13644,13722,'0',3676.77,-1898.5764,7.736508,0.3710566461086273,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187251)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902101)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187251 AND map=2444 AND ABS(position_x-(3676.77))<1000 AND ABS(position_y-(-1898.5764))<1000 AND ABS(position_z-(7.736508))<1000);
-- Scalecommander Azurathel; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:11.634
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902102,187252,2444,13644,13722,'0',3678.1128,-1901.1146,7.733724,0.9110056161880493,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187252)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902102)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187252 AND map=2444 AND ABS(position_x-(3678.1128))<1000 AND ABS(position_y-(-1901.1146))<1000 AND ABS(position_z-(7.733724))<1000);
-- Spelunker Lazee; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902103,187253,2444,13644,13939,'0',3592.131,-1422.4445,95.46355,2.166835308074951,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187253)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187253 AND map=2444 AND ABS(position_x-(3592.131))<1000 AND ABS(position_y-(-1422.4445))<1000 AND ABS(position_z-(95.46355))<1000);
-- Archivist Spearblossom; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:06.770
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902104,187254,2444,13644,13939,'0',3589.461,-1422.1771,95.494064,0.922156810760498,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187254)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187254 AND map=2444 AND ABS(position_x-(3589.461))<1000 AND ABS(position_y-(-1422.1771))<1000 AND ABS(position_z-(95.494064))<1000);
-- Pathfinder Poppy; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902105,187255,2444,13644,13939,'0',3591.501,-1420.1354,95.52052,3.7491321563720703,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187255)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902105)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187255 AND map=2444 AND ABS(position_x-(3591.501))<1000 AND ABS(position_y-(-1420.1354))<1000 AND ABS(position_z-(95.52052))<1000);
-- Aster Cloudgaze; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902106,187257,2444,13644,13939,'0',3590.981,-1397.1423,99.1163,5.382963180541992,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187257)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902106)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187257 AND map=2444 AND ABS(position_x-(3590.981))<1000 AND ABS(position_y-(-1397.1423))<1000 AND ABS(position_z-(99.1163))<1000);
-- Grun Ashbeard; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:12.525
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902107,187261,2444,13644,13939,'0',3529.677,-1437.7188,92.90278,3.466574192047119,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187261)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902107)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187261 AND map=2444 AND ABS(position_x-(3529.677))<1000 AND ABS(position_y-(-1437.7188))<1000 AND ABS(position_z-(92.90278))<1000);
-- Primal Lava Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:23.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902108,187321,2444,13644,13939,'0',3396.1362,-1276.8959,105.614296,5.706338405609131,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902108)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187321 AND map=2444 AND ABS(position_x-(3396.1362))<10 AND ABS(position_y-(-1276.8959))<10 AND ABS(position_z-(105.614296))<10);
-- Primal Lava Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:53.601
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902109,187321,2444,13644,13939,'0',3416.559,-1374.8479,103.34617,4.8417768478393555,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902109)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187321 AND map=2444 AND ABS(position_x-(3416.559))<10 AND ABS(position_y-(-1374.8479))<10 AND ABS(position_z-(103.34617))<10);
-- Primal Lava Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:30.586
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902110,187321,2444,13644,13939,'0',3424.6416,-1380.8164,102.317215,3.239103078842163,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902110)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187321 AND map=2444 AND ABS(position_x-(3424.6416))<10 AND ABS(position_y-(-1380.8164))<10 AND ABS(position_z-(102.317215))<10);
-- Primal Lava Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:45:40.101
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902111,187321,2444,13644,13939,'0',3468.087,-1279.606,104.34284,5.359500885009766,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902111)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187321 AND map=2444 AND ABS(position_x-(3468.087))<10 AND ABS(position_y-(-1279.606))<10 AND ABS(position_z-(104.34284))<10);
-- Primal Lava Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:45:42.811
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902112,187321,2444,13644,13939,'0',3494.1328,-1251.9861,111.17526,2.7406165599823,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902112)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187321 AND map=2444 AND ABS(position_x-(3494.1328))<10 AND ABS(position_y-(-1251.9861))<10 AND ABS(position_z-(111.17526))<10);
-- Primal Lava Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:30.586
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902113,187321,2444,13644,13939,'0',3503.2292,-1324.1997,103.9155,6.211764812469482,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902113)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187321 AND map=2444 AND ABS(position_x-(3503.2292))<10 AND ABS(position_y-(-1324.1997))<10 AND ABS(position_z-(103.9155))<10);
-- Primal Lava Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:53.601
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902114,187321,2444,13644,13939,'0',3522.2231,-1299.1663,104.471954,3.547125816345215,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902114)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187321 AND map=2444 AND ABS(position_x-(3522.2231))<10 AND ABS(position_y-(-1299.1663))<10 AND ABS(position_z-(104.471954))<10);
-- Primal Lava Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:57.532
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902115,187321,2444,13644,13939,'0',3553.8455,-1261.3038,111.69724,2.7406165599823,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902115)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187321 AND map=2444 AND ABS(position_x-(3553.8455))<10 AND ABS(position_y-(-1261.3038))<10 AND ABS(position_z-(111.69724))<10);
-- Primal Lava Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:45:42.811
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902116,187321,2444,13644,13939,'0',3576.8325,-1227.0416,123.64021,1.6286656856536865,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902116)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187321 AND map=2444 AND ABS(position_x-(3576.8325))<10 AND ABS(position_y-(-1227.0416))<10 AND ABS(position_z-(123.64021))<10);
-- Primal Lava Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:14.629
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902117,187321,2444,13644,13939,'0',3624.4436,-1212.4584,136.48387,3.506260633468628,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902117)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187321 AND map=2444 AND ABS(position_x-(3624.4436))<10 AND ABS(position_y-(-1212.4584))<10 AND ABS(position_z-(136.48387))<10);
-- Primal Earth Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:25.440
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902118,187322,2444,13644,13939,'0',3302.75,-1329.75,90.95298,5.33736515045166,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187322)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902118)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187322 AND map=2444 AND ABS(position_x-(3302.75))<10 AND ABS(position_y-(-1329.75))<10 AND ABS(position_z-(90.95298))<10);
-- Primal Earth Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:21.990
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902119,187322,2444,13644,13939,'0',3317.4714,-1358.0278,78.24436,4.688013076782227,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187322)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902119)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187322 AND map=2444 AND ABS(position_x-(3317.4714))<10 AND ABS(position_y-(-1358.0278))<10 AND ABS(position_z-(78.24436))<10);
-- Primal Earth Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:49:35.894
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902120,187322,2444,13644,13939,'0',3332.6145,-1429.3976,87.85979,3.8613619804382324,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187322)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902120)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187322 AND map=2444 AND ABS(position_x-(3332.6145))<10 AND ABS(position_y-(-1429.3976))<10 AND ABS(position_z-(87.85979))<10);
-- Primal Earth Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:03.784
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902121,187322,2444,13644,13939,'0',3345.1165,-1394.0712,83.64144,1.2801564931869507,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187322)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902121)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187322 AND map=2444 AND ABS(position_x-(3345.1165))<10 AND ABS(position_y-(-1394.0712))<10 AND ABS(position_z-(83.64144))<10);
-- Primal Earth Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:38.081
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902122,187322,2444,13644,13939,'0',3348.33,-1416.955,90.29129,5.697633266448975,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187322)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902122)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187322 AND map=2444 AND ABS(position_x-(3348.33))<10 AND ABS(position_y-(-1416.955))<10 AND ABS(position_z-(90.29129))<10);
-- Primal Earth Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:25.748
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902123,187322,2444,13644,13939,'0',3383.9775,-1434.5747,102.52921,5.33736515045166,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187322)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902123)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187322 AND map=2444 AND ABS(position_x-(3383.9775))<10 AND ABS(position_y-(-1434.5747))<10 AND ABS(position_z-(102.52921))<10);
-- Primal Earth Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:21.089
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902124,187322,2444,13644,13939,'0',3417.4275,-1381.5221,104.24339,1.7001837491989136,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187322)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902124)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187322 AND map=2444 AND ABS(position_x-(3417.4275))<10 AND ABS(position_y-(-1381.5221))<10 AND ABS(position_z-(104.24339))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:23.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902125,187326,2444,13644,13939,'0',3416.1309,-1314.6321,107.20374,1.3253443241119385,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902125)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3416.1309))<10 AND ABS(position_y-(-1314.6321))<10 AND ABS(position_z-(107.20374))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:56.936
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902126,187326,2444,13644,13939,'0',3507.1814,-1271.3656,106.99935,2.0377025604248047,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902126)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3507.1814))<10 AND ABS(position_y-(-1271.3656))<10 AND ABS(position_z-(106.99935))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:45:41.601
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902127,187326,2444,13644,13939,'0',3531.2048,-1282.8741,103.84415,2.3821706771850586,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902127)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3531.2048))<10 AND ABS(position_y-(-1282.8741))<10 AND ABS(position_z-(103.84415))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:12.461
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902128,187326,2444,13644,13939,'0',3550.9055,-1235.4454,118.26457,3.7436790466308594,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902128)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3550.9055))<10 AND ABS(position_y-(-1235.4454))<10 AND ABS(position_z-(118.26457))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:57.532
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902129,187326,2444,13644,13939,'0',3552.083,-1308.8535,112.12652,3.1415927410125732,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902129)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3552.083))<10 AND ABS(position_y-(-1308.8535))<10 AND ABS(position_z-(112.12652))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:40.999
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902130,187326,2444,13644,13939,'0',3566.954,-1172.6562,140.28508,4.594091415405273,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902130)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3566.954))<10 AND ABS(position_y-(-1172.6562))<10 AND ABS(position_z-(140.28508))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:17.328
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902131,187326,2444,13644,13939,'0',3577.1213,-1199.8846,130.73053,1.6157704591751099,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902131)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3577.1213))<10 AND ABS(position_y-(-1199.8846))<10 AND ABS(position_z-(130.73053))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:40.999
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902132,187326,2444,13644,13939,'0',3578.067,-1175.7382,140.49072,5.054375648498535,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902132)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3578.067))<10 AND ABS(position_y-(-1175.7382))<10 AND ABS(position_z-(140.49072))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:53:17.043
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902133,187326,2444,13644,13939,'0',3578.8284,-1163.6035,144.78178,2.098188877105713,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902133)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3578.8284))<10 AND ABS(position_y-(-1163.6035))<10 AND ABS(position_z-(144.78178))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:58.500
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902134,187326,2444,13644,13939,'0',3587.4033,-1298.8367,118.87845,2.624969005584717,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902134)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3587.4033))<10 AND ABS(position_y-(-1298.8367))<10 AND ABS(position_z-(118.87845))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:30.335
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902135,187326,2444,13644,13939,'0',3616.4563,-1239.7052,134.71481,1.989020586013794,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902135)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3616.4563))<10 AND ABS(position_y-(-1239.7052))<10 AND ABS(position_z-(134.71481))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:31.312
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902136,187326,2444,13644,13939,'0',3626.1436,-1234.4452,138.20741,3.8267040252685547,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902136)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3626.1436))<10 AND ABS(position_y-(-1234.4452))<10 AND ABS(position_z-(138.20741))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:53:18.178
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902137,187326,2444,13644,13939,'0',3645.8577,-1209.654,142.29501,0.3198975622653961,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3645.8577))<10 AND ABS(position_y-(-1209.654))<10 AND ABS(position_z-(142.29501))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:53:18.178
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902138,187326,2444,13644,13939,'0',3647.5417,-1197.651,141.673,0,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902138)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187326 AND map=2444 AND ABS(position_x-(3647.5417))<10 AND ABS(position_y-(-1197.651))<10 AND ABS(position_z-(141.673))<10);
-- Happy Hal; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902139,187412,2444,13644,13722,'0',3675.5408,-1833.0469,2.8227506,4.852087497711182,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=187412)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902139)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=187412 AND map=2444 AND ABS(position_x-(3675.5408))<1000 AND ABS(position_y-(-1833.0469))<1000 AND ABS(position_z-(2.8227506))<1000);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:40:10.041
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902140,188027,2444,13644,13722,'0',3333.5435,-2033.289,-1.5785726,0.4201681613922119,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902140)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3333.5435))<10 AND ABS(position_y-(-2033.289))<10 AND ABS(position_z-(-1.5785726))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:30.703
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902141,188027,2444,13644,13722,'0',3358.0283,-2033.2009,-2.595581,0.01090246345847845,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902141)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3358.0283))<10 AND ABS(position_y-(-2033.2009))<10 AND ABS(position_z-(-2.595581))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:24.518
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902142,188027,2444,13644,13722,'0',3365.4878,-2016.4346,-1.2439864,6.2621331214904785,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902142)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3365.4878))<10 AND ABS(position_y-(-2016.4346))<10 AND ABS(position_z-(-1.2439864))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:59.756
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902143,188027,2444,13644,13722,'0',3391.146,-1948.1545,-1.2032113,2.699186086654663,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902143)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3391.146))<10 AND ABS(position_y-(-1948.1545))<10 AND ABS(position_z-(-1.2032113))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:54.064
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902144,188027,2444,13644,13722,'0',3395.1729,-1973.3281,1.1579447,4.075687885284424,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902144)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3395.1729))<10 AND ABS(position_y-(-1973.3281))<10 AND ABS(position_z-(1.1579447))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:54.064
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902145,188027,2444,13644,13722,'0',3410.6301,-1951.2274,0.28893328,1.0058013200759888,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902145)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3410.6301))<10 AND ABS(position_y-(-1951.2274))<10 AND ABS(position_z-(0.28893328))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:54.064
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902146,188027,2444,13644,13722,'0',3410.655,-1930.4219,-1.2032113,4.06150484085083,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902146)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3410.655))<10 AND ABS(position_y-(-1930.4219))<10 AND ABS(position_z-(-1.2032113))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:46.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902147,188027,2444,13644,13722,'0',3471.7249,-1879.967,-0.5303592,1.5945996046066284,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902147)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3471.7249))<10 AND ABS(position_y-(-1879.967))<10 AND ABS(position_z-(-0.5303592))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.632
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902148,188027,2444,13644,13722,'0',3486.5615,-1903.1486,0.3776184,5.4765944480896,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902148)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3486.5615))<10 AND ABS(position_y-(-1903.1486))<10 AND ABS(position_z-(0.3776184))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:19.635
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902149,188027,2444,13644,13722,'0',3505.382,-1891.6997,-0.37530872,5.877868175506592,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902149)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3505.382))<10 AND ABS(position_y-(-1891.6997))<10 AND ABS(position_z-(-0.37530872))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:51.436
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902150,188027,2444,13644,13722,'0',3511.2144,-1840.1719,-0.8765768,0.8294793367385864,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902150)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3511.2144))<10 AND ABS(position_y-(-1840.1719))<10 AND ABS(position_z-(-0.8765768))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902151,188027,2444,13644,13722,'0',3729.013,-1822.4791,0.19912526,0.5413109064102173,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902151)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3729.013))<10 AND ABS(position_y-(-1822.4791))<10 AND ABS(position_z-(0.19912526))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902152,188027,2444,13644,13722,'0',3745.9106,-1748.6719,-0.16796619,1.7645862102508545,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902152)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3745.9106))<10 AND ABS(position_y-(-1748.6719))<10 AND ABS(position_z-(-0.16796619))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902153,188027,2444,13644,13722,'0',3780.927,-1770.1649,0.9388741,4.932070255279541,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902153)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3780.927))<10 AND ABS(position_y-(-1770.1649))<10 AND ABS(position_z-(0.9388741))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902154,188027,2444,13644,13722,'0',3794.5696,-1782.3125,0.94436103,2.98315167427063,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902154)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3794.5696))<10 AND ABS(position_y-(-1782.3125))<10 AND ABS(position_z-(0.94436103))<10);
-- Salty Salamander; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902155,188027,2444,13644,13722,'0',3810.1562,-1800.1302,0.59770226,4.740420818328857,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188027)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902155)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188027 AND map=2444 AND ABS(position_x-(3810.1562))<10 AND ABS(position_y-(-1800.1302))<10 AND ABS(position_z-(0.59770226))<10);
-- Curious Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:08.992
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902156,188057,2444,13644,13939,'0',3535.9714,-1469.7448,98.86609,0.8203047513961792,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188057)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902156)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188057 AND map=2444 AND ABS(position_x-(3535.9714))<10 AND ABS(position_y-(-1469.7448))<10 AND ABS(position_z-(98.86609))<10);
-- Curious Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902157,188057,2444,13644,13939,'0',3613.3638,-1424.9497,100.54953,2.3387410640716553,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188057)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902157)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188057 AND map=2444 AND ABS(position_x-(3613.3638))<10 AND ABS(position_y-(-1424.9497))<10 AND ABS(position_z-(100.54953))<10);
-- Curious Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:11.634
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902158,188057,2444,13644,13722,'0',3668.882,-1900.5851,12.722112,1.4874507188796997,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188057)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902158)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188057 AND map=2444 AND ABS(position_x-(3668.882))<10 AND ABS(position_y-(-1900.5851))<10 AND ABS(position_z-(12.722112))<10);
-- John Stelle III; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902159,188904,2444,13644,13722,'0',3668.9766,-1843.3629,3.083084,4.445256233215332,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=188904)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902159)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=188904 AND map=2444 AND ABS(position_x-(3668.9766))<1000 AND ABS(position_y-(-1843.3629))<1000 AND ABS(position_z-(3.083084))<1000);
-- Pathfinder Jeb; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.686
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902160,189002,2444,13644,13722,'0',3666.6067,-1883.3906,7.4237285,2.306018352508545,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189002)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902160)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189002 AND map=2444 AND ABS(position_x-(3666.6067))<1000 AND ABS(position_y-(-1883.3906))<1000 AND ABS(position_z-(7.4237285))<1000);
-- Thaelin Darkanvil; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.686
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902161,189021,2444,13644,13722,'0',3676.462,-1895.7986,7.7369504,5.7840962409973145,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189021)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902161)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189021 AND map=2444 AND ABS(position_x-(3676.462))<1000 AND ABS(position_y-(-1895.7986))<1000 AND ABS(position_z-(7.7369504))<1000);
-- Toddy Whiskers; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.686
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902162,189022,2444,13644,13722,'0',3676.77,-1898.5764,7.736508,0.3710566461086273,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189022)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902162)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189022 AND map=2444 AND ABS(position_x-(3676.77))<1000 AND ABS(position_y-(-1898.5764))<1000 AND ABS(position_z-(7.736508))<1000);
-- Scalecommander Azurathel; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.686
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902163,189035,2444,13644,13722,'0',3678.1128,-1901.1146,7.733724,0.9110056161880493,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189035)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902163)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189035 AND map=2444 AND ABS(position_x-(3678.1128))<1000 AND ABS(position_y-(-1901.1146))<1000 AND ABS(position_z-(7.733724))<1000);
-- Cataloger Wulferd; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.686
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902164,189037,2444,13644,13722,'0',3672.1467,-1895.3108,7.737076,3.5562446117401123,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189037)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902164)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189037 AND map=2444 AND ABS(position_x-(3672.1467))<1000 AND ABS(position_y-(-1895.3108))<1000 AND ABS(position_z-(7.737076))<1000);
-- Spelunker Lockeye; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:03.610
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902165,189052,2444,13644,13722,'0',3492.2656,-1688.0798,17.558939,4.6774821281433105,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189052)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902165)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189052 AND map=2444 AND ABS(position_x-(3492.2656))<1000 AND ABS(position_y-(-1688.0798))<1000 AND ABS(position_z-(17.558939))<1000);
-- Professor Cogcatcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:13.156
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902166,189053,2444,13644,13722,'0',3587.4001,-2014.2587,11.31592,2.184739589691162,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189053)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902166)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189053 AND map=2444 AND ABS(position_x-(3587.4001))<1000 AND ABS(position_y-(-2014.2587))<1000 AND ABS(position_z-(11.31592))<1000);
-- Archivist Rellid; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:32.515
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902167,189055,2444,13644,13722,'0',3455.1995,-1957.94,24.028889,2.998877763748169,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189055)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902167)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189055 AND map=2444 AND ABS(position_x-(3455.1995))<1000 AND ABS(position_y-(-1957.94))<1000 AND ABS(position_z-(24.028889))<1000);
-- Thaelin Darkanvil; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:11.634
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902168,189058,2444,13644,13722,'0',3676.462,-1895.7986,7.7369504,5.7840962409973145,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189058)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902168)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189058 AND map=2444 AND ABS(position_x-(3676.462))<1000 AND ABS(position_y-(-1895.7986))<1000 AND ABS(position_z-(7.7369504))<1000);
-- Pathfinder Jeb; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:11.634
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902169,189059,2444,13644,13722,'0',3666.6067,-1883.3906,7.4237285,2.306018352508545,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189059)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902169)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189059 AND map=2444 AND ABS(position_x-(3666.6067))<1000 AND ABS(position_y-(-1883.3906))<1000 AND ABS(position_z-(7.4237285))<1000);
-- Cataloger Wulferd; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:11.634
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902170,189060,2444,13644,13722,'0',3672.1467,-1895.3108,7.737076,3.5562446117401123,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189060)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902170)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189060 AND map=2444 AND ABS(position_x-(3672.1467))<1000 AND ABS(position_y-(-1895.3108))<1000 AND ABS(position_z-(7.737076))<1000);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:45:45.247
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902171,189093,2444,13644,13939,'0',3558.4453,-1472.8438,94.72827,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189093)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902171)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189093 AND map=2444 AND ABS(position_x-(3558.4453))<10 AND ABS(position_y-(-1472.8438))<10 AND ABS(position_z-(94.72827))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:35:54.608
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902172,189093,2444,13644,13722,'0',3583.8213,-1862.3158,12.512945,4.226454257965088,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189093)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902172)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189093 AND map=2444 AND ABS(position_x-(3583.8213))<10 AND ABS(position_y-(-1862.3158))<10 AND ABS(position_z-(12.512945))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:31.903
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902173,189093,2444,13644,13722,'0',3593.8,-1575.1208,60.065853,1.701235294342041,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189093)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902173)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189093 AND map=2444 AND ABS(position_x-(3593.8))<10 AND ABS(position_y-(-1575.1208))<10 AND ABS(position_z-(60.065853))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:01.730
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902174,189093,2444,13644,13722,'0',3670.6057,-1507.8644,65.79709,5.046452522277832,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189093)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902174)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189093 AND map=2444 AND ABS(position_x-(3670.6057))<10 AND ABS(position_y-(-1507.8644))<10 AND ABS(position_z-(65.79709))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902175,189093,2444,13644,13722,'0',3688.143,-1907.4465,8.778966,2.274980068206787,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189093)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902175)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189093 AND map=2444 AND ABS(position_x-(3688.143))<10 AND ABS(position_y-(-1907.4465))<10 AND ABS(position_z-(8.778966))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902176,189093,2444,13644,13722,'0',3691.618,-1875.1132,5.960911,0.9963746070861816,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189093)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902176)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189093 AND map=2444 AND ABS(position_x-(3691.618))<10 AND ABS(position_y-(-1875.1132))<10 AND ABS(position_z-(5.960911))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902177,189093,2444,13644,13722,'0',3692.4775,-1934.2281,10.823863,5.321791172027588,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189093)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902177)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189093 AND map=2444 AND ABS(position_x-(3692.4775))<10 AND ABS(position_y-(-1934.2281))<10 AND ABS(position_z-(10.823863))<10);
-- Magma Slug; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:41.644
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902178,189094,2444,13644,13722,'0',3502.6277,-1743.4247,19.775166,0.4411469101905823,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189094)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902178)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189094 AND map=2444 AND ABS(position_x-(3502.6277))<10 AND ABS(position_y-(-1743.4247))<10 AND ABS(position_z-(19.775166))<10);
-- Expedition Provisioner; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:55:03.291
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902179,189554,2444,13644,13722,'0',3612.8135,-1479.5397,89.80537,2.229739189147949,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189554)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902179)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189554 AND map=2444 AND ABS(position_x-(3612.8135))<10 AND ABS(position_y-(-1479.5397))<10 AND ABS(position_z-(89.80537))<10);
-- Ancient Proto-Dragon; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:57:02.587
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902180,189798,2444,13644,13722,'0',3667.3362,-1590.7256,84.27536,2.1413991451263428,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=189798)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902180)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=189798 AND map=2444 AND ABS(position_x-(3667.3362))<1000 AND ABS(position_y-(-1590.7256))<1000 AND ABS(position_z-(84.27536))<1000);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:54.427
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902181,190056,2444,13644,13722,'0',3754.9375,-1590.6666,58.42047,0.7369493842124939,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190056)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902181)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190056 AND map=2444 AND ABS(position_x-(3754.9375))<10 AND ABS(position_y-(-1590.6666))<10 AND ABS(position_z-(58.42047))<10);
-- Jaffe Cloudwalker; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.470
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902182,190526,2444,13644,13722,'0',3821.8152,-1816.9479,0.6808304,3.6894495487213135,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190526)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902182)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190526 AND map=2444 AND ABS(position_x-(3821.8152))<1000 AND ABS(position_y-(-1816.9479))<1000 AND ABS(position_z-(0.6808304))<1000);
-- Kite; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.470
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902183,190532,2444,13644,13722,'0',3817.0244,-1824.3403,7.144627,1.118881344795227,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190532)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902183)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190532 AND map=2444 AND ABS(position_x-(3817.0244))<1000 AND ABS(position_y-(-1824.3403))<1000 AND ABS(position_z-(7.144627))<1000);
-- Quizla Blastcaps; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902184,190535,2444,13644,13939,'0',3605.9514,-1404.1337,99.35736,4.161099910736084,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190535)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902184)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190535 AND map=2444 AND ABS(position_x-(3605.9514))<1000 AND ABS(position_y-(-1404.1337))<1000 AND ABS(position_z-(99.35736))<1000);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:37.353
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902185,190565,2444,13644,13722,'0',3463.3489,-1988.2344,20.325523,5.881349563598633,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190565)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902185)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190565 AND map=2444 AND ABS(position_x-(3463.3489))<10 AND ABS(position_y-(-1988.2344))<10 AND ABS(position_z-(20.325523))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.632
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902186,190565,2444,13644,13722,'0',3541.2961,-1917.0122,3.4907942,2.52905011177063,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190565)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902186)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190565 AND map=2444 AND ABS(position_x-(3541.2961))<10 AND ABS(position_y-(-1917.0122))<10 AND ABS(position_z-(3.4907942))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:02.956
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902187,190565,2444,13644,13722,'0',3582.5183,-1987.599,10.671411,5.881349563598633,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190565)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902187)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190565 AND map=2444 AND ABS(position_x-(3582.5183))<10 AND ABS(position_y-(-1987.599))<10 AND ABS(position_z-(10.671411))<10);
-- Xelendus Felwatcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902188,190571,2444,13644,13939,'0',3594.408,-1392.8802,99.12609,0.5951664447784424,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190571)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902188)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190571 AND map=2444 AND ABS(position_x-(3594.408))<1000 AND ABS(position_y-(-1392.8802))<1000 AND ABS(position_z-(99.12609))<1000);
-- Cariel Roame; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902189,190575,2444,13644,13722,'0',3669.9531,-1903.7517,7.752075,4.181522369384766,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190575)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902189)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190575 AND map=2444 AND ABS(position_x-(3669.9531))<1000 AND ABS(position_y-(-1903.7517))<1000 AND ABS(position_z-(7.752075))<1000);
-- Tellywin Sharpfizzle; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:10.159
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902190,190577,2444,13644,13939,'0',3525.3003,-1462.757,94.79059,0.8443594574928284,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190577)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902190)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190577 AND map=2444 AND ABS(position_x-(3525.3003))<1000 AND ABS(position_y-(-1462.757))<1000 AND ABS(position_z-(94.79059))<1000);
-- Ancient Proto-Dragon; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:29.937
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902191,190587,2444,13644,13722,'0',3513.317,-2000.0139,91.706085,1.6776620149612427,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190587)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902191)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190587 AND map=2444 AND ABS(position_x-(3513.317))<1000 AND ABS(position_y-(-2000.0139))<1000 AND ABS(position_z-(91.706085))<1000);
-- Primal Proto-Dragon; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:02.956
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902192,190741,2444,13644,13722,'0',3416.861,-1914.1406,30.343426,0.9610922336578369,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190741)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902192)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190741 AND map=2444 AND ABS(position_x-(3416.861))<10 AND ABS(position_y-(-1914.1406))<10 AND ABS(position_z-(30.343426))<10);
-- Primal Proto-Dragon; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:47.446
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902193,190741,2444,13644,13722,'0',3434.5374,-1949.6302,22.339378,3.299943208694458,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190741)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902193)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190741 AND map=2444 AND ABS(position_x-(3434.5374))<10 AND ABS(position_y-(-1949.6302))<10 AND ABS(position_z-(22.339378))<10);
-- Primal Proto-Dragon; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.632
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902194,190741,2444,13644,13722,'0',3453.9011,-1945.3959,19.8428,2.2360422611236572,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190741)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902194)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190741 AND map=2444 AND ABS(position_x-(3453.9011))<10 AND ABS(position_y-(-1945.3959))<10 AND ABS(position_z-(19.8428))<10);
-- Bronze Timekeeper; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:25.979
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902195,190753,2444,13644,13939,'0',3567.4436,-1185.7709,214.8105,4.499518394470215,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=190753)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902195)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=190753 AND map=2444 AND ABS(position_x-(3567.4436))<1000 AND ABS(position_y-(-1185.7709))<1000 AND ABS(position_z-(214.8105))<1000);
-- Primal Scythid; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:40:27.575
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902196,191104,2444,13644,13722,'0',3366.6416,-1837.875,38.15751,2.184295892715454,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902196)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191104 AND map=2444 AND ABS(position_x-(3366.6416))<10 AND ABS(position_y-(-1837.875))<10 AND ABS(position_z-(38.15751))<10);
-- Primal Scythid; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:40:27.575
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902197,191104,2444,13644,13722,'0',3375.184,-1830.132,38.639866,2.6718249320983887,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902197)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191104 AND map=2444 AND ABS(position_x-(3375.184))<10 AND ABS(position_y-(-1830.132))<10 AND ABS(position_z-(38.639866))<10);
-- Primal Scythid; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:23.377
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902198,191104,2444,13644,13722,'0',3391.1077,-1861.5591,39.722084,5.384840488433838,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902198)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191104 AND map=2444 AND ABS(position_x-(3391.1077))<10 AND ABS(position_y-(-1861.5591))<10 AND ABS(position_z-(39.722084))<10);
-- Primal Scythid; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:20.942
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902199,191104,2444,13644,13722,'0',3391.466,-1884.4149,36.208183,3.6485183238983154,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902199)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191104 AND map=2444 AND ABS(position_x-(3391.466))<10 AND ABS(position_y-(-1884.4149))<10 AND ABS(position_z-(36.208183))<10);
-- Primal Scythid; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:00.958
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902200,191104,2444,13644,13722,'0',3416.9463,-1866.5348,34.279675,0,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902200)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191104 AND map=2444 AND ABS(position_x-(3416.9463))<10 AND ABS(position_y-(-1866.5348))<10 AND ABS(position_z-(34.279675))<10);
-- Primal Scythid; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:54.064
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902201,191104,2444,13644,13722,'0',3421.6433,-1910.3351,30.154383,3.5347156524658203,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902201)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191104 AND map=2444 AND ABS(position_x-(3421.6433))<10 AND ABS(position_y-(-1910.3351))<10 AND ABS(position_z-(30.154383))<10);
-- Primal Scythid; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:00.958
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902202,191104,2444,13644,13722,'0',3452.9036,-1843.3334,10.445633,0.766383171081543,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902202)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191104 AND map=2444 AND ABS(position_x-(3452.9036))<10 AND ABS(position_y-(-1843.3334))<10 AND ABS(position_z-(10.445633))<10);
-- Kite; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902203,191148,2444,13644,13722,'0',3717.4487,-1828.5087,5.726345,3.054856777191162,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191148)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902203)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191148 AND map=2444 AND ABS(position_x-(3717.4487))<1000 AND ABS(position_y-(-1828.5087))<1000 AND ABS(position_z-(5.726345))<1000);
-- Danielle Anglers; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902204,191150,2444,13644,13722,'0',3704.8489,-1833.8889,-0.036281534,6.1346659660339355,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191150)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902204)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191150 AND map=2444 AND ABS(position_x-(3704.8489))<1000 AND ABS(position_y-(-1833.8889))<1000 AND ABS(position_z-(-0.036281534))<1000);
-- Waren Gearhart; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902205,191161,2444,13644,13722,'0',3704.5774,-1830.8438,0.07603753,0.24634186923503876,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191161)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902205)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191161 AND map=2444 AND ABS(position_x-(3704.5774))<1000 AND ABS(position_y-(-1830.8438))<1000 AND ABS(position_z-(0.07603753))<1000);
-- Expedition Guardian; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:37.062
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902206,191169,2444,13644,13722,'0',3679.1165,-1907.6562,7.976622,1.960257649421692,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191169)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902206)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191169 AND map=2444 AND ABS(position_x-(3679.1165))<10 AND ABS(position_y-(-1907.6562))<10 AND ABS(position_z-(7.976622))<10);
-- Argali Lamb; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:52:25.748
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902207,191554,2444,13644,13939,'0',3398.5884,-1135.183,107.46036,0.9288579821586609,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191554)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902207)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191554 AND map=2444 AND ABS(position_x-(3398.5884))<1000 AND ABS(position_y-(-1135.183))<1000 AND ABS(position_z-(107.46036))<1000);
-- Dreadsquall Hatchling; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:49:35.894
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902208,191830,2444,13644,13939,'0',3413.3652,-1143.0159,123.84864,3.2775847911834717,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191830)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902208)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191830 AND map=2444 AND ABS(position_x-(3413.3652))<1000 AND ABS(position_y-(-1143.0159))<1000 AND ABS(position_z-(123.84864))<1000);
-- Cracked Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:21.089
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902209,191946,2444,13644,13939,'0',3430.5417,-1362.0591,100.50382,6.151883602142334,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=191946)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902209)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=191946 AND map=2444 AND ABS(position_x-(3430.5417))<1000 AND ABS(position_y-(-1362.0591))<1000 AND ABS(position_z-(100.50382))<1000);
-- Deirdre Flemmin; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902210,192048,2444,13644,13939,'0',3518.5166,-1459.6945,93.71736,0.236967533826828,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192048)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902210)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192048 AND map=2444 AND ABS(position_x-(3518.5166))<1000 AND ABS(position_y-(-1459.6945))<1000 AND ABS(position_z-(93.71736))<1000);
-- Veeno; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902211,192055,2444,13644,13939,'0',3602.611,-1395.8195,100.39148,1.2764201164245605,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192055)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902211)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192055 AND map=2444 AND ABS(position_x-(3602.611))<1000 AND ABS(position_y-(-1395.8195))<1000 AND ABS(position_z-(100.39148))<1000);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:37.353
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902212,192103,2444,13644,13722,'0',3455.7866,-1958.7012,18.093143,1.7411500215530396,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902212)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3455.7866))<10 AND ABS(position_y-(-1958.7012))<10 AND ABS(position_z-(18.093143))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:37.353
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902213,192103,2444,13644,13722,'0',3460.5474,-2011.7457,20.098995,5.811056137084961,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902213)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3460.5474))<10 AND ABS(position_y-(-2011.7457))<10 AND ABS(position_z-(20.098995))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:13.156
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902214,192103,2444,13644,13722,'0',3495.7832,-1950.4128,16.441793,0.05973024666309357,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902214)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3495.7832))<10 AND ABS(position_y-(-1950.4128))<10 AND ABS(position_z-(16.441793))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:59.142
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902215,192103,2444,13644,13722,'0',3500.4746,-2043.9336,21.265621,1.5590780973434448,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902215)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3500.4746))<10 AND ABS(position_y-(-2043.9336))<10 AND ABS(position_z-(21.265621))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902216,192103,2444,13644,13939,'0',3510.0479,-1408.0035,92.795715,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902216)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3510.0479))<10 AND ABS(position_y-(-1408.0035))<10 AND ABS(position_z-(92.795715))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:48.139
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902217,192103,2444,13644,13722,'0',3510.8877,-2025.4106,21.38631,3.648479461669922,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902217)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3510.8877))<10 AND ABS(position_y-(-2025.4106))<10 AND ABS(position_z-(21.38631))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:21.146
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902218,192103,2444,13644,13722,'0',3516.8457,-1663.6094,34.79335,4.338769435882568,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902218)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3516.8457))<10 AND ABS(position_y-(-1663.6094))<10 AND ABS(position_z-(34.79335))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:48.139
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902219,192103,2444,13644,13722,'0',3544.175,-2059.11,21.423954,0.7853981852531433,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902219)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3544.175))<10 AND ABS(position_y-(-2059.11))<10 AND ABS(position_z-(21.423954))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:45.294
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902220,192103,2444,13644,13722,'0',3544.7441,-1753.5059,22.210592,5.04941463470459,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902220)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3544.7441))<10 AND ABS(position_y-(-1753.5059))<10 AND ABS(position_z-(22.210592))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:18.714
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902221,192103,2444,13644,13722,'0',3564.486,-1702.0671,32.818054,2.3431735038757324,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902221)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3564.486))<10 AND ABS(position_y-(-1702.0671))<10 AND ABS(position_z-(32.818054))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:24.784
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902222,192103,2444,13644,13722,'0',3567.5164,-1675.7399,37.14061,4.743628978729248,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902222)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3567.5164))<10 AND ABS(position_y-(-1675.7399))<10 AND ABS(position_z-(37.14061))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902223,192103,2444,13644,13722,'0',3580.948,-1835.5536,15.63975,5.232179164886475,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902223)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3580.948))<10 AND ABS(position_y-(-1835.5536))<10 AND ABS(position_z-(15.63975))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:28.522
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902224,192103,2444,13644,13722,'0',3581.967,-1595.4153,55.04535,3.6466636657714844,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902224)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3581.967))<10 AND ABS(position_y-(-1595.4153))<10 AND ABS(position_z-(55.04535))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:12.525
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902225,192103,2444,13644,13939,'0',3609.5095,-1414.9514,98.718864,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902225)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3609.5095))<10 AND ABS(position_y-(-1414.9514))<10 AND ABS(position_z-(98.718864))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:28.522
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902226,192103,2444,13644,13722,'0',3613.8618,-1702.588,36.27633,1.1127606630325317,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902226)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3613.8618))<10 AND ABS(position_y-(-1702.588))<10 AND ABS(position_z-(36.27633))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:44.422
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902227,192103,2444,13644,13722,'0',3616.57,-1854.2201,12.409266,5.010638236999512,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902227)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3616.57))<10 AND ABS(position_y-(-1854.2201))<10 AND ABS(position_z-(12.409266))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:43.511
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902228,192103,2444,13644,13722,'0',3619.742,-1841.0184,15.607487,4.1743316650390625,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902228)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3619.742))<10 AND ABS(position_y-(-1841.0184))<10 AND ABS(position_z-(15.607487))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:29.575
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902229,192103,2444,13644,13722,'0',3621.3303,-1612.9604,57.571053,5.215590953826904,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902229)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3621.3303))<10 AND ABS(position_y-(-1612.9604))<10 AND ABS(position_z-(57.571053))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.396
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902230,192103,2444,13644,13722,'0',3649.7864,-1852.0316,9.546789,4.772517204284668,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902230)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3649.7864))<10 AND ABS(position_y-(-1852.0316))<10 AND ABS(position_z-(9.546789))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:44.331
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902231,192103,2444,13644,13722,'0',3688.7625,-1906.8427,8.631082,1.3976794481277466,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902231)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3688.7625))<10 AND ABS(position_y-(-1906.8427))<10 AND ABS(position_z-(8.631082))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902232,192103,2444,13644,13722,'0',3690.025,-1931.0192,10.524651,2.1798620223999023,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902232)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3690.025))<10 AND ABS(position_y-(-1931.0192))<10 AND ABS(position_z-(10.524651))<10);
-- Pricklefury Hare; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.427
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902233,192103,2444,13644,13722,'0',3691.9233,-1874.9939,5.856799,2.959667444229126,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192103)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902233)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192103 AND map=2444 AND ABS(position_x-(3691.9233))<10 AND ABS(position_y-(-1874.9939))<10 AND ABS(position_z-(5.856799))<10);
-- Magma Slug; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:56.214
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902234,192104,2444,13644,13722,'0',3461.8262,-2069.33,25.380651,5.2285051345825195,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902234)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192104 AND map=2444 AND ABS(position_x-(3461.8262))<10 AND ABS(position_y-(-2069.33))<10 AND ABS(position_z-(25.380651))<10);
-- Magma Slug; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:16.735
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902235,192104,2444,13644,13722,'0',3479.9114,-1800.1805,4.5582347,2.2752904891967773,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902235)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192104 AND map=2444 AND ABS(position_x-(3479.9114))<10 AND ABS(position_y-(-1800.1805))<10 AND ABS(position_z-(4.5582347))<10);
-- Magma Slug; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:35.532
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902236,192104,2444,13644,13722,'0',3493.4973,-1774.1818,10.835158,4.429755210876465,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902236)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192104 AND map=2444 AND ABS(position_x-(3493.4973))<10 AND ABS(position_y-(-1774.1818))<10 AND ABS(position_z-(10.835158))<10);
-- Magma Slug; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:12.591
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902237,192104,2444,13644,13722,'0',3508.5972,-1678.1947,26.632154,5.774525165557861,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902237)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192104 AND map=2444 AND ABS(position_x-(3508.5972))<10 AND ABS(position_y-(-1678.1947))<10 AND ABS(position_z-(26.632154))<10);
-- Magma Slug; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:31.057
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902238,192104,2444,13644,13722,'0',3612.1804,-2022.4595,31.47602,1.0278908014297485,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192104)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902238)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192104 AND map=2444 AND ABS(position_x-(3612.1804))<10 AND ABS(position_y-(-2022.4595))<10 AND ABS(position_z-(31.47602))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:25.440
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902239,192137,2444,13644,13939,'0',3407.8125,-1307.291,106.59958,1.5707963705062866,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902239)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3407.8125))<10 AND ABS(position_y-(-1307.291))<10 AND ABS(position_z-(106.59958))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:56.936
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902240,192137,2444,13644,13939,'0',3421.1592,-1271.056,105.047226,1.2346255779266357,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902240)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3421.1592))<10 AND ABS(position_y-(-1271.056))<10 AND ABS(position_z-(105.047226))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:06.125
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902241,192137,2444,13644,13939,'0',3442.0745,-1361.4524,99.83014,0.4797106385231018,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902241)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3442.0745))<10 AND ABS(position_y-(-1361.4524))<10 AND ABS(position_z-(99.83014))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:57.532
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902242,192137,2444,13644,13939,'0',3493.264,-1326.4075,103.873215,5.975702285766602,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902242)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3493.264))<10 AND ABS(position_y-(-1326.4075))<10 AND ABS(position_z-(103.873215))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:32.500
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902243,192137,2444,13644,13939,'0',3519.693,-1191.0139,165.38602,2.2780165672302246,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902243)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3519.693))<10 AND ABS(position_y-(-1191.0139))<10 AND ABS(position_z-(165.38602))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:49:29.969
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902244,192137,2444,13644,13939,'0',3523.1685,-1264.7871,107.88646,3.2649786472320557,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902244)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3523.1685))<10 AND ABS(position_y-(-1264.7871))<10 AND ABS(position_z-(107.88646))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:32.500
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902245,192137,2444,13644,13939,'0',3550.4563,-1175.5134,138.92955,4.706968307495117,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902245)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3550.4563))<10 AND ABS(position_y-(-1175.5134))<10 AND ABS(position_z-(138.92955))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:53:33.741
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902246,192137,2444,13644,13939,'0',3581.798,-1170.9113,217.53357,3.7684881687164307,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902246)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3581.798))<10 AND ABS(position_y-(-1170.9113))<10 AND ABS(position_z-(217.53357))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:45:39.147
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902247,192137,2444,13644,13939,'0',3585.3179,-1291.1655,118.25627,1.9807002544403076,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902247)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3585.3179))<10 AND ABS(position_y-(-1291.1655))<10 AND ABS(position_z-(118.25627))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:15.936
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902248,192137,2444,13644,13939,'0',3593.6777,-1227.5006,125.767456,3.15541410446167,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902248)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3593.6777))<10 AND ABS(position_y-(-1227.5006))<10 AND ABS(position_z-(125.767456))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:53:18.178
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902249,192137,2444,13644,13939,'0',3595.0046,-1160.7137,144.74072,2.9345126152038574,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902249)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3595.0046))<10 AND ABS(position_y-(-1160.7137))<10 AND ABS(position_z-(144.74072))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:40.999
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902250,192137,2444,13644,13939,'0',3613.9597,-1195.901,134.73364,0.10170867294073105,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902250)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3613.9597))<10 AND ABS(position_y-(-1195.901))<10 AND ABS(position_z-(134.73364))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:53:18.178
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902251,192137,2444,13644,13939,'0',3650,-1269.791,167.61969,3.9028077125549316,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902251)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3650))<10 AND ABS(position_y-(-1269.791))<10 AND ABS(position_z-(167.61969))<10);
-- Lava Flick; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:53:19.430
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902252,192137,2444,13644,13939,'0',3655.9395,-1206.7773,146.00168,3.683016777038574,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192137)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902252)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192137 AND map=2444 AND ABS(position_x-(3655.9395))<10 AND ABS(position_y-(-1206.7773))<10 AND ABS(position_z-(146.00168))<10);
-- Tranquil Tideskipper; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:24.186
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902253,192148,2444,13644,13722,'0',3775.1262,-2018.6769,-3.0745304,1.184516191482544,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192148)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902253)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192148 AND map=2444 AND ABS(position_x-(3775.1262))<10 AND ABS(position_y-(-2018.6769))<10 AND ABS(position_z-(-3.0745304))<10);
-- River Frillfish; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.470
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902254,192149,2444,13644,13722,'0',3748.2502,-2013.1047,-27.12486,3.290438413619995,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192149)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902254)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192149 AND map=2444 AND ABS(position_x-(3748.2502))<10 AND ABS(position_y-(-2013.1047))<10 AND ABS(position_z-(-27.12486))<10);
-- Smoothfin Mantacorn; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:30.703
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902255,192151,2444,13644,13722,'0',3362.6348,-2115.3394,-24.26023,0.9854792952537537,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192151)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902255)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192151 AND map=2444 AND ABS(position_x-(3362.6348))<10 AND ABS(position_y-(-2115.3394))<10 AND ABS(position_z-(-24.26023))<10);
-- Smoothfin Mantacorn; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:17.861
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902256,192151,2444,13644,13722,'0',3704.6453,-2149.8862,-11.613809,0.3932322859764099,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192151)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902256)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192151 AND map=2444 AND ABS(position_x-(3704.6453))<10 AND ABS(position_y-(-2149.8862))<10 AND ABS(position_z-(-11.613809))<10);
-- Smoothfin Mantacorn; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902257,192151,2444,13644,13722,'0',3784.2031,-2065.273,-34.309452,4.249665260314941,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192151)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902257)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192151 AND map=2444 AND ABS(position_x-(3784.2031))<10 AND ABS(position_y-(-2065.273))<10 AND ABS(position_z-(-34.309452))<10);
-- Smoothfin Mantacorn; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.470
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902258,192151,2444,13644,13722,'0',3799.4,-2028.4264,-34.309452,4.796107292175293,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192151)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902258)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192151 AND map=2444 AND ABS(position_x-(3799.4))<10 AND ABS(position_y-(-2028.4264))<10 AND ABS(position_z-(-34.309452))<10);
-- Smoothfin Mantacorn; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.470
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902259,192151,2444,13644,13722,'0',3864.2983,-1915.5929,-19.343567,2.8991165161132812,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192151)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902259)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192151 AND map=2444 AND ABS(position_x-(3864.2983))<10 AND ABS(position_y-(-1915.5929))<10 AND ABS(position_z-(-19.343567))<10);
-- Sihua; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902260,192207,2444,13644,13939,'0',3598.4348,-1395.5955,99.1186,0.25930559635162354,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192207)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902260)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192207 AND map=2444 AND ABS(position_x-(3598.4348))<1000 AND ABS(position_y-(-1395.5955))<1000 AND ABS(position_z-(99.1186))<1000);
-- Mia Pyke; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:12.525
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902261,192210,2444,13644,13939,'0',3515.1267,-1456.606,93.71736,0.5964884161949158,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192210)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902261)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192210 AND map=2444 AND ABS(position_x-(3515.1267))<1000 AND ABS(position_y-(-1456.606))<1000 AND ABS(position_z-(93.71736))<1000);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:55:10.617
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902262,192227,2444,13644,13939,'0',3464.193,-1359.7351,98.32626,4.8328657150268555,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192227)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902262)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192227 AND map=2444 AND ABS(position_x-(3464.193))<10 AND ABS(position_y-(-1359.7351))<10 AND ABS(position_z-(98.32626))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:53.601
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902263,192227,2444,13644,13939,'0',3478.3032,-1342.6587,104.33731,5.1863884925842285,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192227)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902263)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192227 AND map=2444 AND ABS(position_x-(3478.3032))<10 AND ABS(position_y-(-1342.6587))<10 AND ABS(position_z-(104.33731))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:56:56.458
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902264,192227,2444,13644,13939,'0',3480.1367,-1386.8928,95.78848,5.431374549865723,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192227)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902264)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192227 AND map=2444 AND ABS(position_x-(3480.1367))<10 AND ABS(position_y-(-1386.8928))<10 AND ABS(position_z-(95.78848))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:57:14.629
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902265,192227,2444,13644,13939,'0',3484.734,-1373.9403,96.44373,5.69085168838501,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192227)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902265)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192227 AND map=2444 AND ABS(position_x-(3484.734))<10 AND ABS(position_y-(-1373.9403))<10 AND ABS(position_z-(96.44373))<10);
-- Encroaching Lava; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:56:34.308
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902266,192227,2444,13644,13939,'0',3495.3074,-1381.4833,94.233894,5.632538795471191,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192227)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902266)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192227 AND map=2444 AND ABS(position_x-(3495.3074))<10 AND ABS(position_y-(-1381.4833))<10 AND ABS(position_z-(94.233894))<10);
-- Baron Ashflow; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:12.461
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902267,192274,2444,13644,13939,'0',3618.5747,-1162.9219,138.73494,4.4349188804626465,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192274)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902267)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192274 AND map=2444 AND ABS(position_x-(3618.5747))<1000 AND ABS(position_y-(-1162.9219))<1000 AND ABS(position_z-(138.73494))<1000);
-- Cracked Elemental; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:12.525
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902268,192407,2444,13644,13939,'0',3531.2283,-1436.2188,93.85146,6.151883125305176,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192407)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902268)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192407 AND map=2444 AND ABS(position_x-(3531.2283))<1000 AND ABS(position_y-(-1436.2188))<1000 AND ABS(position_z-(93.85146))<1000);
-- Haephesta; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:46:04.282
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902269,192438,2444,13644,13939,'0',3539.9602,-1441.9427,92.927124,4.773675918579102,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192438)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902269)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192438 AND map=2444 AND ABS(position_x-(3539.9602))<1000 AND ABS(position_y-(-1441.9427))<1000 AND ABS(position_z-(92.927124))<1000);
-- Tixxa Mixxa; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902270,192490,2444,13644,13939,'0',3507.9888,-1411.6007,93.66729,0.16056092083454132,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192490)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902270)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192490 AND map=2444 AND ABS(position_x-(3507.9888))<1000 AND ABS(position_y-(-1411.6007))<1000 AND ABS(position_z-(93.66729))<1000);
-- Feilin Kuan; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:06.770
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902271,192549,2444,13644,13939,'0',3561.5234,-1478.4497,94.376076,5.6907854080200195,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192549)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902271)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192549 AND map=2444 AND ABS(position_x-(3561.5234))<1000 AND ABS(position_y-(-1478.4497))<1000 AND ABS(position_z-(94.376076))<1000);
-- Toninaar; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902272,192558,2444,13644,13939,'0',3521.9817,-1464.8055,93.72612,1.1123278141021729,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192558)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902272)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192558 AND map=2444 AND ABS(position_x-(3521.9817))<1000 AND ABS(position_y-(-1464.8055))<1000 AND ABS(position_z-(93.72612))<1000);
-- Kholmar Sunrunner; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902273,192563,2444,13644,13939,'0',3541.251,-1444.9132,93.899025,1.584240436553955,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192563)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902273)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192563 AND map=2444 AND ABS(position_x-(3541.251))<1000 AND ABS(position_y-(-1444.9132))<1000 AND ABS(position_z-(93.899025))<1000);
-- Zayn Starmaker; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902274,192565,2444,13644,13939,'0',3604.5774,-1396.7396,99.1186,2.216430425643921,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=192565)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902274)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=192565 AND map=2444 AND ABS(position_x-(3604.5774))<1000 AND ABS(position_y-(-1396.7396))<1000 AND ABS(position_z-(99.1186))<1000);
-- Kindlet; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:21.990
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902275,193001,2444,13644,13939,'0',3420.6753,-1320.8438,106.568245,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193001)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902275)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193001 AND map=2444 AND ABS(position_x-(3420.6753))<10 AND ABS(position_y-(-1320.8438))<10 AND ABS(position_z-(106.568245))<10);
-- Kindlet; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:16.735
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902276,193001,2444,13644,13722,'0',3464.4497,-1786.1528,6.505356,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193001)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902276)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193001 AND map=2444 AND ABS(position_x-(3464.4497))<10 AND ABS(position_y-(-1786.1528))<10 AND ABS(position_z-(6.505356))<10);
-- Kindlet; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:57.532
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902277,193001,2444,13644,13939,'0',3517.9158,-1313.2048,104.10193,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193001)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902277)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193001 AND map=2444 AND ABS(position_x-(3517.9158))<10 AND ABS(position_y-(-1313.2048))<10 AND ABS(position_z-(104.10193))<10);
-- Kindlet; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:49:29.969
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902278,193001,2444,13644,13939,'0',3519.231,-1252.4723,111.22127,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193001)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902278)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193001 AND map=2444 AND ABS(position_x-(3519.231))<10 AND ABS(position_y-(-1252.4723))<10 AND ABS(position_z-(111.22127))<10);
-- Kindlet; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:53:17.043
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902279,193001,2444,13644,13939,'0',3596.1025,-1171.5903,141.70961,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193001)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902279)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193001 AND map=2444 AND ABS(position_x-(3596.1025))<10 AND ABS(position_y-(-1171.5903))<10 AND ABS(position_z-(141.70961))<10);
-- Emberling; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:44.728
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902280,193024,2444,13644,13722,'0',3530.252,-2038.6573,21.131039,4.3418073654174805,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193024)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902280)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193024 AND map=2444 AND ABS(position_x-(3530.252))<10 AND ABS(position_y-(-2038.6573))<10 AND ABS(position_z-(21.131039))<10);
-- Emberling; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:25.748
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902281,193026,2444,13644,13939,'0',3473.3247,-1391.4462,97.324646,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193026)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902281)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193026 AND map=2444 AND ABS(position_x-(3473.3247))<10 AND ABS(position_y-(-1391.4462))<10 AND ABS(position_z-(97.324646))<10);
-- Emberling; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:03.610
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902282,193026,2444,13644,13722,'0',3481.0925,-1693.6035,29.20052,0.5036393404006958,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193026)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902282)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193026 AND map=2444 AND ABS(position_x-(3481.0925))<10 AND ABS(position_y-(-1693.6035))<10 AND ABS(position_z-(29.20052))<10);
-- Emberling; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:12.591
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902283,193026,2444,13644,13722,'0',3487.6223,-1679.1077,13.181899,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193026)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902283)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193026 AND map=2444 AND ABS(position_x-(3487.6223))<10 AND ABS(position_y-(-1679.1077))<10 AND ABS(position_z-(13.181899))<10);
-- Emberling; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:57.532
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902284,193026,2444,13644,13939,'0',3545.855,-1309.2291,111.09102,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193026)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902284)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193026 AND map=2444 AND ABS(position_x-(3545.855))<10 AND ABS(position_y-(-1309.2291))<10 AND ABS(position_z-(111.09102))<10);
-- Emberling; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:31.312
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902285,193026,2444,13644,13939,'0',3584.0989,-1189.9827,134.22891,0,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193026)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902285)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193026 AND map=2444 AND ABS(position_x-(3584.0989))<10 AND ABS(position_y-(-1189.9827))<10 AND ABS(position_z-(134.22891))<10);
-- Emberling; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:45:42.811
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902286,193026,2444,13644,13939,'0',3593.0352,-1271.7656,130.45941,5.942636966705322,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193026)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902286)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193026 AND map=2444 AND ABS(position_x-(3593.0352))<10 AND ABS(position_y-(-1271.7656))<10 AND ABS(position_z-(130.45941))<10);
-- Sendrax; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:59.526
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902287,193362,2444,13644,13939,'0',3581.514,-1455.5122,91.41146,5.369129180908203,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193362)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902287)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193362 AND map=2444 AND ABS(position_x-(3581.514))<1000 AND ABS(position_y-(-1455.5122))<1000 AND ABS(position_z-(91.41146))<1000);
-- Ambassador Fastrasz; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:12.525
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902288,193393,2444,13644,13939,'0',3477.77,-1436.0035,93.448586,0.22664353251457214,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193393)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902288)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193393 AND map=2444 AND ABS(position_x-(3477.77))<1000 AND ABS(position_y-(-1436.0035))<1000 AND ABS(position_z-(93.448586))<1000);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:48.811
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902289,193671,2444,13644,13939,'0',3306.5417,-1360.6788,72.41075,0.4845578968524933,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902289)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3306.5417))<10 AND ABS(position_y-(-1360.6788))<10 AND ABS(position_z-(72.41075))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:08.648
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902290,193671,2444,13644,13939,'0',3375.52,-1436.2466,100.386734,4.939796447753906,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902290)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3375.52))<10 AND ABS(position_y-(-1436.2466))<10 AND ABS(position_z-(100.386734))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:03.784
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902291,193671,2444,13644,13939,'0',3391.087,-1390.3212,102.51656,1.7434741258621216,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902291)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3391.087))<10 AND ABS(position_y-(-1390.3212))<10 AND ABS(position_z-(102.51656))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:04.917
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902292,193671,2444,13644,13939,'0',3419.4314,-1334.2031,105.154686,0.5388480424880981,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902292)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3419.4314))<10 AND ABS(position_y-(-1334.2031))<10 AND ABS(position_z-(105.154686))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:47:53.993
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902293,193671,2444,13644,13939,'0',3437.8665,-1387.625,101.63521,0.5388480424880981,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902293)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3437.8665))<10 AND ABS(position_y-(-1387.625))<10 AND ABS(position_z-(101.63521))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:15.771
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902294,193671,2444,13644,13939,'0',3496.5417,-1279.7986,102.1908,5.543914318084717,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902294)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3496.5417))<10 AND ABS(position_y-(-1279.7986))<10 AND ABS(position_z-(102.1908))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:56.936
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902295,193671,2444,13644,13939,'0',3515.9011,-1243.724,110.868645,0.5388480424880981,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902295)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3515.9011))<10 AND ABS(position_y-(-1243.724))<10 AND ABS(position_z-(110.868645))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:47:53.993
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902296,193671,2444,13644,13939,'0',3519.2622,-1319.6632,102.004036,0.046067360788583755,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902296)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3519.2622))<10 AND ABS(position_y-(-1319.6632))<10 AND ABS(position_z-(102.004036))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:14.629
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902297,193671,2444,13644,13939,'0',3556.177,-1163.3767,138.98694,3.2927887439727783,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902297)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3556.177))<10 AND ABS(position_y-(-1163.3767))<10 AND ABS(position_z-(138.98694))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:49:30.993
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902298,193671,2444,13644,13939,'0',3570.4202,-1218.5,121.214294,0.9572955965995789,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902298)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3570.4202))<10 AND ABS(position_y-(-1218.5))<10 AND ABS(position_z-(121.214294))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:15.936
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902299,193671,2444,13644,13939,'0',3578.1433,-1160.8733,143.09978,4.7643914222717285,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902299)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3578.1433))<10 AND ABS(position_y-(-1160.8733))<10 AND ABS(position_z-(143.09978))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:48:19.244
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902300,193671,2444,13644,13939,'0',3591.2092,-1296.1875,119.137985,0.681494414806366,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902300)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3591.2092))<10 AND ABS(position_y-(-1296.1875))<10 AND ABS(position_z-(119.137985))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:12.461
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902301,193671,2444,13644,13939,'0',3605.8906,-1244.5035,127.7486,0.8906872868537903,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902301)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3605.8906))<10 AND ABS(position_y-(-1244.5035))<10 AND ABS(position_z-(127.7486))<10);
-- Volcanic Geode; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:51:31.312
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902302,193671,2444,13644,13939,'0',3659.1746,-1215.2101,145.86159,4.7643914222717285,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902302)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193671 AND map=2444 AND ABS(position_x-(3659.1746))<10 AND ABS(position_y-(-1215.2101))<10 AND ABS(position_z-(145.86159))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:49.319
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902303,193806,2444,13644,13722,'0',3373.3079,-2044.9069,44.946445,5.822230339050293,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902303)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3373.3079))<10 AND ABS(position_y-(-2044.9069))<10 AND ABS(position_z-(44.946445))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:46.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902304,193806,2444,13644,13722,'0',3423.8777,-1869.0903,30.718884,3.115732192993164,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902304)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3423.8777))<10 AND ABS(position_y-(-1869.0903))<10 AND ABS(position_z-(30.718884))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:31.057
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902305,193806,2444,13644,13722,'0',3438.1926,-2033.5416,24.329042,0.7847323417663574,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902305)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3438.1926))<10 AND ABS(position_y-(-2033.5416))<10 AND ABS(position_z-(24.329042))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:46.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902306,193806,2444,13644,13722,'0',3442.2083,-1939.632,21.883202,2.126892566680908,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902306)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3442.2083))<10 AND ABS(position_y-(-1939.632))<10 AND ABS(position_z-(21.883202))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.632
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902307,193806,2444,13644,13722,'0',3455.751,-1841.9902,8.60206,3.5823497772216797,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902307)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3455.751))<10 AND ABS(position_y-(-1841.9902))<10 AND ABS(position_z-(8.60206))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:38.548
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902308,193806,2444,13644,13722,'0',3456.4407,-1915.5688,69.32297,1.0692417621612549,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902308)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3456.4407))<10 AND ABS(position_y-(-1915.5688))<10 AND ABS(position_z-(69.32297))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:45.095
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902309,193806,2444,13644,13722,'0',3461.1855,-1814.3452,56.802334,5.391504764556885,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902309)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3461.1855))<10 AND ABS(position_y-(-1814.3452))<10 AND ABS(position_z-(56.802334))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902310,193806,2444,13644,13722,'0',3469.335,-1873.7441,-0.36331654,5.6174540519714355,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902310)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3469.335))<10 AND ABS(position_y-(-1873.7441))<10 AND ABS(position_z-(-0.36331654))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.632
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902311,193806,2444,13644,13722,'0',3472.8186,-1959.2882,17.692448,1.5721327066421509,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902311)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3472.8186))<10 AND ABS(position_y-(-1959.2882))<10 AND ABS(position_z-(17.692448))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:16.735
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902312,193806,2444,13644,13722,'0',3478.1165,-1701.9966,28.934355,5.76388692855835,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902312)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3478.1165))<10 AND ABS(position_y-(-1701.9966))<10 AND ABS(position_z-(28.934355))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:13.156
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902313,193806,2444,13644,13722,'0',3483.4739,-2028.5243,102.41756,0.9390643239021301,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902313)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3483.4739))<10 AND ABS(position_y-(-2028.5243))<10 AND ABS(position_z-(102.41756))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:31.196
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902314,193806,2444,13644,13722,'0',3483.5947,-1766.3125,13.2433405,4.415325164794922,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902314)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3483.5947))<10 AND ABS(position_y-(-1766.3125))<10 AND ABS(position_z-(13.2433405))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902315,193806,2444,13644,13722,'0',3488.9873,-1905.6777,1.4561806,1.528558611869812,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902315)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3488.9873))<10 AND ABS(position_y-(-1905.6777))<10 AND ABS(position_z-(1.4561806))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.632
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902316,193806,2444,13644,13722,'0',3491.9385,-1998.8923,24.622837,3.956132173538208,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902316)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3491.9385))<10 AND ABS(position_y-(-1998.8923))<10 AND ABS(position_z-(24.622837))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:43.269
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902317,193806,2444,13644,13722,'0',3494.7805,-2099.7847,27.352541,1.451596975326538,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902317)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3494.7805))<10 AND ABS(position_y-(-2099.7847))<10 AND ABS(position_z-(27.352541))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:35:52.154
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902318,193806,2444,13644,13722,'0',3503.9993,-1898.1907,39.869926,0.7236261367797852,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902318)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3503.9993))<10 AND ABS(position_y-(-1898.1907))<10 AND ABS(position_z-(39.869926))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:03.130
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902319,193806,2444,13644,13722,'0',3507.8647,-1894.3947,-0.17920893,2.3152177333831787,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902319)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3507.8647))<10 AND ABS(position_y-(-1894.3947))<10 AND ABS(position_z-(-0.17920893))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:35:54.608
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902320,193806,2444,13644,13722,'0',3509.2246,-1888.2714,60.843735,5.37754487991333,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902320)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3509.2246))<10 AND ABS(position_y-(-1888.2714))<10 AND ABS(position_z-(60.843735))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:35:49.712
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902321,193806,2444,13644,13722,'0',3511.402,-1950.6124,12.4574795,6.054777145385742,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902321)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3511.402))<10 AND ABS(position_y-(-1950.6124))<10 AND ABS(position_z-(12.4574795))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:03.130
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902322,193806,2444,13644,13722,'0',3514.0847,-1837.9991,-0.17094988,3.8101918697357178,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902322)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3514.0847))<10 AND ABS(position_y-(-1837.9991))<10 AND ABS(position_z-(-0.17094988))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:03.130
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902323,193806,2444,13644,13722,'0',3518.947,-1967.9341,18.543886,0.588552713394165,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902323)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3518.947))<10 AND ABS(position_y-(-1967.9341))<10 AND ABS(position_z-(18.543886))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:45.294
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902324,193806,2444,13644,13722,'0',3532.429,-1656.1389,39.234375,4.080657005310059,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902324)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3532.429))<10 AND ABS(position_y-(-1656.1389))<10 AND ABS(position_z-(39.234375))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:10.284
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902325,193806,2444,13644,13722,'0',3534.1155,-1744.1774,87.17958,3.98750638961792,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902325)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3534.1155))<10 AND ABS(position_y-(-1744.1774))<10 AND ABS(position_z-(87.17958))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902326,193806,2444,13644,13722,'0',3534.2942,-1869.2517,1.1516209,2.182982921600342,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902326)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3534.2942))<10 AND ABS(position_y-(-1869.2517))<10 AND ABS(position_z-(1.1516209))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:43:51.188
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902327,193806,2444,13644,13722,'0',3537.6821,-1970.447,15.633722,1.8313987255096436,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902327)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3537.6821))<10 AND ABS(position_y-(-1970.447))<10 AND ABS(position_z-(15.633722))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:03.130
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902328,193806,2444,13644,13722,'0',3541.7778,-2001.8229,19.574112,1.8659182786941528,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902328)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3541.7778))<10 AND ABS(position_y-(-2001.8229))<10 AND ABS(position_z-(19.574112))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:32.653
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902329,193806,2444,13644,13722,'0',3553.6091,-1792.1324,45.804173,0.9013341069221497,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902329)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3553.6091))<10 AND ABS(position_y-(-1792.1324))<10 AND ABS(position_z-(45.804173))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:55.491
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902330,193806,2444,13644,13722,'0',3554.049,-2145.0623,52.380848,1.3749397993087769,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902330)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3554.049))<10 AND ABS(position_y-(-2145.0623))<10 AND ABS(position_z-(52.380848))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:02.956
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902331,193806,2444,13644,13722,'0',3555.494,-2069.6753,19.224533,0.870460569858551,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902331)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3555.494))<10 AND ABS(position_y-(-2069.6753))<10 AND ABS(position_z-(19.224533))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:15.580
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902332,193806,2444,13644,13722,'0',3557.0164,-2083.0686,47.434837,1.9640915393829346,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902332)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3557.0164))<10 AND ABS(position_y-(-2083.0686))<10 AND ABS(position_z-(47.434837))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:33.971
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902333,193806,2444,13644,13722,'0',3558.886,-1782.0823,45.804173,4.423408508300781,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902333)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3558.886))<10 AND ABS(position_y-(-1782.0823))<10 AND ABS(position_z-(45.804173))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902334,193806,2444,13644,13722,'0',3567.0486,-1919.8733,11.698996,0.588552713394165,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902334)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3567.0486))<10 AND ABS(position_y-(-1919.8733))<10 AND ABS(position_z-(11.698996))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902335,193806,2444,13644,13722,'0',3580.303,-1849.0712,14.504083,5.76388692855835,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902335)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3580.303))<10 AND ABS(position_y-(-1849.0712))<10 AND ABS(position_z-(14.504083))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902336,193806,2444,13644,13722,'0',3583.6372,-2012.1719,9.817873,5.584734916687012,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902336)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3583.6372))<10 AND ABS(position_y-(-2012.1719))<10 AND ABS(position_z-(9.817873))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:35:33.466
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902337,193806,2444,13644,13722,'0',3592.5325,-1916.9675,30.543583,1.823168396949768,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902337)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3592.5325))<10 AND ABS(position_y-(-1916.9675))<10 AND ABS(position_z-(30.543583))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902338,193806,2444,13644,13722,'0',3611.4062,-1961.191,15.781382,2.2992453575134277,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902338)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3611.4062))<10 AND ABS(position_y-(-1961.191))<10 AND ABS(position_z-(15.781382))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902339,193806,2444,13644,13722,'0',3618.8376,-1707.6719,35.498264,3.445585012435913,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902339)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3618.8376))<10 AND ABS(position_y-(-1707.6719))<10 AND ABS(position_z-(35.498264))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902340,193806,2444,13644,13722,'0',3624.5044,-1840.8837,16.799616,3.235166549682617,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902340)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3624.5044))<10 AND ABS(position_y-(-1840.8837))<10 AND ABS(position_z-(16.799616))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902341,193806,2444,13644,13722,'0',3635.2554,-1870.4792,10.621566,0.2023305892944336,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902341)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3635.2554))<10 AND ABS(position_y-(-1870.4792))<10 AND ABS(position_z-(10.621566))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.218
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902342,193806,2444,13644,13722,'0',3653.3406,-1717.3163,70.712425,3.740262508392334,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902342)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3653.3406))<10 AND ABS(position_y-(-1717.3163))<10 AND ABS(position_z-(70.712425))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902343,193806,2444,13644,13722,'0',3675.1094,-1708.9305,34.643696,3.2428736686706543,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902343)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3675.1094))<10 AND ABS(position_y-(-1708.9305))<10 AND ABS(position_z-(34.643696))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:56.801
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902344,193806,2444,13644,13722,'0',3700.3264,-1711.8108,61.916267,5.5808515548706055,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902344)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3700.3264))<10 AND ABS(position_y-(-1711.8108))<10 AND ABS(position_z-(61.916267))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:33.714
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902345,193806,2444,13644,13722,'0',3731.9521,-1716.3949,61.916267,3.5577664375305176,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193806)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902345)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193806 AND map=2444 AND ABS(position_x-(3731.9521))<10 AND ABS(position_y-(-1716.3949))<10 AND ABS(position_z-(61.916267))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:02.207
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902346,193811,2444,13644,13722,'0',3447.5999,-1794.2795,68.58807,5.804925441741943,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902346)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3447.5999))<10 AND ABS(position_y-(-1794.2795))<10 AND ABS(position_z-(68.58807))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:35.532
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902347,193811,2444,13644,13722,'0',3516.3352,-1706.6962,77.9578,1.259960651397705,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902347)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3516.3352))<10 AND ABS(position_y-(-1706.6962))<10 AND ABS(position_z-(77.9578))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:35.532
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902348,193811,2444,13644,13722,'0',3537.381,-1718.5087,77.73291,6.017306804656982,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902348)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3537.381))<10 AND ABS(position_y-(-1718.5087))<10 AND ABS(position_z-(77.73291))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:13.156
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902349,193811,2444,13644,13722,'0',3569.033,-2064.8438,95.68813,1.3627005815505981,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902349)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3569.033))<10 AND ABS(position_y-(-2064.8438))<10 AND ABS(position_z-(95.68813))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902350,193811,2444,13644,13722,'0',3599.8628,-2032.9236,30.45813,2.367518186569214,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902350)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3599.8628))<10 AND ABS(position_y-(-2032.9236))<10 AND ABS(position_z-(30.45813))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:55:19.091
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902351,193811,2444,13644,13722,'0',3602.4888,-1626.7153,68.4765,2.022416353225708,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902351)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3602.4888))<10 AND ABS(position_y-(-1626.7153))<10 AND ABS(position_z-(68.4765))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902352,193811,2444,13644,13722,'0',3618.7935,-1966.8438,76.33008,0.6494501829147339,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902352)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3618.7935))<10 AND ABS(position_y-(-1966.8438))<10 AND ABS(position_z-(76.33008))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.396
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902353,193811,2444,13644,13722,'0',3652.4062,-1982.4098,54.382736,0.6494501829147339,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902353)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3652.4062))<10 AND ABS(position_y-(-1982.4098))<10 AND ABS(position_z-(54.382736))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.396
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902354,193811,2444,13644,13722,'0',3666.7266,-1997.9723,54.85146,1.1827449798583984,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902354)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3666.7266))<10 AND ABS(position_y-(-1997.9723))<10 AND ABS(position_z-(54.85146))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902355,193811,2444,13644,13722,'0',3669.4766,-1943.4896,30.098278,0.6494501829147339,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902355)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3669.4766))<10 AND ABS(position_y-(-1943.4896))<10 AND ABS(position_z-(30.098278))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902356,193811,2444,13644,13722,'0',3683.3274,-1811.9567,71.04818,5.373510837554932,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193811)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902356)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193811 AND map=2444 AND ABS(position_x-(3683.3274))<10 AND ABS(position_y-(-1811.9567))<10 AND ABS(position_z-(71.04818))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:23.377
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902357,193816,2444,13644,13722,'0',3350.7031,-1896.9983,92.557625,6.173580169677734,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902357)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3350.7031))<10 AND ABS(position_y-(-1896.9983))<10 AND ABS(position_z-(92.557625))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:19.724
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902358,193816,2444,13644,13722,'0',3355.553,-1913.1736,90.92763,0.3385697901248932,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902358)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3355.553))<10 AND ABS(position_y-(-1913.1736))<10 AND ABS(position_z-(90.92763))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:47.446
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902359,193816,2444,13644,13722,'0',3449.6182,-1802.7188,70.91301,5.999083518981934,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902359)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3449.6182))<10 AND ABS(position_y-(-1802.7188))<10 AND ABS(position_z-(70.91301))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:40:46.798
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902360,193816,2444,13644,13722,'0',3488.1267,-1730.1649,73.83453,5.3852057456970215,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902360)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3488.1267))<10 AND ABS(position_y-(-1730.1649))<10 AND ABS(position_z-(73.83453))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:03.130
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902361,193816,2444,13644,13722,'0',3584.5173,-2045.0764,29.648052,2.4226675033569336,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902361)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3584.5173))<10 AND ABS(position_y-(-2045.0764))<10 AND ABS(position_z-(29.648052))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:10.415
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902362,193816,2444,13644,13722,'0',3603.2925,-1737.9062,64.02958,2.8206093311309814,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902362)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3603.2925))<10 AND ABS(position_y-(-1737.9062))<10 AND ABS(position_z-(64.02958))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:02.956
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902363,193816,2444,13644,13722,'0',3604.9575,-2061.5034,64.969666,1.7685519456863403,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902363)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3604.9575))<10 AND ABS(position_y-(-2061.5034))<10 AND ABS(position_z-(64.969666))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.470
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902364,193816,2444,13644,13722,'0',3621.303,-2024.8385,33.93165,2.753242015838623,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902364)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3621.303))<10 AND ABS(position_y-(-2024.8385))<10 AND ABS(position_z-(33.93165))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902365,193816,2444,13644,13722,'0',3624.7908,-1973.375,73.46228,0.7140584588050842,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902365)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3624.7908))<10 AND ABS(position_y-(-1973.375))<10 AND ABS(position_z-(73.46228))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902366,193816,2444,13644,13722,'0',3633.8125,-1917.8247,63.46257,0.535947859287262,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902366)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3633.8125))<10 AND ABS(position_y-(-1917.8247))<10 AND ABS(position_z-(63.46257))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902367,193816,2444,13644,13722,'0',3637.4097,-1905.7257,60.716988,0.8448782563209534,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902367)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3637.4097))<10 AND ABS(position_y-(-1905.7257))<10 AND ABS(position_z-(60.716988))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.396
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902368,193816,2444,13644,13722,'0',3647.6467,-1943.0104,43.489082,0.5707724094390869,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902368)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3647.6467))<10 AND ABS(position_y-(-1943.0104))<10 AND ABS(position_z-(43.489082))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902369,193816,2444,13644,13722,'0',3665.9792,-1941.9896,30.595118,0.938156008720398,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902369)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3665.9792))<10 AND ABS(position_y-(-1941.9896))<10 AND ABS(position_z-(30.595118))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.396
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902370,193816,2444,13644,13722,'0',3670.6025,-2003.3611,53.89982,1.0870070457458496,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902370)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3670.6025))<10 AND ABS(position_y-(-2003.3611))<10 AND ABS(position_z-(53.89982))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902371,193816,2444,13644,13722,'0',3686.7014,-1802.5712,72.56178,5.780449867248535,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902371)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3686.7014))<10 AND ABS(position_y-(-1802.5712))<10 AND ABS(position_z-(72.56178))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902372,193816,2444,13644,13722,'0',3697.4531,-1798.4548,68.04221,5.639866828918457,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902372)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3697.4531))<10 AND ABS(position_y-(-1798.4548))<10 AND ABS(position_z-(68.04221))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902373,193816,2444,13644,13722,'0',3760.1511,-1793.5903,1.8336759,1.5744059085845947,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193816)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902373)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193816 AND map=2444 AND ABS(position_x-(3760.1511))<10 AND ABS(position_y-(-1793.5903))<10 AND ABS(position_z-(1.8336759))<10);
-- Vish the Sneak; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:12.525
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902374,193838,2444,13644,13939,'0',3544.458,-1435.8075,91.94277,4.253108501434326,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193838)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902374)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193838 AND map=2444 AND ABS(position_x-(3544.458))<1000 AND ABS(position_y-(-1435.8075))<1000 AND ABS(position_z-(91.94277))<1000);
-- Expedition Surveyor; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902375,193858,2444,13644,13939,'0',3579.8635,-1424.3479,95.565704,1.6595996618270874,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193858)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902375)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193858 AND map=2444 AND ABS(position_x-(3579.8635))<1000 AND ABS(position_y-(-1424.3479))<1000 AND ABS(position_z-(95.565704))<1000);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:39:26.975
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902376,193876,2444,13644,13722,'0',3444.0042,-2042.3615,42.65819,1.1707226037979126,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902376)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3444.0042))<10 AND ABS(position_y-(-2042.3615))<10 AND ABS(position_z-(42.65819))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:37.353
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902377,193876,2444,13644,13722,'0',3462.4497,-1988.9271,20.13176,1.790481686592102,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902377)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3462.4497))<10 AND ABS(position_y-(-1988.9271))<10 AND ABS(position_z-(20.13176))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:32.692
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902378,193876,2444,13644,13722,'0',3473.718,-1769.5892,25.40061,4.830253601074219,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902378)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3473.718))<10 AND ABS(position_y-(-1769.5892))<10 AND ABS(position_z-(25.40061))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:19.231
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902379,193876,2444,13644,13722,'0',3481.7944,-1779.3489,25.400621,6.0982842445373535,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902379)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3481.7944))<10 AND ABS(position_y-(-1779.3489))<10 AND ABS(position_z-(25.400621))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:46.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902380,193876,2444,13644,13722,'0',3511.0896,-1896.7341,13.875988,4.69434118270874,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902380)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3511.0896))<10 AND ABS(position_y-(-1896.7341))<10 AND ABS(position_z-(13.875988))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:35.532
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902381,193876,2444,13644,13722,'0',3514.9392,-1780.1805,13.472222,0.8723526000976562,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902381)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3514.9392))<10 AND ABS(position_y-(-1780.1805))<10 AND ABS(position_z-(13.472222))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:46.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902382,193876,2444,13644,13722,'0',3516.341,-1913.9862,13.875988,0.07743749022483826,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902382)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3516.341))<10 AND ABS(position_y-(-1913.9862))<10 AND ABS(position_z-(13.875988))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:29.765
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902383,193876,2444,13644,13722,'0',3519.5188,-1996.31,40.57985,0.1932545006275177,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902383)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3519.5188))<10 AND ABS(position_y-(-1996.31))<10 AND ABS(position_z-(40.57985))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:33.586
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902384,193876,2444,13644,13722,'0',3523.6418,-1893.8916,13.875987,1.3944467306137085,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902384)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3523.6418))<10 AND ABS(position_y-(-1893.8916))<10 AND ABS(position_z-(13.875987))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:24.816
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902385,193876,2444,13644,13722,'0',3523.6912,-2079.147,45.18181,0.8602454662322998,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902385)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3523.6912))<10 AND ABS(position_y-(-2079.147))<10 AND ABS(position_z-(45.18181))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:52.374
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902386,193876,2444,13644,13722,'0',3523.7546,-1823.8564,36.96488,0.05673038586974144,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902386)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3523.7546))<10 AND ABS(position_y-(-1823.8564))<10 AND ABS(position_z-(36.96488))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:45.095
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902387,193876,2444,13644,13722,'0',3525.6313,-1837.3909,14.072356,0.672603189945221,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902387)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3525.6313))<10 AND ABS(position_y-(-1837.3909))<10 AND ABS(position_z-(14.072356))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.632
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902388,193876,2444,13644,13722,'0',3531.4392,-1842.1337,0.25520834,5.081218242645264,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902388)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3531.4392))<10 AND ABS(position_y-(-1842.1337))<10 AND ABS(position_z-(0.25520834))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.632
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902389,193876,2444,13644,13722,'0',3540.9932,-1917.0052,3.484375,0.023314377292990685,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902389)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3540.9932))<10 AND ABS(position_y-(-1917.0052))<10 AND ABS(position_z-(3.484375))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:39.843
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902390,193876,2444,13644,13722,'0',3548.187,-1632.356,49.76978,0.9098515510559082,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902390)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3548.187))<10 AND ABS(position_y-(-1632.356))<10 AND ABS(position_z-(49.76978))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:00.517
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902391,193876,2444,13644,13722,'0',3550.2776,-1797.7242,34.695335,5.045320510864258,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902391)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3550.2776))<10 AND ABS(position_y-(-1797.7242))<10 AND ABS(position_z-(34.695335))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902392,193876,2444,13644,13722,'0',3550.4814,-1879.3654,22.115252,5.507419109344482,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902392)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3550.4814))<10 AND ABS(position_y-(-1879.3654))<10 AND ABS(position_z-(22.115252))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902393,193876,2444,13644,13722,'0',3550.52,-1886.158,8.191935,5.078502178192139,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902393)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3550.52))<10 AND ABS(position_y-(-1886.158))<10 AND ABS(position_z-(8.191935))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:39.772
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902394,193876,2444,13644,13722,'0',3556.7117,-1805.5782,34.328636,0.004371623042970895,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902394)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3556.7117))<10 AND ABS(position_y-(-1805.5782))<10 AND ABS(position_z-(34.328636))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:27.772
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902395,193876,2444,13644,13722,'0',3564.0637,-1875.4397,22.115252,3.686509847640991,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902395)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3564.0637))<10 AND ABS(position_y-(-1875.4397))<10 AND ABS(position_z-(22.115252))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:46.279
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902396,193876,2444,13644,13722,'0',3568.9895,-1975.5278,13.230418,0.26375094056129456,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902396)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3568.9895))<10 AND ABS(position_y-(-1975.5278))<10 AND ABS(position_z-(13.230418))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:39.843
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902397,193876,2444,13644,13722,'0',3570.5537,-1674.3541,49.352913,4.310884475708008,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902397)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3570.5537))<10 AND ABS(position_y-(-1674.3541))<10 AND ABS(position_z-(49.352913))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:12.591
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902398,193876,2444,13644,13722,'0',3586.436,-1754.4309,37.94734,2.946948766708374,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902398)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3586.436))<10 AND ABS(position_y-(-1754.4309))<10 AND ABS(position_z-(37.94734))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:25.979
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902399,193876,2444,13644,13722,'0',3596.3105,-1680.948,37.396988,0.918526291847229,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902399)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3596.3105))<10 AND ABS(position_y-(-1680.948))<10 AND ABS(position_z-(37.396988))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:26.556
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902400,193876,2444,13644,13722,'0',3597.3557,-1822.748,45.740982,4.964266777038574,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902400)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3597.3557))<10 AND ABS(position_y-(-1822.748))<10 AND ABS(position_z-(45.740982))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:00.714
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902401,193876,2444,13644,13722,'0',3606.6833,-1830.1904,25.940063,6.083665370941162,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902401)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3606.6833))<10 AND ABS(position_y-(-1830.1904))<10 AND ABS(position_z-(25.940063))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:29.575
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902402,193876,2444,13644,13722,'0',3612.9775,-1731.8125,35.262154,5.29267692565918,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902402)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3612.9775))<10 AND ABS(position_y-(-1731.8125))<10 AND ABS(position_z-(35.262154))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:41.354
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902403,193876,2444,13644,13722,'0',3614.971,-1841.3751,20.488968,5.001015663146973,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902403)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3614.971))<10 AND ABS(position_y-(-1841.3751))<10 AND ABS(position_z-(20.488968))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902404,193876,2444,13644,13722,'0',3634.332,-1863.7987,9.918308,4.964751243591309,120,100,0,0,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902404)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3634.332))<10 AND ABS(position_y-(-1863.7987))<10 AND ABS(position_z-(9.918308))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:30.802
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902405,193876,2444,13644,13722,'0',3641.1008,-1694.8993,33.35243,3.7253501415252686,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193876)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902405)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193876 AND map=2444 AND ABS(position_x-(3641.1008))<10 AND ABS(position_y-(-1694.8993))<10 AND ABS(position_z-(33.35243))<10);
-- Ruby Dragonspawn; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:12.525
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902406,193913,2444,13644,13939,'0',3562.257,-1380.606,97.59082,3.7850799560546875,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193913)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902406)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193913 AND map=2444 AND ABS(position_x-(3562.257))<10 AND ABS(position_y-(-1380.606))<10 AND ABS(position_z-(97.59082))<10);
-- Toht Twofingers; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:21.089
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902407,193914,2444,13644,13939,'0',3564.1572,-1365.4966,103.62813,0.8191787600517273,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193914)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902407)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193914 AND map=2444 AND ABS(position_x-(3564.1572))<1000 AND ABS(position_y-(-1365.4966))<1000 AND ABS(position_z-(103.62813))<1000);
-- Emilia Bellocq; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:21.089
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902408,193915,2444,13644,13939,'0',3565.302,-1363.5973,103.83224,3.83972430229187,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193915)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902408)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193915 AND map=2444 AND ABS(position_x-(3565.302))<1000 AND ABS(position_y-(-1363.5973))<1000 AND ABS(position_z-(103.83224))<1000);
-- Ruby Drakonid; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:49.753
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902409,193917,2444,13644,13722,'0',3688.3577,-1602.2048,62.811348,3.86603045463562,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193917)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902409)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193917 AND map=2444 AND ABS(position_x-(3688.3577))<10 AND ABS(position_y-(-1602.2048))<10 AND ABS(position_z-(62.811348))<10);
-- Brave Researcher; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902410,193928,2444,13644,13939,'0',3560.4949,-1382.7223,97.40399,0.8981606364250183,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=193928)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902410)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=193928 AND map=2444 AND ABS(position_x-(3560.4949))<10 AND ABS(position_y-(-1382.7223))<10 AND ABS(position_z-(97.40399))<10);
-- Ruby Dragonspawn; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:15.352
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902411,194236,2444,13644,13939,'0',3466.0557,-1425.7291,93.325966,0.36737561225891113,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194236)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902411)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194236 AND map=2444 AND ABS(position_x-(3466.0557))<10 AND ABS(position_y-(-1425.7291))<10 AND ABS(position_z-(93.325966))<10);
-- Ruby Dragonspawn; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:08.992
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902412,194236,2444,13644,13939,'0',3510.356,-1439.1979,95.2208,6.111947059631348,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194236)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902412)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194236 AND map=2444 AND ABS(position_x-(3510.356))<10 AND ABS(position_y-(-1439.1979))<10 AND ABS(position_z-(95.2208))<10);
-- Ruby Dragonspawn; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:06.770
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902413,194236,2444,13644,13939,'0',3582.1658,-1414.7031,96.63195,0.091790109872818,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194236)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902413)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194236 AND map=2444 AND ABS(position_x-(3582.1658))<10 AND ABS(position_y-(-1414.7031))<10 AND ABS(position_z-(96.63195))<10);
-- Ruby Drakonid; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:17.752
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902414,194238,2444,13644,13939,'0',3547.6104,-1365.0608,98.07821,6.127313613891602,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194238)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902414)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194238 AND map=2444 AND ABS(position_x-(3547.6104))<10 AND ABS(position_y-(-1365.0608))<10 AND ABS(position_z-(98.07821))<10);
-- Expedition Scout; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:44.331
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902415,194650,2444,13644,13722,'0',3684.3333,-1883.8906,9.9971075,2.4918301105499268,120,100,0,256,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194650)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902415)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194650 AND map=2444 AND ABS(position_x-(3684.3333))<1000 AND ABS(position_y-(-1883.8906))<1000 AND ABS(position_z-(9.9971075))<1000);
-- Tarley Fellhew; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902416,194652,2444,13644,13722,'0',3683.7317,-1886.9375,8.816902,1.4526073932647705,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194652)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902416)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194652 AND map=2444 AND ABS(position_x-(3683.7317))<1000 AND ABS(position_y-(-1886.9375))<1000 AND ABS(position_z-(8.816902))<1000);
-- Expedition Engineer; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902417,194668,2444,13644,13722,'0',3666.6182,-1889.0173,8.156268,5.9728217124938965,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194668)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902417)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194668 AND map=2444 AND ABS(position_x-(3666.6182))<1000 AND ABS(position_y-(-1889.0173))<1000 AND ABS(position_z-(8.156268))<1000);
-- Elsa Donovan; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902418,194671,2444,13644,13722,'0',3664.119,-1897.6823,8,1.0532513856887817,120,100,0,512,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194671)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902418)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194671 AND map=2444 AND ABS(position_x-(3664.119))<1000 AND ABS(position_y-(-1897.6823))<1000 AND ABS(position_z-(8))<1000);
-- Expedition Provisioner; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902419,194674,2444,13644,13722,'0',3696.692,-1856.3511,4.038549,5.299142360687256,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194674)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902419)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194674 AND map=2444 AND ABS(position_x-(3696.692))<10 AND ABS(position_y-(-1856.3511))<10 AND ABS(position_z-(4.038549))<10);
-- Expedition Provisioner; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902420,194674,2444,13644,13722,'0',3704.8025,-1890.083,4.72232,2.5120348930358887,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194674)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902420)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194674 AND map=2444 AND ABS(position_x-(3704.8025))<10 AND ABS(position_y-(-1890.083))<10 AND ABS(position_z-(4.72232))<10);
-- Maoli; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902421,194681,2444,13644,13722,'0',3700.9504,-1824.1841,0.33922303,5.970033645629883,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194681)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902421)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194681 AND map=2444 AND ABS(position_x-(3700.9504))<1000 AND ABS(position_y-(-1824.1841))<1000 AND ABS(position_z-(0.33922303))<1000);
-- Anaeli; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902422,194685,2444,13644,13722,'0',3704.717,-1856.9844,6.3006544,2.980614185333252,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194685)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902422)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194685 AND map=2444 AND ABS(position_x-(3704.717))<1000 AND ABS(position_y-(-1856.9844))<1000 AND ABS(position_z-(6.3006544))<1000);
-- Valrash; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902423,194688,2444,13644,13722,'0',3704.9062,-1858.5625,6.4261484,3.529885768890381,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=194688)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902423)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=194688 AND map=2444 AND ABS(position_x-(3704.9062))<1000 AND ABS(position_y-(-1858.5625))<1000 AND ABS(position_z-(6.4261484))<1000);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:42.632
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902424,195241,2444,13644,13722,'0',3488.894,-1755.8698,16.100695,2.8158411979675293,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195241)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902424)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195241 AND map=2444 AND ABS(position_x-(3488.894))<10 AND ABS(position_y-(-1755.8698))<10 AND ABS(position_z-(16.100695))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902425,195241,2444,13644,13722,'0',3539.9993,-1767.8281,18.447918,3.83719539642334,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195241)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902425)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195241 AND map=2444 AND ABS(position_x-(3539.9993))<10 AND ABS(position_y-(-1767.8281))<10 AND ABS(position_z-(18.447918))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:40.436
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902426,195241,2444,13644,13722,'0',3552.1277,-1692.7969,34.91582,4.551171779632568,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195241)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902426)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195241 AND map=2444 AND ABS(position_x-(3552.1277))<10 AND ABS(position_y-(-1692.7969))<10 AND ABS(position_z-(34.91582))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902427,195241,2444,13644,13722,'0',3566.039,-1734.1997,27.115437,3.7687745094299316,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195241)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902427)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195241 AND map=2444 AND ABS(position_x-(3566.039))<10 AND ABS(position_y-(-1734.1997))<10 AND ABS(position_z-(27.115437))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902428,195241,2444,13644,13722,'0',3584.111,-1770.0712,23.642363,5.339839458465576,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195241)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902428)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195241 AND map=2444 AND ABS(position_x-(3584.111))<10 AND ABS(position_y-(-1770.0712))<10 AND ABS(position_z-(23.642363))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902429,195241,2444,13644,13722,'0',3596.2083,-1738.3942,29.826498,4.977447032928467,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195241)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902429)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195241 AND map=2444 AND ABS(position_x-(3596.2083))<10 AND ABS(position_y-(-1738.3942))<10 AND ABS(position_z-(29.826498))<10);
-- Primal Proto-Drake; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.475
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902430,195241,2444,13644,13722,'0',3613.304,-1889.7448,12.64757,5.44072961807251,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195241)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902430)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195241 AND map=2444 AND ABS(position_x-(3613.304))<10 AND ABS(position_y-(-1889.7448))<10 AND ABS(position_z-(12.64757))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:35.532
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902431,195242,2444,13644,13722,'0',3483.7864,-1754.1476,15.884991,0.040823064744472504,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195242)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902431)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195242 AND map=2444 AND ABS(position_x-(3483.7864))<10 AND ABS(position_y-(-1754.1476))<10 AND ABS(position_z-(15.884991))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:41:41.644
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902432,195242,2444,13644,13722,'0',3535.8594,-1771.283,17.012154,1.062179446220398,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195242)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902432)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195242 AND map=2444 AND ABS(position_x-(3535.8594))<10 AND ABS(position_y-(-1771.283))<10 AND ABS(position_z-(17.012154))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:12.591
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902433,195242,2444,13644,13722,'0',3551.265,-1698.1233,35.135414,1.776155948638916,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195242)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902433)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195242 AND map=2444 AND ABS(position_x-(3551.265))<10 AND ABS(position_y-(-1698.1233))<10 AND ABS(position_z-(35.135414))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:03.610
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902434,195242,2444,13644,13722,'0',3561.718,-1737.7067,27.1187,0.9937574863433838,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195242)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902434)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195242 AND map=2444 AND ABS(position_x-(3561.718))<10 AND ABS(position_y-(-1737.7067))<10 AND ABS(position_z-(27.1187))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:12.591
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902435,195242,2444,13644,13722,'0',3586.4949,-1773.7396,23.674622,2.564822196960449,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195242)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902435)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195242 AND map=2444 AND ABS(position_x-(3586.4949))<10 AND ABS(position_y-(-1773.7396))<10 AND ABS(position_z-(23.674622))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:28.522
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902436,195242,2444,13644,13722,'0',3598.1736,-1743.6858,30.109375,2.2024292945861816,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195242)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902436)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195242 AND map=2444 AND ABS(position_x-(3598.1736))<10 AND ABS(position_y-(-1743.6858))<10 AND ABS(position_z-(30.109375))<10);
-- Distressed Marmoni; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:31.677
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902437,195242,2444,13644,13722,'0',3616.744,-1893.2726,13.658863,2.6657092571258545,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195242)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902437)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195242 AND map=2444 AND ABS(position_x-(3616.744))<10 AND ABS(position_y-(-1893.2726))<10 AND ABS(position_z-(13.658863))<10);
-- Fire Beetle; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:13.156
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902438,195260,2444,13644,13722,'0',3565.945,-1997.827,10.50753,3.3333847522735596,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195260)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902438)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195260 AND map=2444 AND ABS(position_x-(3565.945))<1000 AND ABS(position_y-(-1997.827))<1000 AND ABS(position_z-(10.50753))<1000);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:37.353
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902439,195577,2444,13644,13722,'0',3471.6362,-2055.8438,22.128473,0.9191498756408691,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195577)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902439)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195577 AND map=2444 AND ABS(position_x-(3471.6362))<10 AND ABS(position_y-(-2055.8438))<10 AND ABS(position_z-(22.128473))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:37:02.956
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902440,195577,2444,13644,13722,'0',3506.894,-1939.4497,12.913195,1.370707392692566,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195577)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902440)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195577 AND map=2444 AND ABS(position_x-(3506.894))<10 AND ABS(position_y-(-1939.4497))<10 AND ABS(position_z-(12.913195))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:38:16.548
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902441,195577,2444,13644,13722,'0',3522.8394,-2075.9358,22.880648,4.831735134124756,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195577)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902441)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195577 AND map=2444 AND ABS(position_x-(3522.8394))<10 AND ABS(position_y-(-2075.9358))<10 AND ABS(position_z-(22.880648))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:28.951
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902442,195577,2444,13644,13722,'0',3555.5374,-1828.7361,19.489584,5.346914768218994,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195577)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902442)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195577 AND map=2444 AND ABS(position_x-(3555.5374))<10 AND ABS(position_y-(-1828.7361))<10 AND ABS(position_z-(19.489584))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:42:21.146
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902443,195577,2444,13644,13722,'0',3584.6362,-1708.6389,31.30463,1.2432886362075806,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195577)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902443)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195577 AND map=2444 AND ABS(position_x-(3584.6362))<10 AND ABS(position_y-(-1708.6389))<10 AND ABS(position_z-(31.30463))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:03.130
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902444,195577,2444,13644,13722,'0',3584.75,-1941.5938,14.979166,3.371574640274048,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195577)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902444)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195577 AND map=2444 AND ABS(position_x-(3584.75))<10 AND ABS(position_y-(-1941.5938))<10 AND ABS(position_z-(14.979166))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:03.130
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902445,195577,2444,13644,13722,'0',3593.7822,-1879.5017,12.730074,2.98262882232666,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195577)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902445)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195577 AND map=2444 AND ABS(position_x-(3593.7822))<10 AND ABS(position_y-(-1879.5017))<10 AND ABS(position_z-(12.730074))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:10.415
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902446,195577,2444,13644,13722,'0',3608.1624,-1819.066,16.971582,1.4028714895248413,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195577)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902446)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195577 AND map=2444 AND ABS(position_x-(3608.1624))<10 AND ABS(position_y-(-1819.066))<10 AND ABS(position_z-(16.971582))<10);
-- Primal Proto-Whelp; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:43:29.575
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902447,195577,2444,13644,13722,'0',3631.092,-1669.9166,39.09722,5.704329490661621,120,100,0,0,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195577)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902447)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195577 AND map=2444 AND ABS(position_x-(3631.092))<10 AND ABS(position_y-(-1669.9166))<10 AND ABS(position_z-(39.09722))<10);
-- Expedition Provisioner; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:34:37.960
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902448,195830,2444,13644,13722,'0',3711.5095,-1884.3125,5.8504047,0.15675632655620575,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=195830)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902448)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=195830 AND map=2444 AND ABS(position_x-(3711.5095))<10 AND ABS(position_y-(-1884.3125))<10 AND ABS(position_z-(5.8504047))<10);
-- Wildfeather; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.686
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902449,197284,2444,13644,13722,'0',3698.8499,-1907.842,12.33877,0.8945760726928711,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=197284)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902449)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=197284 AND map=2444 AND ABS(position_x-(3698.8499))<1000 AND ABS(position_y-(-1907.842))<1000 AND ABS(position_z-(12.33877))<1000);
-- Wildfeather; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:36:11.634
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902450,197285,2444,13644,13722,'0',3698.8499,-1907.842,12.33877,0.8945760726928711,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=197285)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902450)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=197285 AND map=2444 AND ABS(position_x-(3698.8499))<1000 AND ABS(position_y-(-1907.842))<1000 AND ABS(position_z-(12.33877))<1000);
-- Xingief; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902451,197743,2444,13644,13722,'0',3666.0278,-1839.974,2.915669,0.2039363533258438,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=197743)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902451)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=197743 AND map=2444 AND ABS(position_x-(3666.0278))<1000 AND ABS(position_y-(-1839.974))<1000 AND ABS(position_z-(2.915669))<1000);
-- Head Chef Stacks; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:21.089
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902452,198094,2444,13644,13939,'0',3469.5305,-1445.4653,94.18245,0.9483042359352112,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=198094)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902452)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=198094 AND map=2444 AND ABS(position_x-(3469.5305))<1000 AND ABS(position_y-(-1445.4653))<1000 AND ABS(position_z-(94.18245))<1000);
-- Sous-Chef Butterfingers; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:21.089
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902453,198095,2444,13644,13939,'0',3467.9106,-1443.5226,93.44855,2.391115427017212,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=198095)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902453)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=198095 AND map=2444 AND ABS(position_x-(3467.9106))<1000 AND ABS(position_y-(-1443.5226))<1000 AND ABS(position_z-(93.44855))<1000);
-- Liza Breezewood; dump_12.1.0.69587_2026-09-04_19-16-21, 09/04/2026 19:42:22.334
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902454,198146,2444,13644,13722,'0',3737.0261,-1899.5295,5.977387,6.083449363708496,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=198146)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902454)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=198146 AND map=2444 AND ABS(position_x-(3737.0261))<1000 AND ABS(position_y-(-1899.5295))<1000 AND ABS(position_z-(5.977387))<1000);
-- Bronze Timekeeper Assistant; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:53:30.168
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902455,198191,2444,13644,13939,'0',3554.8264,-1181.3334,211.12405,3.6810531616210938,120,100,0,768,'npc_wild_coast_airborne','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=198191)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902455)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=198191 AND map=2444 AND ABS(position_x-(3554.8264))<1000 AND ABS(position_y-(-1181.3334))<1000 AND ABS(position_z-(211.12405))<1000);
-- Journalist Jessamine Spitz; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:21.089
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902456,198380,2444,13644,13939,'0',3481.066,-1423.1788,93.44853,0.592519223690033,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=198380)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902456)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=198380 AND map=2444 AND ABS(position_x-(3481.066))<1000 AND ABS(position_y-(-1423.1788))<1000 AND ABS(position_z-(93.44853))<1000);
-- An'timon; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:25.748
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902457,198392,2444,13644,13939,'0',3469.014,-1424.9305,93.44853,3.405259370803833,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=198392)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902457)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=198392 AND map=2444 AND ABS(position_x-(3469.014))<1000 AND ABS(position_y-(-1424.9305))<1000 AND ABS(position_z-(93.44853))<1000);
-- Misty Catseye; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:44:11.298
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902458,198398,2444,13644,13939,'0',3584.0798,-1420.9913,96.799446,3.530550479888916,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=198398)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902458)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=198398 AND map=2444 AND ABS(position_x-(3584.0798))<1000 AND ABS(position_y-(-1420.9913))<1000 AND ABS(position_z-(96.799446))<1000);
-- Kerazal; dump_12.1.0.69587_2026-09-05_04-33-55, 09/05/2026 04:47:26.355
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,ScriptName,StringId,VerifiedBuild)
SELECT 11902459,199336,2444,13644,13939,'0',3548.4854,-1450.1598,92.917595,4.5472211837768555,120,100,0,768,'','wild_coast_021',69587
WHERE EXISTS(SELECT 1 FROM creature_template WHERE entry=199336)
AND NOT EXISTS(SELECT 1 FROM creature WHERE guid=11902459)
AND NOT EXISTS(SELECT 1 FROM creature WHERE id=199336 AND map=2444 AND ABS(position_x-(3548.4854))<1000 AND ABS(position_y-(-1450.1598))<1000 AND ABS(position_z-(92.917595))<1000);
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|0 WHERE entry=60761;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|2 WHERE entry=184449;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=184450;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=184451;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|2 WHERE entry=184452;
UPDATE creature_template SET faction=IF(faction=35,35,faction),npcflag=npcflag|0 WHERE entry=184639;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=184812;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=184813;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=184814;
UPDATE creature_template SET faction=IF(faction=35,190,faction),npcflag=npcflag|0 WHERE entry=184851;
UPDATE creature_template SET faction=IF(faction=35,16,faction),npcflag=npcflag|0 WHERE entry=184853;
UPDATE creature_template SET faction=IF(faction=35,190,faction),npcflag=npcflag|0 WHERE entry=184855;
UPDATE creature_template SET faction=IF(faction=35,190,faction),npcflag=npcflag|0 WHERE entry=184856;
UPDATE creature_template SET faction=IF(faction=35,190,faction),npcflag=npcflag|0 WHERE entry=184857;
UPDATE creature_template SET faction=IF(faction=35,2136,faction),npcflag=npcflag|0 WHERE entry=184861;
UPDATE creature_template SET faction=IF(faction=35,2358,faction),npcflag=npcflag|0 WHERE entry=184869;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|2 WHERE entry=184870;
UPDATE creature_template SET faction=IF(faction=35,1732,faction),npcflag=npcflag|0 WHERE entry=185773;
UPDATE creature_template SET faction=IF(faction=35,1732,faction),npcflag=npcflag|0 WHERE entry=185774;
UPDATE creature_template SET faction=IF(faction=35,3272,faction),npcflag=npcflag|0 WHERE entry=187061;
UPDATE creature_template SET faction=IF(faction=35,3272,faction),npcflag=npcflag|0 WHERE entry=187062;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=187121;
UPDATE creature_template SET faction=IF(faction=35,3272,faction),npcflag=npcflag|0 WHERE entry=187123;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=187125;
UPDATE creature_template SET faction=IF(faction=35,3272,faction),npcflag=npcflag|0 WHERE entry=187135;
UPDATE creature_template SET faction=IF(faction=35,2575,faction),npcflag=npcflag|0 WHERE entry=187140;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=187193;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=187194;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=187196;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|3 WHERE entry=187229;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|3 WHERE entry=187234;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|3 WHERE entry=187235;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|4227 WHERE entry=187236;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=187251;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=187252;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=187253;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=187254;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=187255;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|3 WHERE entry=187257;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=187261;
UPDATE creature_template SET faction=IF(faction=35,3307,faction),npcflag=npcflag|0 WHERE entry=187321;
UPDATE creature_template SET faction=IF(faction=35,3309,faction),npcflag=npcflag|0 WHERE entry=187322;
UPDATE creature_template SET faction=IF(faction=35,3307,faction),npcflag=npcflag|0 WHERE entry=187326;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|65665 WHERE entry=187412;
UPDATE creature_template SET faction=IF(faction=35,2575,faction),npcflag=npcflag|0 WHERE entry=188027;
UPDATE creature_template SET faction=IF(faction=35,190,faction),npcflag=npcflag|0 WHERE entry=188057;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|1 WHERE entry=188904;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|3 WHERE entry=189002;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|4227 WHERE entry=189021;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|3 WHERE entry=189022;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|3 WHERE entry=189035;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|1 WHERE entry=189037;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|16777216 WHERE entry=189052;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=189053;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|16777216 WHERE entry=189055;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=189058;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=189059;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=189060;
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|1073741824 WHERE entry=189093;
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|1073741824 WHERE entry=189094;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=189554;
UPDATE creature_template SET faction=IF(faction=35,14,faction),npcflag=npcflag|0 WHERE entry=189798;
UPDATE creature_template SET faction=IF(faction=35,2358,faction),npcflag=npcflag|0 WHERE entry=190056;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|128 WHERE entry=190526;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=190532;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=190535;
UPDATE creature_template SET faction=IF(faction=35,190,faction),npcflag=npcflag|0 WHERE entry=190565;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|1 WHERE entry=190571;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|1 WHERE entry=190575;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|1 WHERE entry=190577;
UPDATE creature_template SET faction=IF(faction=35,14,faction),npcflag=npcflag|0 WHERE entry=190587;
UPDATE creature_template SET faction=IF(faction=35,14,faction),npcflag=npcflag|0 WHERE entry=190741;
UPDATE creature_template SET faction=IF(faction=35,35,faction),npcflag=npcflag|3 WHERE entry=190753;
UPDATE creature_template SET faction=IF(faction=35,1712,faction),npcflag=npcflag|0 WHERE entry=191104;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=191148;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=191150;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|128 WHERE entry=191161;
UPDATE creature_template SET faction=IF(faction=35,3272,faction),npcflag=npcflag|0 WHERE entry=191169;
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|0 WHERE entry=191554;
UPDATE creature_template SET faction=IF(faction=35,190,faction),npcflag=npcflag|0 WHERE entry=191830;
UPDATE creature_template SET faction=IF(faction=35,3309,faction),npcflag=npcflag|0 WHERE entry=191946;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|82 WHERE entry=192048;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=192055;
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|0 WHERE entry=192103;
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|0 WHERE entry=192104;
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|0 WHERE entry=192137;
UPDATE creature_template SET faction=IF(faction=35,190,faction),npcflag=npcflag|0 WHERE entry=192148;
UPDATE creature_template SET faction=IF(faction=35,190,faction),npcflag=npcflag|0 WHERE entry=192149;
UPDATE creature_template SET faction=IF(faction=35,190,faction),npcflag=npcflag|0 WHERE entry=192151;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|128 WHERE entry=192207;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|128 WHERE entry=192210;
UPDATE creature_template SET faction=IF(faction=35,3307,faction),npcflag=npcflag|0 WHERE entry=192227;
UPDATE creature_template SET faction=IF(faction=35,3307,faction),npcflag=npcflag|0 WHERE entry=192274;
UPDATE creature_template SET faction=IF(faction=35,3309,faction),npcflag=npcflag|0 WHERE entry=192407;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|3 WHERE entry=192438;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|8193 WHERE entry=192490;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|82 WHERE entry=192549;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=192558;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=192563;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=192565;
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|0 WHERE entry=193001;
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|1073741824 WHERE entry=193024;
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|0 WHERE entry=193026;
UPDATE creature_template SET faction=IF(faction=35,3276,faction),npcflag=npcflag|3 WHERE entry=193362;
UPDATE creature_template SET faction=IF(faction=35,3276,faction),npcflag=npcflag|65537 WHERE entry=193393;
UPDATE creature_template SET faction=IF(faction=35,35,faction),npcflag=npcflag|16777216 WHERE entry=193671;
UPDATE creature_template SET faction=IF(faction=35,2358,faction),npcflag=npcflag|0 WHERE entry=193806;
UPDATE creature_template SET faction=IF(faction=35,2358,faction),npcflag=npcflag|0 WHERE entry=193811;
UPDATE creature_template SET faction=IF(faction=35,2358,faction),npcflag=npcflag|0 WHERE entry=193816;
UPDATE creature_template SET faction=IF(faction=35,35,faction),npcflag=npcflag|3 WHERE entry=193838;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=193858;
UPDATE creature_template SET faction=IF(faction=35,16,faction),npcflag=npcflag|0 WHERE entry=193876;
UPDATE creature_template SET faction=IF(faction=35,3276,faction),npcflag=npcflag|0 WHERE entry=193913;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=193914;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|131 WHERE entry=193915;
UPDATE creature_template SET faction=IF(faction=35,3276,faction),npcflag=npcflag|0 WHERE entry=193917;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=193928;
UPDATE creature_template SET faction=IF(faction=35,3276,faction),npcflag=npcflag|0 WHERE entry=194236;
UPDATE creature_template SET faction=IF(faction=35,3276,faction),npcflag=npcflag|0 WHERE entry=194238;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=194650;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=194652;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=194668;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=194671;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=194674;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=194681;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=194685;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=194688;
UPDATE creature_template SET faction=IF(faction=35,2358,faction),npcflag=npcflag|0 WHERE entry=195241;
UPDATE creature_template SET faction=IF(faction=35,2136,faction),npcflag=npcflag|0 WHERE entry=195242;
UPDATE creature_template SET faction=IF(faction=35,188,faction),npcflag=npcflag|0 WHERE entry=195260;
UPDATE creature_template SET faction=IF(faction=35,16,faction),npcflag=npcflag|0 WHERE entry=195577;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=195830;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=197284;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=197285;
UPDATE creature_template SET faction=IF(faction=35,534,faction),npcflag=npcflag|0 WHERE entry=197743;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=198094;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|0 WHERE entry=198095;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|1 WHERE entry=198146;
UPDATE creature_template SET faction=IF(faction=35,35,faction),npcflag=npcflag|1 WHERE entry=198191;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=198380;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=198392;
UPDATE creature_template SET faction=IF(faction=35,3270,faction),npcflag=npcflag|83 WHERE entry=198398;
UPDATE creature_template SET faction=IF(faction=35,3276,faction),npcflag=npcflag|2 WHERE entry=199336;
-- Repair NULL health only in the audited area; retain all non-NULL values.
UPDATE creature SET curHealthPct=100 WHERE map=2444 AND position_x BETWEEN 3000 AND 4300 AND position_y BETWEEN -2400 AND -1100 AND curHealthPct IS NULL;
UPDATE creature_template SET npcflag=npcflag|16777216 WHERE entry=189052;
INSERT IGNORE INTO npc_spellclick_spells (npc_entry,spell_id,cast_flags,user_type) VALUES(189052,383054,3,0);
INSERT IGNORE INTO spell_script_names(spell_id,ScriptName) VALUES(383054,'spell_wild_coast_lockeye_rescue'),(3286,'spell_wild_coast_homebind');
UPDATE creature_template SET npcflag=(npcflag & ~16777216)|1,ScriptName='npc_wild_coast_geode'
WHERE entry=193671 AND AIName='' AND ScriptName IN('','npc_wild_coast_geode');
UPDATE creature_template SET npcflag=npcflag|3,ScriptName='npc_wild_coast_questgiver'
WHERE entry IN(193362,193393) AND AIName='' AND ScriptName IN('','npc_wild_coast_questgiver');
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry IN(187251,184870,238913);
INSERT INTO gameobject (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state,StringId,VerifiedBuild)
SELECT 11902000,378438,2444,13644,13722,'0',3683.6216,-1607.1962,62.59272,2.1862102,0,0,0.8880587011865121,0.45973007650895026,120,255,1,'wild_coast_021',69587
WHERE NOT EXISTS(SELECT 1 FROM gameobject WHERE guid=11902000) AND NOT EXISTS(SELECT 1 FROM gameobject WHERE id=378438 AND map=2444 AND ABS(position_x-(3683.6216))<10 AND ABS(position_y-(-1607.1962))<10);
INSERT INTO gameobject (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state,StringId,VerifiedBuild)
SELECT 11902001,378435,2444,13644,13939,'0',3478.0652,-1431.8733,94.67112,5.930426,0,0,0.1754665529644426,-0.9844853928783182,120,255,1,'wild_coast_021',69587
WHERE NOT EXISTS(SELECT 1 FROM gameobject WHERE guid=11902001) AND NOT EXISTS(SELECT 1 FROM gameobject WHERE id=378435 AND map=2444 AND ABS(position_x-(3478.0652))<10 AND ABS(position_y-(-1431.8733))<10);
INSERT INTO gameobject (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state,StringId,VerifiedBuild)
SELECT 11902002,378437,2444,13644,13939,'0',3556.3784,-1377.4185,96.787796,1.2787999,0,0,0.5967140363186635,0.8024539605860818,120,255,1,'wild_coast_021',69587
WHERE NOT EXISTS(SELECT 1 FROM gameobject WHERE guid=11902002) AND NOT EXISTS(SELECT 1 FROM gameobject WHERE id=378437 AND map=2444 AND ABS(position_x-(3556.3784))<10 AND ABS(position_y-(-1377.4185))<10);
UPDATE gameobject_template SET ScriptName='go_wild_coast_embassy' WHERE entry IN(378435,378437,378438) AND AIName='' AND ScriptName IN('','go_wild_coast_embassy');
-- Observed single scale drops. 100% quest-only availability is a functional
-- fallback, not an inferred retail drop probability. Existing reward data stays intact.
UPDATE creature_template_difficulty SET LootID=11902001 WHERE Entry=193876 AND LootID=0;
INSERT INTO creature_loot_template (Entry,ItemType,Item,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment)
SELECT 11902001,0,198398,100,1,1,0,1,1,'Wild Coast 0.2.1: quest-only functional loot'
WHERE NOT EXISTS(SELECT 1 FROM creature_loot_template WHERE Entry=11902001 AND ItemType=0 AND Item=198398);
UPDATE creature_template_difficulty SET LootID=11902002 WHERE Entry=195577 AND LootID=0;
INSERT INTO creature_loot_template (Entry,ItemType,Item,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment)
SELECT 11902002,0,198398,100,1,1,0,1,1,'Wild Coast 0.2.1: quest-only functional loot'
WHERE NOT EXISTS(SELECT 1 FROM creature_loot_template WHERE Entry=11902002 AND ItemType=0 AND Item=198398);
UPDATE creature_template_difficulty SET LootID=11902003 WHERE Entry=192274 AND LootID=0;
INSERT INTO creature_loot_template (Entry,ItemType,Item,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment)
SELECT 11902003,0,194548,100,1,1,0,1,1,'Wild Coast 0.2.1: quest-only functional loot'
WHERE NOT EXISTS(SELECT 1 FROM creature_loot_template WHERE Entry=11902003 AND ItemType=0 AND Item=194548);
-- Current capture and current quest guide agree that only the molten core remains.
DELETE FROM quest_objectives WHERE ID=428922 AND QuestID=66112 AND ObjectID=190386;
UPDATE quest_objectives SET Flags2=Flags2|1 WHERE ID=428921 AND QuestID=66112;
UPDATE quest_template SET LogDescription='Collect a Primal Molten Core.' WHERE ID=66112;
UPDATE quest_objectives SET StorageIndex=2 WHERE ID=429578 AND QuestID=69965;
UPDATE creature_template SET KillCredit1=190790 WHERE entry=192227 AND KillCredit1=0 AND KillCredit2<>190790;
UPDATE creature_template SET KillCredit2=190790 WHERE entry=192227 AND KillCredit1<>190790 AND KillCredit2=0;
INSERT IGNORE INTO creature_queststarter(id,quest,VerifiedBuild) VALUES
(238913,87547,0),(238913,87555,0),(238913,87562,69587),
(189022,70122,69587),(189035,70123,69587),(189021,70124,69587),
(187251,70125,0),(184870,69910,0),(193362,69911,0),
(184449,67053,69587),(184452,70135,69587),(187257,66101,69587),(192438,69965,69587),(187261,66112,69587);
INSERT IGNORE INTO creature_questender(id,quest,VerifiedBuild) VALUES
(238913,87547,0),(238913,87555,69587),(189022,87562,69587),
(187251,70122,0),(187252,70123,69587),(189058,70124,69587),
(193362,70125,0),(193362,69910,0),(193362,69911,0),
(184452,67053,69587),(184452,70135,69587),(187257,66101,69587),(192438,69965,0),(187261,66112,69587);
INSERT INTO quest_template_addon (ID,PrevQuestID) VALUES (87555,87547),(70125,70122),(69910,65452)
ON DUPLICATE KEY UPDATE PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
DELETE FROM conditions WHERE Comment LIKE 'Wild Coast 0.2.1:%';
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,ConditionValue2,Comment) VALUES
(18,189052,383054,0,47,70122,8,'Wild Coast 0.2.1: rescue only with active quest'),
(19,0,70125,0,8,70123,0,'Wild Coast 0.2.1: finish Primal Pests'),
(19,0,70125,0,8,70124,0,'Wild Coast 0.2.1: finish Practice Materials'),
(19,0,69910,0,8,65453,0,'Wild Coast 0.2.1: Horde Primal Pests'),
(19,0,69910,0,8,65451,0,'Wild Coast 0.2.1: Horde Practice Materials'),
(19,0,69911,0,8,70125,0,'Wild Coast 0.2.1: Alliance introduction'),
(19,0,69911,1,8,69910,0,'Wild Coast 0.2.1: Horde introduction');
COMMIT;
