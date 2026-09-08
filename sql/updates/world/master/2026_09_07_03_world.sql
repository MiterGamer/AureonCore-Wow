-- Wild Coast actions captured in dump_12.1.0.69587_2026-09-05_04-33-55.
-- Apply with the matching worldserver build. No account data or sniff GUIDs are imported.
SET NAMES utf8mb4;

UPDATE creature_template SET AIName='', ScriptName='npc_wild_coast_questgiver'
WHERE entry IN (238913,189021,184449,184452,187257,192438,187261);
UPDATE creature_template SET AIName='', ScriptName='npc_wild_coast_survey_vehicle', VehicleId=7866 WHERE entry=193712;
UPDATE creature_template SET AIName='', ScriptName='npc_archivist_rellid', npcflag=npcflag|16777216 WHERE entry=189055;
UPDATE creature_template SET npcflag=npcflag|16777216 WHERE entry=193707;
UPDATE gameobject_template SET AIName='', ScriptName='go_protodragon_rib_cage' WHERE entry=379137;

DELETE FROM spell_script_names WHERE ScriptName IN ('spell_wild_coast_survey','spell_wild_coast_rib_rescue');
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES
(382188,'spell_wild_coast_survey'),(382190,'spell_wild_coast_survey'),(382192,'spell_wild_coast_survey'),
(250484,'spell_wild_coast_rib_rescue');

-- Sniffed alternative kill entries: keep an existing other credit in slot 1.
UPDATE creature_template SET KillCredit1=187169 WHERE entry IN (195241,193806) AND KillCredit1=0 AND KillCredit2<>187169;
UPDATE creature_template SET KillCredit2=187169 WHERE entry IN (195241,193806) AND KillCredit1<>187169 AND KillCredit2=0;
UPDATE creature_template SET KillCredit1=190790 WHERE entry IN (187321,187322) AND KillCredit1=0 AND KillCredit2<>190790;
UPDATE creature_template SET KillCredit2=190790 WHERE entry IN (187321,187322) AND KillCredit1<>190790 AND KillCredit2=0;

-- Kalecgos farewell 04:35:38.070 (deDE capture; retain the actual wording).
DELETE FROM creature_text WHERE CreatureID=238913 AND GroupID=0 AND ID=0;
INSERT INTO creature_text (CreatureID,GroupID,ID,Text,Type,Language,Probability,Emote,Duration,Sound,BroadcastTextId,TextRange,comment) VALUES
(238913,0,0,'Ich muss mich zum Azurblauen Gebirge begeben, aber wir werden uns gewiss wiedersehen. Viel Glück auf Euren Abenteuern!',12,0,100,0,0,0,0,0,'Wild Coast 87562 farewell - sniff deDE');

-- Conversations: DB2 supplies broadcast text and line timing; dynamic actors come from C++.
DELETE FROM conversation_template WHERE Id IN (19294,19289,19288,19299,19298,19300,19123,19302,19120,19121,19122,19124,19142,19087,18932);
INSERT INTO conversation_template (Id,FirstLineId,TextureKitId,Flags,ScriptName,VerifiedBuild) VALUES
(19294,49145,0,4,'',69587),
(19289,49132,0,0,'',69587),
(19288,49128,0,0,'',69587),
(19299,49162,0,0,'',69587),
(19298,49160,0,0,'',69587),
(19300,49164,0,0,'',69587),
(19123,48808,0,0,'',69587),
(19302,49167,0,0,'',69587),
(19120,48805,0,0,'',69587),
(19121,48806,0,0,'',69587),
(19122,48807,0,0,'',69587),
(19124,48810,0,0,'',69587),
(19142,48823,0,0,'',69587),
(19087,48711,0,0,'',69587),
(18932,48293,0,0,'',69587);
DELETE FROM conversation_line_template WHERE Id IN (49145,49142,49143,49144,49132,49133,49128,49129,49162,49160,49161,49164,49165,48808,48809,49167,49168,49169,48805,48806,48807,48810,48823,48711,48293);
INSERT INTO conversation_line_template (Id,UiCameraID,ActorIdx,Flags,ChatType,VerifiedBuild) VALUES
(49145,0,0,0,0,69587),
(49142,0,1,0,0,69587),
(49143,0,2,0,0,69587),
(49144,0,3,0,0,69587),
(49132,0,0,0,0,69587),
(49133,0,0,0,0,69587),
(49128,0,0,0,0,69587),
(49129,0,0,0,0,69587),
(49162,0,0,0,0,69587),
(49160,0,0,0,0,69587),
(49161,0,1,0,0,69587),
(49164,0,0,0,0,69587),
(49165,0,1,0,0,69587),
(48808,0,0,0,0,69587),
(48809,0,0,0,0,69587),
(49167,0,0,0,0,69587),
(49168,0,1,0,0,69587),
(49169,0,0,0,0,69587),
(48805,120,0,0,0,69587),
(48806,93,0,0,0,69587),
(48807,93,0,0,0,69587),
(48810,0,0,0,0,69587),
(48823,0,0,1,0,69587),
(48711,0,0,0,0,69587),
(48293,0,0,0,0,69587);
DELETE FROM conversation_actors WHERE ConversationId IN (19294,19289,19288,19299,19298,19300,19123,19302,19120,19121,19122,19124,19142,19087,18932);
INSERT INTO conversation_actors (ConversationId,ConversationActorId,ConversationActorGuid,Idx,CreatureId,CreatureDisplayInfoId,NoActorObject,ActivePlayerObject,VerifiedBuild) VALUES
(19294,0,0,0,0,0,0,1,69587),
(19120,64220,0,0,193758,105169,0,0,69587),
(19121,64220,0,0,193759,105170,0,0,69587),
(19122,64220,0,0,193759,105170,0,0,69587);

-- Observed embassy actor 184450; leave existing nearby spawns intact.
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,StringId,VerifiedBuild)
SELECT 8002100,184450,2444,13646,13646,'0',3533.2483,-1465.9983,93.649,5.7438717,120,'wild_coast_actor_184450',69587
WHERE EXISTS (SELECT 1 FROM creature_template WHERE entry=184450) AND NOT EXISTS
(SELECT 1 FROM creature WHERE id=184450 AND map=2444 AND ABS(position_x-(3533.2483))<10 AND ABS(position_y-(-1465.9983))<10);

-- Observed embassy actor 184451; leave existing nearby spawns intact.
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,StringId,VerifiedBuild)
SELECT 8002101,184451,2444,13646,13646,'0',3610.5383,-1439.0226,95.56538,0.26324335,120,'wild_coast_actor_184451',69587
WHERE EXISTS (SELECT 1 FROM creature_template WHERE entry=184451) AND NOT EXISTS
(SELECT 1 FROM creature WHERE id=184451 AND map=2444 AND ABS(position_x-(3610.5383))<10 AND ABS(position_y-(-1439.0226))<10);

-- Observed embassy actor 187251; leave existing nearby spawns intact.
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,spawntimesecs,StringId,VerifiedBuild)
SELECT 8002102,187251,2444,13646,13646,'0',3583.7188,-1459.7014,91.41146,2.197296,120,'wild_coast_actor_187251',69587
WHERE EXISTS (SELECT 1 FROM creature_template WHERE entry=187251) AND NOT EXISTS
(SELECT 1 FROM creature WHERE id=187251 AND map=2444 AND ABS(position_x-(3583.7188))<10 AND ABS(position_y-(-1459.7014))<10);
