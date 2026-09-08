-- Darkmaul Citadel 0.2.2. Preserve Kalecgos' outdoor leave script.
START TRANSACTION;
UPDATE creature SET ScriptName='boss_ravnyr' WHERE map=2236 AND id=156501 AND ScriptName IN('','npc_kalecgos_darkmaul_leave','boss_ravnyr');
UPDATE creature SET curHealthPct=100 WHERE map=2236 AND curHealthPct IS NULL;
COMMIT;
