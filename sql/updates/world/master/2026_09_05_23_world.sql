-- quest_poi blobs whose points were removed with missing quests.
SET NAMES utf8mb4;

DELETE qp FROM `quest_poi` qp
LEFT JOIN `quest_poi_points` qpp
  ON qpp.`QuestID` = qp.`QuestID` AND qpp.`Idx1` = qp.`Idx1`
WHERE qpp.`QuestID` IS NULL;
