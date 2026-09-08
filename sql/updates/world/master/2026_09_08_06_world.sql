-- Camp Jaina has a spawn-level zero flag override, hiding One Last Spar's turn-in.
UPDATE creature SET npcflag=npcflag|2
WHERE guid=8000044 AND id=156807 AND map=2175 AND npcflag IS NOT NULL;
