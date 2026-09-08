-- Exile's Reach: class/faction restrictions and priest introduction actors.
START TRANSACTION;
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(58914,1,0) ON DUPLICATE KEY UPDATE AllowableClasses=1,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,58914,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58914 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58914)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=58914 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(58915,1,58914) ON DUPLICATE KEY UPDATE AllowableClasses=1,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,58915,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58915 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58915)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=58915 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59971,1,0) ON DUPLICATE KEY UPDATE AllowableClasses=1,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59971,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59971 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59971)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59971 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59972,1,59971) ON DUPLICATE KEY UPDATE AllowableClasses=1,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59972,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59972 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59972)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59972 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(58923,2,0) ON DUPLICATE KEY UPDATE AllowableClasses=2,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,58923,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58923 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58923)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=58923 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(58946,2,58923) ON DUPLICATE KEY UPDATE AllowableClasses=2,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,58946,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58946 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58946)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=58946 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59958,2,0) ON DUPLICATE KEY UPDATE AllowableClasses=2,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59958,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59958 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59958)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59958 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(60174,2,59958) ON DUPLICATE KEY UPDATE AllowableClasses=2,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,60174,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=60174 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=60174)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=60174 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59355,4,0) ON DUPLICATE KEY UPDATE AllowableClasses=4,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59355,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59355 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59355)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59355 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59356,4,59355) ON DUPLICATE KEY UPDATE AllowableClasses=4,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59356,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59356 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59356)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59356 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(60168,4,59356) ON DUPLICATE KEY UPDATE AllowableClasses=4,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,60168,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=60168 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=60168)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=60168 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59952,4,0) ON DUPLICATE KEY UPDATE AllowableClasses=4,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59952,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59952 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59952)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59952 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59953,4,59952) ON DUPLICATE KEY UPDATE AllowableClasses=4,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59953,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59953 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59953)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59953 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(60162,4,59953) ON DUPLICATE KEY UPDATE AllowableClasses=4,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,60162,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=60162 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=60162)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=60162 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(58917,8,0) ON DUPLICATE KEY UPDATE AllowableClasses=8,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,58917,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58917 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58917)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=58917 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(58933,8,58917) ON DUPLICATE KEY UPDATE AllowableClasses=8,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,58933,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58933 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58933)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=58933 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59967,8,0) ON DUPLICATE KEY UPDATE AllowableClasses=8,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59967,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59967 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59967)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59967 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59968,8,59967) ON DUPLICATE KEY UPDATE AllowableClasses=8,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59968,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59968 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59968)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59968 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(58953,16,0) ON DUPLICATE KEY UPDATE AllowableClasses=16,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,58953,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58953 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58953)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=58953 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(58960,16,58953) ON DUPLICATE KEY UPDATE AllowableClasses=16,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,58960,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58960 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58960)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=58960 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59961,16,0) ON DUPLICATE KEY UPDATE AllowableClasses=16,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59961,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59961 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59961)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59961 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59965,16,59961) ON DUPLICATE KEY UPDATE AllowableClasses=16,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59965,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59965 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59965)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59965 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59002,64,0) ON DUPLICATE KEY UPDATE AllowableClasses=64,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59002,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59002 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59002)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59002 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59969,64,0) ON DUPLICATE KEY UPDATE AllowableClasses=64,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59969,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59969 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59969)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59969 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59352,128,0) ON DUPLICATE KEY UPDATE AllowableClasses=128,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59352,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59352 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59352)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59352 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59354,128,59352) ON DUPLICATE KEY UPDATE AllowableClasses=128,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59354,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59354 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59354)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59354 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59954,128,0) ON DUPLICATE KEY UPDATE AllowableClasses=128,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59954,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59954 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59954)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59954 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59955,128,59954) ON DUPLICATE KEY UPDATE AllowableClasses=128,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59955,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59955 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59955)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59955 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(58962,256,0) ON DUPLICATE KEY UPDATE AllowableClasses=256,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,58962,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58962 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=58962)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=58962 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59970,256,0) ON DUPLICATE KEY UPDATE AllowableClasses=256,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59970,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59970 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59970)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59970 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59347,512,0) ON DUPLICATE KEY UPDATE AllowableClasses=512,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59347,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59347 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59347)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59347 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59349,512,59347) ON DUPLICATE KEY UPDATE AllowableClasses=512,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59349,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59349 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59349)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59349 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59956,512,0) ON DUPLICATE KEY UPDATE AllowableClasses=512,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59956,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59956 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59956)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59956 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59957,512,59956) ON DUPLICATE KEY UPDATE AllowableClasses=512,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59957,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59957 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59957)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59957 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59350,1024,0) ON DUPLICATE KEY UPDATE AllowableClasses=1024,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59350,groups.ElseGroup,6,469,'Exiles class audit 20260908: Alliance' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59350 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59350)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59350 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=469);
INSERT INTO quest_template_addon(ID,AllowableClasses,PrevQuestID) VALUES(59951,1024,0) ON DUPLICATE KEY UPDATE AllowableClasses=1024,PrevQuestID=IF(PrevQuestID=0,VALUES(PrevQuestID),PrevQuestID);
INSERT INTO conditions(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,Comment)
SELECT 19,0,59951,groups.ElseGroup,6,67,'Exiles class audit 20260908: Horde' FROM
(SELECT DISTINCT ElseGroup FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59951 UNION SELECT 0 WHERE NOT EXISTS(SELECT 1 FROM conditions WHERE SourceTypeOrReferenceId=19 AND SourceGroup=0 AND SourceEntry=59951)) AS groups
WHERE NOT EXISTS(SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=19 AND c.SourceGroup=0 AND c.SourceEntry=59951 AND c.ElseGroup=groups.ElseGroup AND c.ConditionTypeOrReference=6 AND c.ConditionValue1=67);
UPDATE creature_template SET npcflag=npcflag|3,ScriptName='npc_exiles_priest_introduction' WHERE entry IN(163108,167188) AND AIName='' AND ScriptName IN('','npc_exiles_priest_introduction');
COMMIT;
