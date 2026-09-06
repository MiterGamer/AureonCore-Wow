-- 54951/59930 Emergency First Aid: laying survivors use InteractSpellID 300260 (sniff)
-- and item spell 297415 (CMSG_USE_ITEM). Right-click must cast that same spell.
SET NAMES utf8mb4;

UPDATE `creature_template` SET `npcflag` = `npcflag` | 16777216
WHERE `entry` IN (156609, 156610, 156612, 166786, 166791, 166796);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (156609, 156610, 156612, 166786, 166791, 166796);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(156609, 297415, 1, 0),
(156610, 297415, 1, 0),
(156612, 297415, 1, 0),
(166786, 297415, 1, 0),
(166791, 297415, 1, 0),
(166796, 297415, 1, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceGroup` IN (156609, 156610, 156612, 166786, 166791, 166796);
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`,
 `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`,
 `NegativeCondition`, `Comment`)
VALUES
(18, 156609, 297415, 0, 0, 9, 0, 54951, 0, 0, 0, 'Bjorn bandage click requires 54951 taken'),
(18, 156609, 297415, 0, 0, 2, 0, 168410, 1, 0, 0, 'Bjorn bandage click requires First Aid Kit'),
(18, 156610, 297415, 0, 0, 9, 0, 54951, 0, 0, 0, 'Austin bandage click requires 54951 taken'),
(18, 156610, 297415, 0, 0, 2, 0, 168410, 1, 0, 0, 'Austin bandage click requires First Aid Kit'),
(18, 156612, 297415, 0, 0, 9, 0, 54951, 0, 0, 0, 'Kee-La bandage click requires 54951 taken'),
(18, 156612, 297415, 0, 0, 2, 0, 168410, 1, 0, 0, 'Kee-La bandage click requires First Aid Kit'),
(18, 166786, 297415, 0, 0, 9, 0, 59930, 0, 0, 0, 'Bo bandage click requires 59930 taken'),
(18, 166786, 297415, 0, 0, 2, 0, 168410, 1, 0, 0, 'Bo bandage click requires First Aid Kit'),
(18, 166791, 297415, 0, 0, 9, 0, 59930, 0, 0, 0, 'Mithdran bandage click requires 59930 taken'),
(18, 166791, 297415, 0, 0, 2, 0, 168410, 1, 0, 0, 'Mithdran bandage click requires First Aid Kit'),
(18, 166796, 297415, 0, 0, 9, 0, 59930, 0, 0, 0, 'Lana bandage click requires 59930 taken'),
(18, 166796, 297415, 0, 0, 2, 0, 168410, 1, 0, 0, 'Lana bandage click requires First Aid Kit');
