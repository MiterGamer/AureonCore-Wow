#!/usr/bin/env python3
"""Generate 12.1 dead-ID cleanup SQL from DB2 69587 + tc_world + hotfix + wiki."""
from __future__ import annotations

import json
import re
import struct
import urllib.request
from collections import defaultdict
from pathlib import Path

import pymysql

DB2_DIR = Path(r"C:\ac-server\Data\maps\dbc\deDE")
SQL_DIR = Path(r"C:\AureonCore\sql\updates\world\master")
BASELINE_PATH = Path(r"C:\ac-server\backup\dberrors_baseline_20260905.json")
DBERRORS = Path(r"C:\ac-server\Data\logs\DBErrors.log")
MYSQL = dict(host="127.0.0.1", port=3306, user="root", password="root", database="tc_world", ssl_disabled=True)
HEADER_FMT = "<II128sIIIIIIIIIHhIIIIIII"
HEADER_SIZE = struct.calcsize(HEADER_FMT)
TRINITY_TACT = 0x5452494E49545900
BATCH = 800


def _col_meta(data: bytes, offset: int, field_count: int):
    metas = []
    for i in range(field_count):
        bitoff, bitsize, _add, comp = struct.unpack_from("<HHII", data, offset + i * 24)
        metas.append((bitoff, bitsize, comp))
    return metas


def _record_bits(record: bytes, bitoff: int, bitsize: int) -> int:
    value = int.from_bytes(record, "little")
    return (value >> bitoff) & ((1 << bitsize) - 1)


def load_db2_ids(path: Path) -> tuple[set[int], int]:
    data = path.read_bytes()
    (
        _sig, _ver, _schema, rec_count, field_count, rec_size, _ssize,
        table_hash, _lh, min_id, max_id, _locale, flags, index_field, total,
        _packed, _parent, colmeta, common, pallet, section_count,
    ) = struct.unpack_from(HEADER_FMT, data, 0)
    off = HEADER_SIZE
    sections = []
    for _ in range(section_count):
        tact, file_off, srec, sstr, _cat, idsz, _psz, ccnt, copyc = struct.unpack_from("<QIIIIIIII", data, off)
        sections.append((tact, file_off, srec, sstr, idsz, copyc, ccnt))
        off += 40
    field_off = off
    off += field_count * 4
    metas = _col_meta(data, off, total) if colmeta else []
    ids: set[int] = set()
    sparse = bool(flags & 0x1)
    id_field = index_field if index_field >= 0 else 0
    for tact, file_off, srec, sstr, idsz, copyc, ccnt in sections:
        if tact not in (0, TRINITY_TACT):
            continue
        pos = file_off
        if sparse:
            pos += ccnt * 6 + sstr
        else:
            rec_pos = pos
            pos += rec_size * srec + sstr
        if idsz:
            n = idsz // 4
            chunk = struct.unpack_from("<" + "I" * n, data, pos)
            for value in chunk:
                if value:
                    ids.add(int(value))
            pos += idsz
        elif not sparse and metas and 0 <= id_field < len(metas):
            bitoff, bitsize, _comp = metas[id_field]
            if bitsize:
                for i in range(srec):
                    rec = data[rec_pos + i * rec_size : rec_pos + (i + 1) * rec_size]
                    value = _record_bits(rec, bitoff, bitsize)
                    if min_id <= value <= max_id:
                        ids.add(int(value))
        if copyc:
            copies = struct.unpack_from("<" + "I" * (copyc * 2), data, pos)
            for i in range(0, len(copies), 2):
                if copies[i]:
                    ids.add(int(copies[i]))
    return ids, table_hash


def chunks(seq, size=BATCH):
    seq = list(seq)
    for i in range(0, len(seq), size):
        yield seq[i : i + size]


def sql_values(ids) -> str:
    return ",".join(f"({int(i)})" for i in ids)


def write_id_table(fp, name: str, ids: set[int]) -> None:
    fp.write(f"DROP TABLE IF EXISTS `{name}`;\n")
    fp.write(f"CREATE TABLE `{name}` (`id` int unsigned NOT NULL PRIMARY KEY) ENGINE=Memory;\n")
    ordered = sorted(i for i in ids if i > 0)
    for batch in chunks(ordered):
        fp.write(f"INSERT INTO `{name}` (`id`) VALUES {sql_values(batch)};\n")
    fp.write(f"-- {name}: {len(ordered)} ids from DB2/hotfix 12.1.0.69587\n\n")


