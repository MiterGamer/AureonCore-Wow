-- Aureon Core 0.2.3: restore Protector of the Frail proc phase and Mist's existing route.
-- Evidence and gameplay checks: doc/CONTENT_RULE_REPAIR_0.2.3.md
START TRANSACTION;
UPDATE spell_proc SET SpellPhaseMask=2 WHERE SpellId=373035 AND SpellPhaseMask=0 AND SpellFamilyName=6 AND SpellFamilyMask0=1 AND SpellFamilyMask1=0 AND SpellFamilyMask2=0 AND SpellFamilyMask3=0 AND ProcFlags=0 AND ProcFlags2=0 AND AttributesMask=0 AND DisableEffectsMask=0;
SET @AureonMistPathRepair = ((SELECT COUNT(*) FROM waypoint_path_node WHERE PathId=3568)=4 AND (SELECT COUNT(*) FROM waypoint_path_node WHERE PathId=28545)=0 AND EXISTS(SELECT 1 FROM waypoint_path WHERE PathId=28545 AND MoveType=0) AND NOT EXISTS(SELECT 1 FROM waypoint_path WHERE PathId=3568));
UPDATE waypoint_path_node SET PathId=28545 WHERE PathId=3568 AND NodeId IN(1,2,3,4) AND @AureonMistPathRepair;
COMMIT;
