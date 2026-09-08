-- Aureon Core 0.2.3: deterministic corrections from DBErrors.log.
-- Persist loader fallbacks and remove ignored invalid values; do not delete missing-content references or invent loot.
START TRANSACTION;
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=59916 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote3=0 WHERE ID=60116 AND (Emote3 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=60116 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63892 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63899 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63909 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63910 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63911 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63912 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63914 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63915 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63916 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63917 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63918 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63919 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63920 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63921 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=63924 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote2=0 WHERE ID=64963 AND (Emote2 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=65287 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=65371 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=65711 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=65761 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=65778 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=65953 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote3=0 WHERE ID=66055 AND (Emote3 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=66055 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote3=0 WHERE ID=66056 AND (Emote3 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote4=0 WHERE ID=66056 AND (Emote4 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=66262 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=66299 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote2=0 WHERE ID=69900 AND (Emote2 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=70132 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote2=0 WHERE ID=72708 AND (Emote2 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=76323 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=76401 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=77896 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=82700 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=82701 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=84721 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote2=0 WHERE ID=84727 AND (Emote2 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=85876 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=86997 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=87455 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote2=0 WHERE ID=89332 AND (Emote2 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=90872 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91339 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91533 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91535 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91536 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91544 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91550 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91551 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91552 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91553 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91585 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91586 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91587 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91588 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91589 AND (Emote1 IN(-1,65535));
-- invalid-emote-sentinel
UPDATE quest_offer_reward SET Emote1=0 WHERE ID=91963 AND (Emote1 IN(-1,65535));
COMMIT;
