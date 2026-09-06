-- Last-start DBErrors: proven orphans and dead 12.1 refs. DELETE/UPDATE only.
SET NAMES utf8mb4;

-- Empty pools (no members).
DELETE FROM `pool_template` WHERE `entry` IN (2000,2001,2002,2003,2004,2005,2006,2009,2010,2014,2015,2018);

-- Gossip texts that are not in npc_text (skipped at load).
DELETE `gm` FROM `gossip_menu` `gm`
LEFT JOIN `npc_text` `nt` ON `nt`.`ID` = `gm`.`TextID`
WHERE `nt`.`ID` IS NULL;

DELETE `gmo` FROM `gossip_menu_option` `gmo`
LEFT JOIN `gossip_menu` `gm` ON `gm`.`MenuID` = `gmo`.`MenuID`
WHERE `gm`.`MenuID` IS NULL;

-- Waypoints without parent path.
DELETE FROM `waypoint_path_node` WHERE `PathId` = 3568;

-- Spells gone from Spell.db2.
DELETE FROM `spell_totem_model` WHERE `SpellID` = 157153;
DELETE FROM `spell_target_position` WHERE `ID` = 258988;
DELETE FROM `spell_linked_spell`
WHERE ABS(`spell_trigger`) IN (73015, 59907, 92237)
   OR ABS(`spell_effect`) IN (73015, 59907);

-- Serverside rows that collide with client Spell.db2 (override/effects not allowed).
DELETE FROM `serverside_spell_effect` WHERE `SpellID` IN (6440,16331,34703,34704,34705,34707,34710,34781,35773,49885);
DELETE FROM `serverside_spell` WHERE `Id` IN (6440,16331,34703,34704,34705,34707,34710,34781,35773,49885);

-- Map 618 is not a battleground in this build. BG 11 is not in BattlemasterList.db2.
DELETE FROM `battleground_scripts` WHERE `MapId` = 618;
DELETE FROM `battleground_template` WHERE `ID` = 11;

-- Graveyards missing from WorldSafeLocs.
DELETE FROM `graveyard_zone` WHERE `ID` IN (529, 669, 670, 671);

-- SmartAI rows with entryorguid 0 (never load).
DELETE FROM `smart_scripts` WHERE `entryorguid` = 0;

-- Loot lines whose Item is not in Item.db2 (last start).
DELETE FROM `creature_loot_template` WHERE `Item` IN (5000,14495,37089,37090,40843,46819,52498,112266,223891);
DELETE FROM `gameobject_loot_template` WHERE `Item` IN (35480,35482);

-- Creature loot templates not used as any LootID (and not player-corpse 1).
DELETE FROM `creature_loot_template` WHERE `Entry` IN (
    520,808,11502,17536,23980,26231,30892,32353,34015,37070,37073,37112,37507,
    74351,74353,74363,74380,74382,74980,74983,75058,75135,75285,75286,
    76036,76037,76038,76039,77232);

-- Currencies 3252 / 390 are not in CurrencyTypes 12.1. 738 with qty 0 is invalid.
UPDATE `quest_template` SET `RewardCurrencyID1` = 0, `RewardCurrencyQty1` = 0 WHERE `RewardCurrencyID1` IN (3252, 390);
UPDATE `quest_template` SET `RewardCurrencyID2` = 0, `RewardCurrencyQty2` = 0 WHERE `RewardCurrencyID2` IN (3252, 390);
UPDATE `quest_template` SET `RewardCurrencyID3` = 0, `RewardCurrencyQty3` = 0 WHERE `RewardCurrencyID3` IN (3252, 390);
UPDATE `quest_template` SET `RewardCurrencyID4` = 0, `RewardCurrencyQty4` = 0 WHERE `RewardCurrencyID4` IN (3252, 390);
UPDATE `quest_template` SET `RewardCurrencyID1` = 0, `RewardCurrencyQty1` = 0 WHERE `RewardCurrencyID1` = 738 AND `RewardCurrencyQty1` = 0;
UPDATE `quest_template` SET `RewardCurrencyID2` = 0, `RewardCurrencyQty2` = 0 WHERE `RewardCurrencyID2` = 738 AND `RewardCurrencyQty2` = 0;

-- RewardSpell (logged as RewardSpellCast) broken in this build.
UPDATE `quest_template` SET `RewardSpell` = 0
WHERE `RewardSpell` IN (218022, 219663, 224135, 226101, 290470, 296926);
