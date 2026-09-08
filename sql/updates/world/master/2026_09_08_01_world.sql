-- Aureon Core 0.2.2: Exile class events, paired with the September 8 Release binary.
-- Public map coordinates are rounded; ground heights were checked against build 69587 maps.
-- Shared quest givers use the default phase; quest class/team filters remain authoritative.
START TRANSACTION;

UPDATE creature_template SET npcflag=npcflag|2 WHERE entry IN(156801,167216,166575,167473);
UPDATE creature_template SET npcflag=npcflag|3, ScriptName='npc_exiles_hjalmar_questgiver'
 WHERE entry=162943 AND AIName='' AND ScriptName IN('','npc_exiles_hjalmar_questgiver');
UPDATE creature_template SET ScriptName='npc_exiles_hjalmar_training'
 WHERE entry=162947 AND AIName='' AND ScriptName IN('','npc_exiles_hjalmar_training');
UPDATE creature_template SET ScriptName='npc_exiles_recruit_resurrection'
 WHERE entry IN(163137,167592) AND AIName='' AND ScriptName IN('','npc_exiles_recruit_resurrection');
UPDATE quest_template_addon SET ScriptName='quest_exiles_resurrect_recruits'
 WHERE ID IN(58960,59965) AND ScriptName IN('','quest_exiles_resurrect_recruits');
UPDATE gameobject_template SET ScriptName='go_exiles_druid_stone'
 WHERE entry=346113 AND AIName='' AND ScriptName IN('','go_exiles_druid_stone');

-- Keep existing relations; add only the verified class-chain endpoints.
INSERT INTO creature_queststarter (id,quest)
SELECT r.id,r.quest FROM (
 SELECT 156801 id,58914 quest UNION ALL SELECT 167216,59971
 UNION ALL SELECT 162943,58915 UNION ALL SELECT 162943,59972
 UNION ALL SELECT 163108,58960 UNION ALL SELECT 167188,59965
 UNION ALL SELECT 166575,59951
) r WHERE NOT EXISTS (SELECT 1 FROM creature_queststarter s WHERE s.id=r.id AND s.quest=r.quest);
INSERT INTO creature_questender (id,quest)
SELECT r.id,r.quest FROM (
 SELECT 162943 id,58914 quest UNION ALL SELECT 162943,59971
 UNION ALL SELECT 156801,58915 UNION ALL SELECT 167216,59972
 UNION ALL SELECT 163108,58960 UNION ALL SELECT 167188,59965
 UNION ALL SELECT 167473,59951
) r WHERE NOT EXISTS (SELECT 1 FROM creature_questender s WHERE s.id=r.id AND s.quest=r.quest);

-- Priests: the public recruit/ghost cluster is at 56.1,53.5, outside the old camp phase.
UPDATE creature SET position_x=227.35225,position_y=-2414.63135,position_z=90.28088,
 orientation=3.14,PhaseId=0,PhaseGroup=0
 WHERE guid=8000990 AND map=2175 AND id=163108;
UPDATE creature SET position_x=227.35225,position_y=-2416.63135,position_z=90.28088,
 orientation=3.14,PhaseId=0,PhaseGroup=0
 WHERE guid=8000991 AND map=2175 AND id=167188;

INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,VerifiedBuild)
SELECT r.guid,r.id,2175,10424,r.area,'0',r.x,r.y,r.z,r.o,120,0 FROM (
 SELECT 11903001 guid,162943 id,10568 area,355.8396 x,-2260.09375 y,90.53806 z,3.14 o
 UNION ALL SELECT 11903002,166575,10527,182.998,-2289.68,81.9318,1.57
 UNION ALL SELECT 11903003,167473,10530,322.622,-2060.32,112.377,1.52363
) r WHERE NOT EXISTS (SELECT 1 FROM creature c WHERE c.guid=r.guid)
 AND NOT EXISTS (SELECT 1 FROM creature c WHERE c.map=2175 AND c.id=r.id);

INSERT INTO gameobject (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,rotation3,spawntimesecs,animprogress,state,VerifiedBuild)
SELECT 11903001,346113,2175,10424,10530,'0',319.77298,-2055.52808,112.031,0,1,120,255,1,0
WHERE NOT EXISTS (SELECT 1 FROM gameobject WHERE guid=11903001)
 AND NOT EXISTS (SELECT 1 FROM gameobject WHERE map=2175 AND id=346113);
COMMIT;
