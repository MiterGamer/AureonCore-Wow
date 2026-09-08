-- Aureon Core 0.2.2: verified class endpoints, monk training and Horde mage support.
-- 35 quest pages provide NPC endpoints; 59969 has no public endpoints and is unchanged.
START TRANSACTION;
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry IN(156801,156807,156885,156886,156932,161666,162943,162998,163024,163108,163246,163329,164835,164907,166575,167179,167188,167212,167215,167216,167308,167309,167473,167481,167537,167586);
INSERT INTO creature_queststarter(id,quest)
SELECT r.id,r.quest FROM (
SELECT 156801 id,58914 quest
UNION ALL SELECT 162943 id,58915 quest
UNION ALL SELECT 167216 id,59971 quest
UNION ALL SELECT 162943 id,59972 quest
UNION ALL SELECT 156801 id,58923 quest
UNION ALL SELECT 162998 id,58946 quest
UNION ALL SELECT 167216 id,59958 quest
UNION ALL SELECT 167179 id,60174 quest
UNION ALL SELECT 161666 id,59355 quest
UNION ALL SELECT 161666 id,59356 quest
UNION ALL SELECT 161666 id,60168 quest
UNION ALL SELECT 167215 id,59952 quest
UNION ALL SELECT 167215 id,59953 quest
UNION ALL SELECT 167215 id,60162 quest
UNION ALL SELECT 156801 id,58917 quest
UNION ALL SELECT 163024 id,58933 quest
UNION ALL SELECT 167216 id,59967 quest
UNION ALL SELECT 167586 id,59968 quest
UNION ALL SELECT 156801 id,58953 quest
UNION ALL SELECT 163108 id,58960 quest
UNION ALL SELECT 167216 id,59961 quest
UNION ALL SELECT 167188 id,59965 quest
UNION ALL SELECT 163329 id,59002 quest
UNION ALL SELECT 156886 id,59352 quest
UNION ALL SELECT 156886 id,59354 quest
UNION ALL SELECT 167309 id,59954 quest
UNION ALL SELECT 167309 id,59955 quest
UNION ALL SELECT 156801 id,58962 quest
UNION ALL SELECT 167216 id,59970 quest
UNION ALL SELECT 156885 id,59347 quest
UNION ALL SELECT 164835 id,59349 quest
UNION ALL SELECT 167308 id,59956 quest
UNION ALL SELECT 167537 id,59957 quest
UNION ALL SELECT 156932 id,59350 quest
UNION ALL SELECT 166575 id,59951 quest
) r WHERE NOT EXISTS (SELECT 1 FROM creature_queststarter s WHERE s.id=r.id AND s.quest=r.quest);
INSERT INTO creature_questender(id,quest)
SELECT r.id,r.quest FROM (
SELECT 162943 id,58914 quest
UNION ALL SELECT 156801 id,58915 quest
UNION ALL SELECT 162943 id,59971 quest
UNION ALL SELECT 167216 id,59972 quest
UNION ALL SELECT 162998 id,58923 quest
UNION ALL SELECT 162998 id,58946 quest
UNION ALL SELECT 167179 id,59958 quest
UNION ALL SELECT 167179 id,60174 quest
UNION ALL SELECT 161666 id,59355 quest
UNION ALL SELECT 161666 id,59356 quest
UNION ALL SELECT 161666 id,60168 quest
UNION ALL SELECT 167215 id,59952 quest
UNION ALL SELECT 167215 id,59953 quest
UNION ALL SELECT 167215 id,60162 quest
UNION ALL SELECT 163024 id,58917 quest
UNION ALL SELECT 156801 id,58933 quest
UNION ALL SELECT 167586 id,59967 quest
UNION ALL SELECT 167216 id,59968 quest
UNION ALL SELECT 163108 id,58953 quest
UNION ALL SELECT 163108 id,58960 quest
UNION ALL SELECT 167188 id,59961 quest
UNION ALL SELECT 167188 id,59965 quest
UNION ALL SELECT 163329 id,59002 quest
UNION ALL SELECT 156886 id,59352 quest
UNION ALL SELECT 156886 id,59354 quest
UNION ALL SELECT 167309 id,59954 quest
UNION ALL SELECT 167309 id,59955 quest
UNION ALL SELECT 163246 id,58962 quest
UNION ALL SELECT 167481 id,59970 quest
UNION ALL SELECT 164835 id,59347 quest
UNION ALL SELECT 156807 id,59349 quest
UNION ALL SELECT 167537 id,59956 quest
UNION ALL SELECT 167212 id,59957 quest
UNION ALL SELECT 164907 id,59350 quest
UNION ALL SELECT 167473 id,59951 quest
) r WHERE NOT EXISTS (SELECT 1 FROM creature_questender s WHERE s.id=r.id AND s.quest=r.quest);
UPDATE creature_template SET npcflag=npcflag|3,ScriptName='npc_exiles_monk_mentor' WHERE entry IN(164835,167537) AND AIName='' AND ScriptName IN('','npc_exiles_monk_mentor');
UPDATE creature_template SET ScriptName='npc_exiles_hjalmar_training' WHERE entry IN(164865,167539) AND AIName='' AND ScriptName IN('','npc_exiles_hjalmar_training');
UPDATE creature_template SET npcflag=npcflag|3,ScriptName='npc_exiles_herbert_mage' WHERE entry=167309 AND AIName='' AND ScriptName IN('','npc_exiles_herbert_mage');
INSERT INTO spell_script_names(spell_id,ScriptName) SELECT 320961,'spell_exiles_monk_meditation'
 WHERE NOT EXISTS(SELECT 1 FROM spell_script_names WHERE spell_id=320961 AND ScriptName='spell_exiles_monk_meditation');
