-- Midnight Silvermoon: documented population and basic services, 2026-09-07.
-- See doc/SILVERMOON_CITY_REPAIR_2026-09-07.md for sources and limitations.
-- Requires the accompanying Release worldserver for Tiff's quest interaction.
-- Coordinates are guide/quest-POI based, with custom vendor offsets; not retail spawn captures.
START TRANSACTION;
INSERT INTO creature (guid,id,map,zoneId,areaId,spawnDifficulties,PhaseId,equipment_id,
position_x,position_y,position_z,orientation,spawntimesecs,curHealthPct,MovementType,unit_flags,StringId,VerifiedBuild)
SELECT s.guid,s.entry,0,s.zone,s.area,'0',s.phase,
IF(EXISTS(SELECT 1 FROM creature_equip_template e WHERE e.CreatureID=s.entry AND e.ID=1),1,0),
s.x,s.y,s.z,0,120,100,0,768,'silvermoon_city_repair_20260907',0
FROM (
SELECT 11900100 AS guid,243357 AS entry,15969 AS zone,16079 AS area,27428 AS phase,8800.64410 AS x,-4655.47602 AS y,23.46710 AS z
UNION ALL SELECT 11900101,243553,15969,16079,27428,8807.19202,-4651.82789,23.51637
UNION ALL SELECT 11900102,243352,15969,16079,27428,8762.47911,-4687.74789,23.49072
UNION ALL SELECT 11900103,243527,15969,16079,27428,8733.10703,-4547.99664,23.58315
UNION ALL SELECT 11900104,243349,15969,16079,27428,8765.47244,-4682.69664,23.48350
UNION ALL SELECT 11900105,241450,15969,16079,27428,8803.82452,-4560.34414,23.46710
UNION ALL SELECT 11900106,243355,15969,16079,27428,8811.12077,-4690.83477,25.12175
UNION ALL SELECT 11900107,241452,15969,16079,27428,8760.98244,-4556.69602,23.46710
UNION ALL SELECT 11900108,243345,15969,16079,27428,8742.08703,-4687.46727,23.46710
UNION ALL SELECT 11900109,241455,15969,16096,27428,8783.99369,-4530.31727,25.12184
UNION ALL SELECT 11900110,243500,15969,16079,27428,8729.73953,-4546.03227,23.46710
UNION ALL SELECT 11900111,257913,15969,15969,27428,8467.07458,-4918.14102,63.89374
UNION ALL SELECT 11900112,239630,15969,15969,27428,8467.00000,-4912.00000,64.32400
UNION ALL SELECT 11900113,247955,15969,16079,27428,8599.34247,-4616.74977,18.78045
UNION ALL SELECT 11900114,243359,15969,16079,27428,8802.64410,-4653.47602,23.46710
UNION ALL SELECT 11900115,243350,15969,16079,27428,8767.47244,-4680.69664,23.49072
UNION ALL SELECT 11900116,243353,15969,16079,27428,8764.47911,-4685.74789,23.49072
UNION ALL SELECT 11900117,243346,15969,16079,27428,8744.08703,-4685.46727,23.46710
UNION ALL SELECT 11900118,241451,15969,16079,27428,8805.82452,-4558.34414,23.46710
UNION ALL SELECT 11900119,241453,15969,16079,27428,8758.98244,-4558.69602,23.47000
UNION ALL SELECT 11900120,241454,15969,16096,27428,8785.99369,-4528.31727,25.12182
UNION ALL SELECT 11900121,243531,15969,16079,27428,8727.73953,-4548.03227,23.47000
UNION ALL SELECT 11900122,239621,15969,16079,27428,8372.41043,-4746.39852,21.31869
UNION ALL SELECT 11900123,239625,15969,16079,27428,8375.41043,-4746.39852,21.33313
UNION ALL SELECT 11900124,239628,15969,16079,27428,8369.41043,-4746.39852,21.31664
UNION ALL SELECT 11900125,239664,15969,16079,27428,8548.82998,-4756.50102,21.58886
UNION ALL SELECT 11900126,239665,15969,16079,27428,8551.82998,-4756.50102,21.58884
UNION ALL SELECT 11900127,257039,15969,16079,27428,8344.00000,-4507.00000,20.71361
UNION ALL SELECT 11900128,257255,15969,16097,27428,8449.00000,-4366.00000,-7.36608
UNION ALL SELECT 11900129,257262,15969,16097,27428,8521.00000,-4202.00000,-7.36862
UNION ALL SELECT 11900130,257264,15969,16097,27428,8529.00000,-4355.00000,-2.80842
UNION ALL SELECT 11900131,243290,15969,16082,27428,8623.00000,-4865.00000,18.73719
UNION ALL SELECT 11900132,241393,15969,16099,27428,9136.00000,-4849.00000,6.43906
UNION ALL SELECT 11900133,240832,15968,15997,0,7195.00000,-3874.00000,72.60255
) s JOIN creature_template t ON t.entry=s.entry
WHERE NOT EXISTS(SELECT 1 FROM creature c WHERE c.guid=s.guid)
AND NOT EXISTS(SELECT 1 FROM creature c WHERE c.id=s.entry AND c.map=0 AND ABS(c.position_x-s.x)<40 AND ABS(c.position_y-s.y)<40);
-- General service menus. Keep any already installed menu assignments.
INSERT IGNORE INTO gossip_menu (MenuID,TextID,VerifiedBuild) VALUES
(11901000,68,0),(11901001,68,0),(11901002,68,0),(11901003,68,0);
INSERT IGNORE INTO gossip_menu_option (MenuID,GossipOptionID,OptionID,OptionNpc,OptionText,VerifiedBuild) VALUES
(11901000,-11901000,0,1,'Let me browse your goods.',0),
(11901001,-11901001,0,6,'I would like to check my deposit box.',0),
(11901002,-11901002,0,10,'I would like to browse the auctions.',0),
(11901003,-11901003,0,5,'Make this inn your home.',0);
UPDATE creature_template SET npcflag=npcflag|129 WHERE entry IN(243359,243350,243353,243346,241451,241453,241454,243531);
INSERT INTO creature_template_gossip (CreatureID,MenuID,VerifiedBuild) SELECT entry,11901000,0 FROM creature_template t WHERE entry IN(243359,243350,243353,243346,241451,241453,241454,243531) AND NOT EXISTS(SELECT 1 FROM creature_template_gossip g WHERE g.CreatureID=t.entry);
UPDATE creature_template SET npcflag=npcflag|131073 WHERE entry IN(239664,239665);
INSERT INTO creature_template_gossip (CreatureID,MenuID,VerifiedBuild) SELECT entry,11901001,0 FROM creature_template t WHERE entry IN(239664,239665) AND NOT EXISTS(SELECT 1 FROM creature_template_gossip g WHERE g.CreatureID=t.entry);
UPDATE creature_template SET npcflag=npcflag|2097153 WHERE entry IN(239621,239625,239628);
INSERT INTO creature_template_gossip (CreatureID,MenuID,VerifiedBuild) SELECT entry,11901002,0 FROM creature_template t WHERE entry IN(239621,239625,239628) AND NOT EXISTS(SELECT 1 FROM creature_template_gossip g WHERE g.CreatureID=t.entry);
UPDATE creature_template SET npcflag=npcflag|65537 WHERE entry IN(239630);
INSERT INTO creature_template_gossip (CreatureID,MenuID,VerifiedBuild) SELECT entry,11901003,0 FROM creature_template t WHERE entry IN(239630) AND NOT EXISTS(SELECT 1 FROM creature_template_gossip g WHERE g.CreatureID=t.entry);
UPDATE creature_template SET npcflag=npcflag|4096 WHERE entry=241451;
-- Common supply fallback from the existing incarnation of the same merchant.
-- Deliberately not a fabricated Midnight recipe/reputation inventory.
INSERT IGNORE INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,VerifiedBuild)
SELECT 243359,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,0 FROM npc_vendor WHERE entry=16641 AND type=1 AND ExtendedCost=0;
INSERT IGNORE INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,VerifiedBuild)
SELECT 243350,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,0 FROM npc_vendor WHERE entry=16635 AND type=1 AND ExtendedCost=0;
INSERT IGNORE INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,VerifiedBuild)
SELECT 243353,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,0 FROM npc_vendor WHERE entry=16638 AND type=1 AND ExtendedCost=0;
INSERT IGNORE INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,VerifiedBuild)
SELECT 243346,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,0 FROM npc_vendor WHERE entry=16624 AND type=1 AND ExtendedCost=0;
INSERT IGNORE INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,VerifiedBuild)
SELECT 241451,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,0 FROM npc_vendor WHERE entry=16670 AND type=1 AND ExtendedCost=0;
INSERT IGNORE INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,VerifiedBuild)
SELECT 241453,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,0 FROM npc_vendor WHERE entry=16782 AND type=1 AND ExtendedCost=0;
INSERT IGNORE INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,VerifiedBuild)
SELECT 241454,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,0 FROM npc_vendor WHERE entry=16664 AND type=1 AND ExtendedCost=0;
INSERT IGNORE INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,VerifiedBuild)
SELECT 243531,slot,item,maxcount,incrtime,ExtendedCost,type,BonusListIDs,PlayerConditionID,IgnoreFiltering,0 FROM npc_vendor WHERE entry=16689 AND type=1 AND ExtendedCost=0;
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry IN(247955,243290,257039,240832,241393);
INSERT IGNORE INTO creature_queststarter (id,quest,VerifiedBuild) VALUES (247955,91627,0),(243290,90669,0),(257039,94012,0);
INSERT IGNORE INTO creature_questender (id,quest,VerifiedBuild) VALUES (240832,91627,0),(241393,90669,0),(257039,94012,0);
-- Preserve existing reward data. No automatic quest completion or campaign unlock.
DELETE FROM conditions WHERE SourceTypeOrReferenceId=19 AND Comment LIKE 'Silvermoon city repair 20260907:%';
INSERT INTO conditions (SourceTypeOrReferenceId,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2,Comment) VALUES
(19,91627,27,90,3,'Silvermoon city repair 20260907: level 90'),
(19,91627,47,90806,66,'Silvermoon city repair 20260907: completed Midnight campaign flag'),
(19,94012,27,80,3,'Silvermoon city repair 20260907: level 80');
UPDATE creature_template SET npcflag=npcflag|1,ScriptName='npc_silvermoon_tiff' WHERE entry IN(257255,257262,257264) AND ScriptName IN('','npc_silvermoon_tiff') AND AIName='';
COMMIT;
