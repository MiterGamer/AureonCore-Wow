-- Aureon Core 0.2.3: deterministic corrections from DBErrors.log.
-- Persist loader fallbacks and remove ignored invalid values; do not delete missing-content references or invent loot.
START TRANSACTION;
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=254688 AND (RequiredExpansion=-3);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=247985 AND (RequiredExpansion=-3);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=243669 AND (RequiredExpansion=-3);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=251831 AND (RequiredExpansion=-3);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=243678 AND (RequiredExpansion=-3);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=242492 AND (RequiredExpansion=-3);
-- zero-speed-fallback
UPDATE creature_template SET speed_walk=1 WHERE entry=97229 AND (speed_walk=0);
-- zero-speed-fallback
UPDATE creature_template SET speed_run=1.14286 WHERE entry=97229 AND (speed_run=0);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=243663 AND (RequiredExpansion=-3);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=243675 AND (RequiredExpansion=-3);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=227773 AND (RequiredExpansion=-3);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=233708 AND (RequiredExpansion=-3);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=249848 AND (RequiredExpansion=-3);
-- invalid-expansion-fallback
UPDATE creature_template SET RequiredExpansion=0 WHERE entry=258674 AND (RequiredExpansion=-3);
-- idle-wander-radius
UPDATE creature SET wander_distance=0 WHERE guid=7000378 AND (id=136422 AND MovementType=0 AND wander_distance<>0);
-- idle-wander-radius
UPDATE creature SET wander_distance=0 WHERE guid=7001449 AND (id=125253 AND MovementType=0 AND wander_distance<>0);
-- idle-wander-radius
UPDATE creature SET wander_distance=0 WHERE guid=7003340 AND (id=127808 AND MovementType=0 AND wander_distance<>0);
-- idle-wander-radius
UPDATE creature SET wander_distance=0 WHERE guid=7003719 AND (id=134955 AND MovementType=0 AND wander_distance<>0);
-- idle-wander-radius
UPDATE creature SET wander_distance=0 WHERE guid=10000284 AND (id=222331 AND MovementType=0 AND wander_distance<>0);
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=11122 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=11293 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=11294 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=11318 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=11407 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=11408 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=11409 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=11412 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- missing-start-item-quantity
UPDATE quest_template_addon SET ProvidedItemCount=1 WHERE ID=88719 AND (ProvidedItemCount=0 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=239151));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=12491 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=12492 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=13808 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=25134 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=28602 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=29393 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=29394 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=31939 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=65594 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=65279 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=65306 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
-- quantity-without-start-item
UPDATE quest_template_addon SET ProvidedItemCount=0 WHERE ID=65595 AND (ProvidedItemCount=1 AND EXISTS(SELECT 1 FROM quest_template q WHERE q.ID=quest_template_addon.ID AND q.StartItem=0));
COMMIT;
