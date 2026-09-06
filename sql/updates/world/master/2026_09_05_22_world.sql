-- 12.1 cleanup follow-up: child rows left after Phase A objective/pool deletes.
SET NAMES utf8mb4;

DELETE qv FROM `quest_visual_effect` qv
LEFT JOIN `quest_objectives` qo ON qo.`ID` = qv.`ID`
WHERE qo.`ID` IS NULL;

DELETE st FROM `spawn_tracking_quest_objective` st
LEFT JOIN `quest_objectives` qo ON qo.`ID` = st.`QuestObjectiveId`
WHERE qo.`ID` IS NULL;

DELETE pm FROM `pool_members` pm
LEFT JOIN `pool_template` pt ON pt.`entry` = pm.`poolSpawnId`
WHERE pt.`entry` IS NULL;

DELETE pm FROM `pool_members` pm
LEFT JOIN `pool_template` pt ON pt.`entry` = pm.`spawnId`
WHERE pm.`type` = 2 AND pt.`entry` IS NULL;
