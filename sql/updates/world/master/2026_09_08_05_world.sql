-- The current public Horde quest requires GO 351423, absent from this world database.
-- The original objective ID is not present in the local client QuestObjective table.
-- 11904000 is an explicit Aureon objective ID, not a claimed retail ID.
START TRANSACTION;
CREATE TEMPORARY TABLE _aureon_horde_altar LIKE gameobject_template;
INSERT INTO _aureon_horde_altar SELECT * FROM gameobject_template WHERE entry=342068;
UPDATE _aureon_horde_altar SET entry=351423,VerifiedBuild=0;
INSERT INTO gameobject_template SELECT t.* FROM _aureon_horde_altar t
 WHERE NOT EXISTS(SELECT 1 FROM gameobject_template WHERE entry=351423);
DROP TEMPORARY TABLE _aureon_horde_altar;
INSERT INTO quest_objectives(ID,QuestID,Type,`Order`,StorageIndex,ObjectID,Amount,Flags,Description,VerifiedBuild)
SELECT 11904000,60174,2,1,2,351423,1,0,'Necrotic altar destroyed',0
WHERE NOT EXISTS(SELECT 1 FROM quest_objectives WHERE ID=11904000)
 AND NOT EXISTS(SELECT 1 FROM quest_objectives WHERE QuestID=60174 AND (StorageIndex=2 OR (Type=2 AND ObjectID=351423)));
INSERT INTO gameobject(guid,id,map,zoneId,areaId,spawnDifficulties,position_x,position_y,position_z,orientation,rotation3,spawntimesecs,animprogress,state,VerifiedBuild)
SELECT 11903300,351423,2175,10424,10588,'0',254.402222,-2458.5874,112.791382,0,1,30,255,1,0
WHERE NOT EXISTS(SELECT 1 FROM gameobject WHERE guid=11903300)
 AND NOT EXISTS(SELECT 1 FROM gameobject WHERE map=2175 AND id=351423);
COMMIT;