-- Approximate public map locations; no captured escort/conversation choreography is claimed.
INSERT INTO creature(guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,VerifiedBuild)
SELECT r.guid,r.id,2175,10424,10588,'0',r.x,r.y,r.z,1.57,120,0 FROM (
 SELECT 11903004 guid,164835 id,317.5188 x,-2296.2876 y,83.88097 z
 UNION ALL SELECT 11903005,167537,317.5188,-2298.2876,83.88097
 UNION ALL SELECT 11903006,167308,182.998,-2291.68,81.9318
 UNION ALL SELECT 11903007,167309,185.998,-2287.68,81.9318
) r WHERE NOT EXISTS(SELECT 1 FROM creature c WHERE c.guid=r.guid)
 AND NOT EXISTS(SELECT 1 FROM creature c WHERE c.map=2175 AND c.id=r.id);
-- Reuse the existing spellbook's visual/container data for the missing Horde template.
CREATE TEMPORARY TABLE _aureon_herbert_book LIKE gameobject_template;
INSERT INTO _aureon_herbert_book SELECT * FROM gameobject_template WHERE entry=346273;
UPDATE _aureon_herbert_book SET entry=351335,name='Herbert''s Spellbook',data1=351335,VerifiedBuild=0;
INSERT INTO gameobject_template SELECT b.* FROM _aureon_herbert_book b WHERE NOT EXISTS(SELECT 1 FROM gameobject_template g WHERE g.entry=351335);
DROP TEMPORARY TABLE _aureon_herbert_book;
INSERT INTO gameobject_loot_template(Entry,ItemType,Item,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment)
SELECT 351335,0,178229,100,1,1,0,1,1,'Herbert spellbook - quest-only functional loot'
WHERE NOT EXISTS(SELECT 1 FROM gameobject_loot_template WHERE Entry=351335 AND ItemType=0 AND Item=178229);
INSERT INTO gameobject(guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,rotation3,spawntimesecs,animprogress,state,VerifiedBuild)
SELECT 11903002,351335,2175,10424,10588,'0',310.974,-2275.16,77.2677,0,1,120,255,1,0
WHERE NOT EXISTS(SELECT 1 FROM gameobject WHERE guid=11903002)
 AND NOT EXISTS(SELECT 1 FROM gameobject WHERE map=2175 AND id=351335);
COMMIT;
