-- Hero's Call: initial three-choice implementation, sniff 69587 / packet 80114.
-- Requires the matching go_heros_call_board / playerchoice_heros_call_board scripts.
START TRANSACTION;
UPDATE gameobject_template SET ScriptName='go_heros_call_board' WHERE entry IN (281339,278575);
INSERT INTO playerchoice (ChoiceId,UiTextureKitId,Question,MaxResponses,ScriptName,VerifiedBuild)
VALUES (505,261,'The following missions are intended for lower-level adventurers.',3,'playerchoice_heros_call_board',69587)
ON DUPLICATE KEY UPDATE UiTextureKitId=261,MaxResponses=3,ScriptName='playerchoice_heros_call_board';
INSERT INTO playerchoice_locale (ChoiceId,locale,Question,VerifiedBuild)
VALUES (505,'deDE','Die folgenden Missionen sind für Abenteurer niedrigerer Stufe vorgesehen.',69587)
ON DUPLICATE KEY UPDATE Question=VALUES(Question),VerifiedBuild=69587;
INSERT INTO playerchoice_response (ChoiceId,ResponseId,`Index`,ChoiceArtFileId,Header,Answer,Description,Confirmation,VerifiedBuild)
VALUES
(505,1429,0,1851120,'The Broken Shore','Fight the Legion','The Burning Legion has returned to Azeroth!','',69587),
(505,1014,1,1851147,'Tanaan Jungle','Enter the Dark Portal','The Iron Horde is invading Azeroth! We must stop them to save our world. For Azeroth!','',69587),
(505,984,2,1851126,'Mount Hyjal','Stop the Firelord','Speak with Cenarion Emissary Jademoon in Stormwind to travel to Mount Hyjal.','',69587)
ON DUPLICATE KEY UPDATE `Index`=VALUES(`Index`),ChoiceArtFileId=VALUES(ChoiceArtFileId);
INSERT INTO playerchoice_response_locale (ChoiceId,ResponseId,locale,Header,Answer,Description,VerifiedBuild)
VALUES
(505,1429,'deDE','Die Verheerte Küste','Bekämpft die Legion','Die Brennende Legion ist nach Azeroth zurückgekehrt!',69587),
(505,1014,'deDE','Tanaandschungel','Betretet das Dunkle Portal','Die Eiserne Horde fällt in Azeroth ein!\n\nWir müssen sie aufhalten, um unsere Welt zu retten. Für Azeroth!',69587),
(505,984,'deDE','Hyjal','Haltet den Feuerfürsten auf','Todesschwinges Diener versuchen, die Macht des Feuerfürsten auf Azeroth zu manifestieren!\n\nSprecht mit Cenarius\' Abgesandter Jademond in Sturmwind, um zum Hyjal gebracht zu werden.',69587)
ON DUPLICATE KEY UPDATE Header=VALUES(Header),Answer=VALUES(Answer),Description=VALUES(Description),VerifiedBuild=69587;
-- Hide quests already in the log or rewarded; the script checks full eligibility again.
DELETE FROM conditions WHERE SourceTypeOrReferenceId=36 AND SourceGroup=505 AND Comment LIKE 'Hero''s Call initial:%';
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,Comment)
VALUES
(36,505,1429,14,40519,'Hero''s Call initial: Legion quest not taken or rewarded'),
(36,505,1014,14,34398,'Hero''s Call initial: Draenor quest not taken or rewarded'),
(36,505,984,14,27726,'Hero''s Call initial: Hyjal quest not taken or rewarded');
COMMIT;
