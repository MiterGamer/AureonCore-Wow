-- Aureon Core 0.2.3: deterministic corrections from DBErrors.log.
-- Persist loader fallbacks and remove ignored invalid values; do not delete missing-content references or invent loot.
START TRANSACTION;
-- zero-radius-random-movement
UPDATE creature SET MovementType=0 WHERE guid=6003382 AND (id=125505 AND MovementType=1 AND wander_distance=0);
-- invalid-movement-fallback
UPDATE creature SET MovementType=0 WHERE guid=10000318 AND (id=222332 AND MovementType=10);
-- idle-radius-after-movement-fallback
UPDATE creature SET wander_distance=0 WHERE guid=10000318 AND (id=222332 AND MovementType IN(0,10) AND wander_distance<>0);
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=33931 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=33932 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=33933 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34012 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34013 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34014 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34015 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34016 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34017 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34018 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34019 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34020 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34021 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34022 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34024 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34025 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34690 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34691 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34692 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34693 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34697 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=34698 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36181 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36182 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36183 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36206 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36207 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36218 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36219 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36231 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36232 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36244 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36245 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36246 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36247 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36248 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36249 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36250 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36251 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36254 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36255 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36256 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36257 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=36258 AND (SourceTypeOrReferenceId=29 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=1 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=13004 AND (SourceTypeOrReferenceId=34 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=8 AND ScriptName='');
-- unused-objective-condition-value
UPDATE conditions SET ConditionValue2=0 WHERE SourceEntry=13007 AND (SourceTypeOrReferenceId=34 AND SourceGroup=0 AND SourceId=0 AND ConditionTypeOrReference=48 AND ConditionValue2=8 AND ScriptName='');
COMMIT;
