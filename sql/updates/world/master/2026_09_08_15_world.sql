-- Aureon Core 0.2.3: deterministic corrections from DBErrors.log.
-- Persist loader fallbacks and remove ignored invalid values; do not delete missing-content references or invent loot.
START TRANSACTION;
-- zero-parent-quaternion
UPDATE gameobject_addon SET parent_rotation3=1 WHERE guid=166633 AND (parent_rotation0=0 AND parent_rotation1=0 AND parent_rotation2=0 AND parent_rotation3=0);
-- zero-parent-quaternion
UPDATE gameobject_addon SET parent_rotation3=1 WHERE guid=166634 AND (parent_rotation0=0 AND parent_rotation1=0 AND parent_rotation2=0 AND parent_rotation3=0);
-- zero-parent-quaternion
UPDATE gameobject_addon SET parent_rotation3=1 WHERE guid=166636 AND (parent_rotation0=0 AND parent_rotation1=0 AND parent_rotation2=0 AND parent_rotation3=0);
-- zero-parent-quaternion
UPDATE gameobject_addon SET parent_rotation3=1 WHERE guid=166637 AND (parent_rotation0=0 AND parent_rotation1=0 AND parent_rotation2=0 AND parent_rotation3=0);
-- zero-parent-quaternion
UPDATE gameobject_addon SET parent_rotation3=1 WHERE guid=166638 AND (parent_rotation0=0 AND parent_rotation1=0 AND parent_rotation2=0 AND parent_rotation3=0);
-- zero-parent-quaternion
UPDATE gameobject_addon SET parent_rotation3=1 WHERE guid=166639 AND (parent_rotation0=0 AND parent_rotation1=0 AND parent_rotation2=0 AND parent_rotation3=0);
-- absent-visual-spell
UPDATE areatrigger_create_properties SET SpellForVisuals=NULL WHERE Id=87 AND (IsCustom=1 AND SpellForVisuals=0);
-- absent-visual-spell
UPDATE areatrigger_create_properties SET SpellForVisuals=NULL WHERE Id=88 AND (IsCustom=1 AND SpellForVisuals=0);
-- absent-visual-spell
UPDATE areatrigger_create_properties SET SpellForVisuals=NULL WHERE Id=5295 AND (IsCustom=0 AND SpellForVisuals=0);
-- absent-visual-spell
UPDATE areatrigger_create_properties SET SpellForVisuals=NULL WHERE Id=8812 AND (IsCustom=0 AND SpellForVisuals=0);
-- unsupported-proc-attribute-bit
UPDATE spell_proc SET AttributesMask=AttributesMask & 4294967263 WHERE SpellId=63849 AND ((AttributesMask & 32)<>0);
-- phase-id-takes-precedence
UPDATE spawn_tracking_template SET PhaseGroup=0 WHERE SpawnTrackingId=2552578 AND (PhaseId=24968 AND PhaseGroup=1445);
-- error-text-without-error-type
UPDATE conditions SET ErrorTextId=0 WHERE SourceEntry=8085 AND (SourceTypeOrReferenceId=22 AND SourceGroup=1 AND SourceId=2 AND ElseGroup=0 AND ConditionTypeOrReference=48 AND ConditionValue1=252345 AND ErrorType=0 AND ErrorTextId=1 AND ScriptName='');
-- unused-quest-state-value
UPDATE conditions SET ConditionValue3=0 WHERE SourceEntry=0 AND (SourceTypeOrReferenceId=26 AND SourceGroup=5049 AND SourceId=0 AND ElseGroup=1 AND ConditionTypeOrReference=47 AND ConditionValue1=38950 AND ConditionValue2=66 AND ConditionValue3=1 AND ScriptName='');
COMMIT;
