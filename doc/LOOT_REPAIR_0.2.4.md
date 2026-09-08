# Loot restoration — 0.2.4

8 September 2026 at 19:05 CEST. Migration 21 applied to tc_world.

| Creature | Item | Chance used |
| --- | --- | ---: |
| Great Father Arctikus (1260) | Royal Frostmane Girdle (2546) | 5.55% |
| Great Father Arctikus (1260) | Frostmane Scepter (3223) | 1.95% |
| Frostmane Novice (946) | Light Magesmith Robe (2110) | 0.48% |
| Frostmane Seer (41121) | Frostmane Staff (2257) | 0.23% |

Rates approximate public retail drop observations, not verified Blizzard server probabilities. Sources: [Girdle](https://www.wowhead.com/item=2546/royal-frostmane-girdle), [Scepter](https://www.wowhead.com/item=3223/frostmane-scepter), [Robe](https://www.wowhead.com/item=2110/light-magesmith-robe), [Staff](https://www.wowhead.com/item=2257/frostmane-staff), [current Seer](https://www.wowhead.com/npc=41121/frostmane-seer). Old 1397 Seer data and Classic Arctikus 75%/25% rates were not reused.

All four associations were missing, while NPCs had existing spawns and matching difficulty-0 loot references. Inserted ItemType=0, ordinary loot mode, one item, independent group 0 rolls. These rolls are an implementation assumption; correlations and per-player eligibility are not reconstructed from public marginal rates. Existing quest-required Shimmerweed, other loot rows and difficulty mappings are unchanged. No loot reference templates were imported.

Transaction rollback, repeat import, exact preservation of existing rows and difficulty mappings passed; exactly four rows added. Audit and original targeted rows are in C:/Users/drago/Downloads/aureon-build/loot-024/. Backup is a row dump, not a standalone rollback migration.

The reviewed blood-elf/draenei quest items 20797, 20799 and 22889 already had loot rows. Blood-elf source creatures currently lack spawns; this is a separate NPC problem. Older Rat Catching and War Banners quest-loot candidates were not imported because the current quests carry the deprecated flag.

Restart worldserver and test actual loot generation. No new executable. This is partial named-item restoration, not complete creature/world loot. Arctikus still lacks a reconstructed random-equipment pool; removing its empty-table warning does not certify complete loot. Client item generation/bonus scaling and empirical drop rates have not been tested in-game.
