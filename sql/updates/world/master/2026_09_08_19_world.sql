-- Persist ObjectMgr orientation-only fallback for four all-zero quaternions.
START TRANSACTION;
UPDATE gameobject SET rotation2=SIN(orientation/2),rotation3=COS(orientation/2) WHERE guid IN(166358,166359,166360,166361) AND id=guid+17722 AND rotation0=0 AND rotation1=0 AND rotation2=0 AND rotation3=0;
COMMIT;
