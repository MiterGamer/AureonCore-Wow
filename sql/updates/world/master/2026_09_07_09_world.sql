-- Restore supported Sanctum quest offers. Uses existing quest objectives/rewards.
-- Initial weekly fallback: normal quest list, one choice per NPC per week.
-- No synthetic Aethas quests: current Midnight templates are missing in this DB.
START TRANSACTION;
INSERT IGNORE INTO creature_queststarter (id,quest) VALUES
(256203,93766),(256203,93909),(256203,93910),(256203,93911),
(256210,93753),(256210,93754),(256210,95468),
(235787,86734),(235787,86735),(235787,86736),(235787,86737);
INSERT IGNORE INTO creature_questender (id,quest) VALUES
(256203,93766),(256203,93909),(256203,93910),(256203,93911),
(256210,93753),(256210,93754),(256210,95468);

-- Existing weekly fields were absent. The positive exclusive group blocks
-- accepting another option while one is active or has been rewarded this week.
UPDATE quest_template SET Flags=Flags|32768
WHERE ID IN (93766,93909,93910,93911,93753,93754,95468);
INSERT INTO quest_template_addon (ID,ExclusiveGroup,SpecialFlags) VALUES
(93766,93744,1),(93909,93744,1),(93910,93744,1),(93911,93744,1),
(93753,93753,1),(93754,93753,1),(95468,93753,1)
ON DUPLICATE KEY UPDATE ExclusiveGroup=VALUES(ExclusiveGroup),SpecialFlags=SpecialFlags|1;

-- Restore the documented introductory chain; retain any existing nonzero links.
INSERT INTO quest_template_addon (ID,PrevQuestID,ExclusiveGroup,NextQuestID) VALUES
(86734,86733,0,0),(86735,86734,86735,86737),(86736,86734,86735,86737),(86737,0,0,0)
ON DUPLICATE KEY UPDATE PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID),
ExclusiveGroup=IF(ExclusiveGroup=0,VALUES(ExclusiveGroup),ExclusiveGroup),
NextQuestID=IF(NextQuestID=0,VALUES(NextQuestID),NextQuestID);
-- Either faction's Paved in Ash counts as the previous quest because both
-- link to it through NextQuestID (handled by SatisfyQuestDependentPreviousQuests).

DELETE FROM conditions WHERE SourceTypeOrReferenceId=19 AND Comment LIKE 'Sanctum quest offers 20260907:%';
INSERT INTO conditions (SourceTypeOrReferenceId,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2,Comment) VALUES
(19,93766,27,90,3,'Sanctum quest offers 20260907: level 90 or higher'),
(19,93909,27,90,3,'Sanctum quest offers 20260907: level 90 or higher'),
(19,93910,27,90,3,'Sanctum quest offers 20260907: level 90 or higher'),
(19,93911,27,90,3,'Sanctum quest offers 20260907: level 90 or higher'),
(19,93753,27,90,3,'Sanctum quest offers 20260907: level 90 or higher'),
(19,93754,27,90,3,'Sanctum quest offers 20260907: level 90 or higher'),
(19,95468,27,80,3,'Sanctum quest offers 20260907: at least level 80'),
(19,95468,27,90,2,'Sanctum quest offers 20260907: below level 90');
COMMIT;