def mysql_conn(db="tc_world"):
    cfg = dict(MYSQL)
    cfg["database"] = db
    return pymysql.connect(**cfg)


def fetch_col(cur, sql):
    cur.execute(sql)
    return [row[0] for row in cur.fetchall()]


def main():
    files = {
        "spell": DB2_DIR / "SpellName.db2",
        "item": DB2_DIR / "Item.db2",
        "display": DB2_DIR / "CreatureDisplayInfo.db2",
        "currency": DB2_DIR / "CurrencyTypes.db2",
        "map": DB2_DIR / "Map.db2",
        "areatrigger": DB2_DIR / "AreaTrigger.db2",
        "lock": DB2_DIR / "Lock.db2",
        "gameobjects": DB2_DIR / "GameObjects.db2",
        "broadcast": DB2_DIR / "BroadcastText.db2",
        "battlemaster": DB2_DIR / "BattlemasterList.db2",
    }
    idsets: dict[str, set[int]] = {}
    hashes: dict[str, int] = {}
    for key, path in files.items():
        if not path.exists():
            idsets[key] = set()
            hashes[key] = 0
            print(f"missing {path}")
            continue
        ids, table_hash = load_db2_ids(path)
        idsets[key] = ids
        hashes[key] = table_hash
        print(f"{key}: {len(ids)} ids hash=0x{table_hash:08x} file={path.name}")

    hotfix = mysql_conn("tc_hotfixes")
    hcur = hotfix.cursor()
    extra = {
        "spell": "SELECT ID FROM spell_name",
        "item": "SELECT ID FROM item UNION SELECT ID FROM item_sparse",
        "display": "SELECT ID FROM creature_display_info",
        "currency": "SELECT ID FROM currency_types",
        "map": "SELECT ID FROM map",
        "areatrigger": "SELECT ID FROM area_trigger",
        "gameobjects": "SELECT ID FROM gameobjects",
        "broadcast": "SELECT ID FROM broadcast_text",
        "battlemaster": "SELECT ID FROM battlemaster_list",
        "lock": "SELECT ID FROM `lock`",
    }
    for key, sql in extra.items():
        try:
            got = fetch_col(hcur, sql)
        except Exception as exc:
            print(f"hotfix skip {key}: {exc}")
            continue
        before = len(idsets[key])
        idsets[key].update(int(x) for x in got if x)
        print(f"hotfix +{len(idsets[key]) - before} {key}")

    for key, table_hash in hashes.items():
        if not table_hash:
            continue
        hcur.execute(
            "SELECT RecordId FROM hotfix_data WHERE TableHash=%s AND Status=2",
            (table_hash & 0xFFFFFFFF,),
        )
        removed = [int(r[0]) for r in hcur.fetchall() if r[0]]
        if removed:
            idsets[key].difference_update(removed)
            print(f"hotfix removed {len(removed)} {key}")
    hotfix.close()

    world = mysql_conn()
    cur = world.cursor()

    # --- baseline unique DBErrors from last ~80k lines ---
    if DBERRORS.exists():
        text = DBERRORS.read_text(encoding="utf-8", errors="replace").splitlines()
        tail = text[-80000:] if len(text) > 80000 else text
        baseline = {
            "lines_total": len(text),
            "lines_tail": len(tail),
            "quest_poi": len({m.group(1) for l in tail if (m := re.search(r"quest_poi.*quest(?:ID)?[: ]+(\d+)", l, re.I))}),
            "nonexisting_display": len({m.group(1) for l in tail if (m := re.search(r"non-existing CreatureDisplayID id \((\d+)\)", l))}),
            "no_model_data": len({m.group(1) for l in tail if (m := re.search(r"No model data exist for `CreatureDisplayID` = (\d+)", l))}),
            "currency_missing": len({m.group(1) for l in tail if (m := re.search(r"currency.*?(\d+).*does not exist|Currency(?:Id| ID)[: ]+(\d+)", l, re.I))}),
            "reward_spell": len({m.group(1) for l in tail if (m := re.search(r"RewardSpellCast` = (\d+)", l))}),
            "spell_does_not_exist": len({m.group(1) for l in tail if (m := re.search(r"Spell.*?(\d+) does not exist", l))}),
        }
        BASELINE_PATH.write_text(json.dumps(baseline, indent=2), encoding="utf-8")
        print("baseline", baseline)

    # =====================================================================
    # Phase A — orphans
    # =====================================================================
    a = SQL_DIR / "2026_09_05_18_world.sql"
    with a.open("w", encoding="utf-8", newline="\n") as fp:
        fp.write("-- 12.1 cleanup Phase A: child rows whose parent is missing in tc_world.\n")
        fp.write("-- Does not delete creature/quest templates of old expansions.\n")
        fp.write("SET NAMES utf8mb4;\n\n")
        fp.write("DELETE qp FROM `quest_poi` qp LEFT JOIN `quest_template` qt ON qt.`ID` = qp.`QuestID` WHERE qt.`ID` IS NULL;\n")
        fp.write("DELETE qpp FROM `quest_poi_points` qpp LEFT JOIN `quest_template` qt ON qt.`ID` = qpp.`QuestID` WHERE qt.`ID` IS NULL;\n")
        fp.write("DELETE qd FROM `quest_details` qd LEFT JOIN `quest_template` qt ON qt.`ID` = qd.`ID` WHERE qt.`ID` IS NULL;\n")
        fp.write("DELETE qri FROM `quest_request_items` qri LEFT JOIN `quest_template` qt ON qt.`ID` = qri.`ID` WHERE qt.`ID` IS NULL;\n")
        fp.write("DELETE qor FROM `quest_offer_reward` qor LEFT JOIN `quest_template` qt ON qt.`ID` = qor.`ID` WHERE qt.`ID` IS NULL;\n")
        fp.write("DELETE qms FROM `quest_mail_sender` qms LEFT JOIN `quest_template` qt ON qt.`ID` = qms.`QuestId` WHERE qt.`ID` IS NULL;\n\n")
        fp.write("DELETE ca FROM `creature_addon` ca LEFT JOIN `creature` c ON c.`guid` = ca.`guid` WHERE c.`guid` IS NULL;\n")
        fp.write("DELETE ga FROM `gameobject_addon` ga LEFT JOIN `gameobject` g ON g.`guid` = ga.`guid` WHERE g.`guid` IS NULL;\n")
        fp.write("DELETE cta FROM `creature_template_addon` cta LEFT JOIN `creature_template` t ON t.`entry` = cta.`entry` WHERE t.`entry` IS NULL;\n")
        fp.write("DELETE ctd FROM `creature_template_difficulty` ctd LEFT JOIN `creature_template` t ON t.`entry` = ctd.`Entry` WHERE t.`entry` IS NULL;\n")
        fp.write("DELETE ctm FROM `creature_template_model` ctm LEFT JOIN `creature_template` t ON t.`entry` = ctm.`CreatureID` WHERE t.`entry` IS NULL;\n")
        fp.write("DELETE cts FROM `creature_template_spell` cts LEFT JOIN `creature_template` t ON t.`entry` = cts.`CreatureID` WHERE t.`entry` IS NULL;\n")
        fp.write("DELETE ctg FROM `creature_template_gossip` ctg LEFT JOIN `creature_template` t ON t.`entry` = ctg.`CreatureID` WHERE t.`entry` IS NULL;\n")
        fp.write("DELETE ce FROM `creature_equip_template` ce LEFT JOIN `creature_template` t ON t.`entry` = ce.`CreatureID` WHERE t.`entry` IS NULL;\n\n")
        fp.write("DELETE pt FROM `pool_template` pt LEFT JOIN `pool_members` pm ON pm.`poolSpawnId` = pt.`entry` WHERE pm.`poolSpawnId` IS NULL;\n\n")
        fp.write("DELETE gmo FROM `gossip_menu_option` gmo LEFT JOIN `gossip_menu` gm ON gm.`MenuID` = gmo.`MenuID` WHERE gm.`MenuID` IS NULL;\n")
        fp.write("DELETE ctg FROM `creature_template_gossip` ctg LEFT JOIN `gossip_menu` gm ON gm.`MenuID` = ctg.`MenuID` WHERE gm.`MenuID` IS NULL;\n")
        fp.write("-- conditions SourceType 14/15 = gossip menu / option\n")
        fp.write("DELETE c FROM `conditions` c LEFT JOIN `gossip_menu` gm ON gm.`MenuID` = c.`SourceGroup` "
                 "WHERE c.`SourceTypeOrReferenceId` IN (14,15) AND gm.`MenuID` IS NULL;\n\n")
        fp.write("DELETE qo FROM `quest_objectives` qo LEFT JOIN `quest_template` qt ON qt.`ID` = qo.`QuestID` WHERE qt.`ID` IS NULL;\n")
        fp.write("DELETE qo FROM `quest_objectives` qo LEFT JOIN `creature_template` t ON t.`entry` = qo.`ObjectID` "
                 "WHERE qo.`Type` IN (0,3) AND qo.`ObjectID` > 0 AND t.`entry` IS NULL;\n")
        fp.write("DELETE qo FROM `quest_objectives` qo LEFT JOIN `gameobject_template` t ON t.`entry` = qo.`ObjectID` "
                 "WHERE qo.`Type` = 2 AND qo.`ObjectID` > 0 AND t.`entry` IS NULL;\n\n")
        fp.write("-- disables: map/BG/LFG/vmap/mmap entries missing from Map.db2 / BattlemasterList.db2\n")
        if idsets["map"]:
            write_id_table(fp, "_cleanup_db2_map", idsets["map"])
            fp.write("DELETE FROM `disables` WHERE `sourceType` IN (2,6,7,8) AND `entry` > 0 "
                     "AND `entry` NOT IN (SELECT `id` FROM `_cleanup_db2_map`);\n")
            fp.write("DROP TABLE `_cleanup_db2_map`;\n")
        if idsets["battlemaster"]:
            write_id_table(fp, "_cleanup_db2_bg", idsets["battlemaster"])
            fp.write("DELETE FROM `disables` WHERE `sourceType` = 3 AND `entry` > 0 "
                     "AND `entry` NOT IN (SELECT `id` FROM `_cleanup_db2_bg`);\n")
            fp.write("DROP TABLE `_cleanup_db2_bg`;\n")
        fp.write("\n")
    print("wrote", a)

    # =====================================================================
    # Phase B — dead DB2 refs
    # =====================================================================
    b = SQL_DIR / "2026_09_05_19_world.sql"
    loot_tables = fetch_col(cur, "SHOW TABLES LIKE '%loot_template'")
    with b.open("w", encoding="utf-8", newline="\n") as fp:
        fp.write("-- 12.1 cleanup Phase B: world FKs pointing at IDs missing from DB2 69587.\n")
        fp.write("-- Parents (NPC/quest/GO templates) stay. Negative/serverside spell IDs stay.\n")
        fp.write("SET NAMES utf8mb4;\n\n")
        write_id_table(fp, "_cleanup_db2_spell", idsets["spell"])
        write_id_table(fp, "_cleanup_db2_item", idsets["item"])
        write_id_table(fp, "_cleanup_db2_currency", idsets["currency"])
        write_id_table(fp, "_cleanup_db2_at", idsets["areatrigger"])

        fp.write("DELETE FROM `creature_quest_currency` WHERE `CurrencyId` > 0 "
                 "AND `CurrencyId` NOT IN (SELECT `id` FROM `_cleanup_db2_currency`);\n")
        fp.write("UPDATE `quest_template` SET `RewardSpell` = 0 WHERE `RewardSpell` > 0 "
                 "AND `RewardSpell` NOT IN (SELECT `id` FROM `_cleanup_db2_spell`);\n")
        fp.write("DELETE FROM `creature_template_spell` WHERE `Spell` > 0 "
                 "AND `Spell` NOT IN (SELECT `id` FROM `_cleanup_db2_spell`);\n")
        fp.write("DELETE FROM `npc_spellclick_spells` WHERE `spell_id` > 0 "
                 "AND `spell_id` NOT IN (SELECT `id` FROM `_cleanup_db2_spell`);\n")
        fp.write("DELETE FROM `spell_script_names` WHERE `spell_id` > 0 "
                 "AND `spell_id` NOT IN (SELECT `id` FROM `_cleanup_db2_spell`);\n")
        fp.write("DELETE FROM `spell_proc` WHERE `SpellId` > 0 "
                 "AND `SpellId` NOT IN (SELECT `id` FROM `_cleanup_db2_spell`);\n")
        fp.write("DELETE FROM `smart_scripts` WHERE `action_type` IN (11,85,86,134) AND `action_param1` > 0 "
                 "AND `action_param1` NOT IN (SELECT `id` FROM `_cleanup_db2_spell`);\n")
        fp.write("DELETE FROM `smart_scripts` WHERE `action_type` = 28 AND `action_param1` > 0 "
                 "AND `action_param1` NOT IN (SELECT `id` FROM `_cleanup_db2_spell`);\n")

        fp.write("DELETE FROM `quest_objectives` WHERE `Type` = 1 AND `ObjectID` > 0 "
                 "AND `ObjectID` NOT IN (SELECT `id` FROM `_cleanup_db2_item`);\n")
        fp.write("DELETE FROM `quest_objectives` WHERE `Type` IN (10,19,20) AND `ObjectID` > 0 "
                 "AND `ObjectID` NOT IN (SELECT `id` FROM `_cleanup_db2_at`);\n")
        fp.write("DELETE FROM `quest_objectives` WHERE `Type` IN (4,16,17) AND `ObjectID` > 0 "
                 "AND `ObjectID` NOT IN (SELECT `id` FROM `_cleanup_db2_currency`);\n")
        fp.write("DELETE FROM `quest_objectives` WHERE `Type` = 5 AND `ObjectID` > 0 "
                 "AND `ObjectID` NOT IN (SELECT `id` FROM `_cleanup_db2_spell`);\n")

        for table in loot_tables:
            table = table.decode() if isinstance(table, bytes) else table
            fp.write(
                f"DELETE FROM `{table}` WHERE `ItemType` = 0 AND `Item` > 0 "
                f"AND `Item` NOT IN (SELECT `id` FROM `_cleanup_db2_item`);\n"
            )
            fp.write(
                f"DELETE FROM `{table}` WHERE `ItemType` = 1 AND `Item` > 0 "
                f"AND `Item` NOT IN (SELECT `id` FROM `_cleanup_db2_currency`);\n"
            )

        extra_spell_tables = [
            ("spell_linked_spell", "spell_trigger"),
            ("spell_linked_spell", "spell_effect"),
            ("spell_area", "spell"),
            ("spell_group", "spell_id"),
            ("spell_group_stack_rules", "group_id"),
            ("spell_learn_spell", "entry"),
            ("spell_learn_spell", "SpellID"),
            ("spell_pet_auras", "spell"),
            ("spell_pet_auras", "aura"),
            ("spell_proc_event", "entry"),
            ("spell_bonus_data", "entry"),
            ("spell_threat", "entry"),
            ("skill_discovery_template", "spellId"),
            ("skill_extra_item_template", "spellId"),
        ]
        existing = {t.decode() if isinstance(t, bytes) else t for t in fetch_col(cur, "SHOW TABLES")}
        for table, col in extra_spell_tables:
            if table not in existing:
                continue
            if table == "spell_group_stack_rules":
                continue
            fp.write(
                f"DELETE FROM `{table}` WHERE `{col}` > 0 AND `{col}` NOT IN (SELECT `id` FROM `_cleanup_db2_spell`);\n"
            )

        # addon auras: strip missing spell tokens
        cur.execute("SELECT `entry`, `auras` FROM `creature_template_addon` WHERE `auras` IS NOT NULL AND `auras` <> ''")
        addon_updates = []
        spells = idsets["spell"]
        for entry, auras in cur.fetchall():
            tokens = [t for t in str(auras).split() if t]
            kept = []
            changed = False
            for tok in tokens:
                try:
                    sid = int(tok)
                except ValueError:
                    kept.append(tok)
                    continue
                if sid <= 0 or sid in spells:
                    kept.append(tok)
                else:
                    changed = True
            if changed:
                addon_updates.append((entry, " ".join(kept)))
        for entry, auras in addon_updates:
            esc = auras.replace("\\", "\\\\").replace("'", "\\'")
            fp.write(f"UPDATE `creature_template_addon` SET `auras` = '{esc}' WHERE `entry` = {int(entry)};\n")
        print(f"addon aura strips: {len(addon_updates)}")

        fp.write("\nDROP TABLE `_cleanup_db2_spell`;\n")
        fp.write("DROP TABLE `_cleanup_db2_item`;\n")
        fp.write("DROP TABLE `_cleanup_db2_currency`;\n")
        fp.write("DROP TABLE `_cleanup_db2_at`;\n")
    print("wrote", b)

    # =====================================================================
    # Phase C — display IDs
    # =====================================================================
    cpath = SQL_DIR / "2026_09_05_20_world.sql"
    with cpath.open("w", encoding="utf-8", newline="\n") as fp:
        fp.write("-- 12.1 cleanup Phase C: drop model rows whose DisplayID is gone from CreatureDisplayInfo.db2.\n")
        fp.write("-- Does not delete creature_template. CollisionWidth fills for live displays stay.\n")
        fp.write("SET NAMES utf8mb4;\n\n")
        write_id_table(fp, "_cleanup_db2_display", idsets["display"])
        fp.write("DELETE FROM `creature_template_model` WHERE `CreatureDisplayID` > 0 "
                 "AND `CreatureDisplayID` NOT IN (SELECT `id` FROM `_cleanup_db2_display`);\n")
        fp.write("DELETE FROM `creature_model_info` WHERE `DisplayID` > 0 "
                 "AND `DisplayID` NOT IN (SELECT `id` FROM `_cleanup_db2_display`);\n")
        fp.write("DROP TABLE `_cleanup_db2_display`;\n")
    print("wrote", cpath)

    # creatures left with zero models — report only
    cur.execute(
        """
        SELECT t.entry, t.name
        FROM creature_template t
        LEFT JOIN creature_template_model m ON m.CreatureID = t.entry
        WHERE m.CreatureID IS NULL
        LIMIT 20
        """
    )
    print("sample creatures currently without model rows:", cur.fetchall()[:5])

    # =====================================================================
    # Phase D — wiki removed, only if missing from DB2
    # =====================================================================
    wiki_item_ids: set[int] = set()
    wiki_spell_ids: set[int] = set()
    try:
        api = (
            "https://warcraft.wiki.gg/api.php?action=query&generator=categorymembers"
            "&gcmtitle=Category:Removed_in_patch_12.1.0&gcmtype=page&gcmlimit=500"
            "&prop=revisions&rvprop=content&format=json"
        )
        req = urllib.request.Request(api, headers={"User-Agent": "AureonCore-cleanup/1.0"})
        with urllib.request.urlopen(req, timeout=60) as resp:
            payload = json.loads(resp.read().decode("utf-8", errors="replace"))
        pages = payload.get("query", {}).get("pages", {})
        for page in pages.values():
            revs = page.get("revisions") or []
            text = ""
            if revs:
                text = revs[0].get("*") or revs[0].get("slots", {}).get("main", {}).get("*") or ""
            wiki_item_ids.update(int(x) for x in re.findall(r"\|\s*itemid\s*=\s*(\d+)", text, re.I))
            wiki_item_ids.update(int(x) for x in re.findall(r"\{\{#data:Itemtip[^}]*\|id=(\d+)", text, re.I))
            wiki_spell_ids.update(int(x) for x in re.findall(r"\|\s*spellid\s*=\s*(\d+)", text, re.I))
            wiki_spell_ids.update(int(x) for x in re.findall(r"\{\{#data:Spelltooltip[^}]*\|id=(\d+)", text, re.I))
        print(f"wiki item ids {len(wiki_item_ids)} spell ids {len(wiki_spell_ids)}")
    except Exception as exc:
        print("wiki fetch failed:", exc)

    dead_wiki_items = sorted(i for i in wiki_item_ids if i not in idsets["item"])
    dead_wiki_spells = sorted(i for i in wiki_spell_ids if i not in idsets["spell"])
    dpath = SQL_DIR / "2026_09_05_21_world.sql"
    with dpath.open("w", encoding="utf-8", newline="\n") as fp:
        fp.write("-- 12.1 cleanup Phase D: warcraft.wiki.gg Removed_in_patch_12.1.0 IDs also missing from local DB2.\n")
        fp.write("SET NAMES utf8mb4;\n\n")
        if dead_wiki_items:
            fp.write(f"-- wiki items not in Item.db2: {len(dead_wiki_items)}\n")
            for table in loot_tables:
                table = table.decode() if isinstance(table, bytes) else table
                for batch in chunks(dead_wiki_items):
                    fp.write(
                        f"DELETE FROM `{table}` WHERE `ItemType` = 0 AND `Item` IN ({','.join(str(i) for i in batch)});\n"
                    )
            if "npc_vendor" in existing:
                for batch in chunks(dead_wiki_items):
                    fp.write(f"DELETE FROM `npc_vendor` WHERE `item` IN ({','.join(str(i) for i in batch)});\n")
        else:
            fp.write("-- no wiki item IDs missing from Item.db2\n")
        if dead_wiki_spells:
            fp.write(f"-- wiki spells not in SpellName.db2: {len(dead_wiki_spells)}\n")
            for batch in chunks(dead_wiki_spells):
                lst = ",".join(str(i) for i in batch)
                fp.write(f"DELETE FROM `spell_script_names` WHERE `spell_id` IN ({lst});\n")
                fp.write(f"DELETE FROM `spell_proc` WHERE `SpellId` IN ({lst});\n")
        else:
            fp.write("-- no wiki spell IDs missing from SpellName.db2\n")
        fp.write("SELECT 1;\n")
    print("wrote", dpath, "dead wiki items", len(dead_wiki_items), "spells", len(dead_wiki_spells))

    world.close()
    print("done")


if __name__ == "__main__":
    main()
