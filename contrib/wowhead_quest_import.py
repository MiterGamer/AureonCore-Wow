#!/usr/bin/env python3
"""Convert WoWhead quest JSON into TrinityCore SQL inserts.

Usage:
  python contrib/wowhead_quest_import.py --input quest_export.json --output world_quests.sql

Supported input shapes:
  - list of quest objects
  - {"quests": [ ... ]}
  - {"data": [ ... ]}
  - single quest object

Expected WoWhead field names are flexible. The importer accepts common variants like:
  id, questId, QuestID, name, title, level, requiredLevel, questType, type,
  rewards, rewardChoices, rewardCurrency, objectives, objectiveList, etc.

The generated SQL matches the TrinityCore world schema used in this repo.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import sys
from pathlib import Path
from typing import Any, Iterable


def first_present(obj: dict[str, Any], names: Iterable[str], default: Any = None) -> Any:
    for name in names:
        if name in obj:
            return obj[name]
    return default


def as_list(value: Any) -> list[Any]:
    if value is None:
        return []
    if isinstance(value, list):
        return value
    if isinstance(value, tuple):
        return list(value)
    return [value]


def to_int(value: Any, default: int = 0) -> int:
    if value is None or value == "":
        return default
    if isinstance(value, bool):
        return int(value)
    if isinstance(value, (int, float)):
        return int(value)
    if isinstance(value, str):
        value = value.strip()
        if not value:
            return default
        value = value.replace(",", "")
        value = value.replace("%", "")
        try:
            return int(float(value))
        except ValueError:
            return default
    return default


def to_float(value: Any, default: float = 1.0) -> float:
    if value is None or value == "":
        return default
    if isinstance(value, (int, float)):
        return float(value)
    if isinstance(value, str):
        value = value.strip().replace(",", "")
        try:
            return float(value)
        except ValueError:
            return default
    return default


def sql_escape(value: Any) -> str:
    if value is None:
        return "NULL"
    if isinstance(value, bool):
        return "1" if value else "0"
    if isinstance(value, (int, float)):
        return str(value)
    text = str(value)
    text = text.replace("\\", "\\\\")
    text = text.replace("'", "\\'")
    text = text.replace("\n", "\\n")
    return "'" + text + "'"


def lookup_nested(obj: dict[str, Any], *paths: str) -> Any:
    for path in paths:
        cur = obj
        ok = True
        for part in path.split("."):
            if not isinstance(cur, dict) or part not in cur:
                ok = False
                break
            cur = cur[part]
        if ok:
            return cur
    return None


def quest_type_from_value(value: Any) -> int:
    if value is None:
        return 2
    if isinstance(value, (int, float)):
        return int(value)
    text = str(value).strip().lower()
    map_values = {
        "normal": 2,
        "standard": 2,
        "daily": 2,
        "weekly": 2,
        "seasonal": 2,
        "group": 2,
        "raid": 3,
        "dungeon": 4,
        "pvp": 5,
        "world": 7,
        "meta": 14,
        "story": 2,
        "journey": 13,
        "important": 100,
        "legendary": 101,
        "bonus": 2,
        "scenario": 8,
        "professions": 2,
    }
    for key, mapped in map_values.items():
        if key in text:
            return mapped
    return 2


def quest_sort_from_value(value: Any) -> int:
    if value is None:
        return 0
    if isinstance(value, (int, float)):
        return int(value)
    text = str(value).strip().lower()
    mapping = {
        "default": 0,
        "epic": 0,
        "daily": 0,
        "pvp": 0,
        "dungeon": 0,
        "raid": 0,
        "world": 0,
        "profession": 0,
    }
    for key, mapped in mapping.items():
        if key in text:
            return mapped
    return 0


def quest_info_from_value(value: Any) -> int:
    if value is None:
        return 0
    if isinstance(value, (int, float)):
        return int(value)
    text = str(value).strip().lower()
    mapping = {
        "normal": 0,
        "daily": 0,
        "group": 2,
        "story": 4,
        "world": 7,
        "important": 100,
        "legendary": 101,
        "journey": 13,
        "meta": 14,
        "pvp": 5,
        "dungeon": 3,
        "raid": 1,
    }
    for key, mapped in mapping.items():
        if key in text:
            return mapped
    return 0


def get_simple_string(quest: dict[str, Any], names: Iterable[str], fallback: str = "") -> str:
    for name in names:
        if name in quest and quest[name] not in (None, ""):
            return str(quest[name])
    return fallback


def get_reward_list(quest: dict[str, Any], *paths: str) -> list[Any]:
    for path in paths:
        data = lookup_nested(quest, path)
        if data is not None:
            return as_list(data)
    return []


def normalize_quests(payload: Any) -> list[dict[str, Any]]:
    if isinstance(payload, list):
        return [q for q in payload if isinstance(q, dict)]
    if isinstance(payload, dict):
        for key in ("quests", "data", "results", "items"):
            if key in payload and isinstance(payload[key], list):
                return [q for q in payload[key] if isinstance(q, dict)]
        return [payload]
    return []


def parse_reward_item(item: Any) -> tuple[int, int, int]:
    if not isinstance(item, dict):
        return 0, 0, 0

    item_id = to_int(first_present(item, ("itemId", "id", "ItemID", "ID"), 0), 0)
    quantity = to_int(first_present(item, ("quantity", "count", "qty", "Quantity"), 1), 1)
    display_id = to_int(first_present(item, ("displayId", "displayID", "iconId", "DisplayID"), 0), 0)
    return item_id, quantity, display_id


def parse_reward_choice_items(quest: dict[str, Any]) -> list[tuple[int, int, int]]:
    values: list[tuple[int, int, int]] = []
    sources = []
    for key in ("rewardChoiceItems", "rewardChoices", "choiceRewards", "choices", "rewardChoice"):
        if key in quest:
            sources.append(quest[key])
    if not sources:
        for key in ("rewards.choiceItems", "rewards.choices", "rewards.rewardChoiceItems"):
            data = lookup_nested(quest, key)
            if data is not None:
                sources.append(data)
    for source in sources:
        for entry in as_list(source):
            if isinstance(entry, dict):
                values.append(parse_reward_item(entry))
            elif isinstance(entry, list) and len(entry) >= 3:
                values.append((to_int(entry[0], 0), to_int(entry[1], 0), to_int(entry[2], 0)))
    return values


def parse_reward_currency(quest: dict[str, Any]) -> list[tuple[int, int]]:
    values: list[tuple[int, int]] = []
    sources: list[Any] = []
    for key in ("rewardCurrencies", "rewardCurrency", "currencies", "currencyRewards"):
        if key in quest:
            sources.append(quest[key])
    if not sources:
        for key in ("rewards.currency", "rewards.currencys", "rewards.currencies"):
            src = lookup_nested(quest, key)
            if src is not None:
                sources.append(src)
    for source in sources:
        for entry in as_list(source):
            if isinstance(entry, dict):
                cid = to_int(first_present(entry, ("currencyId", "currencyID", "id", "ID", "ItemID"), 0), 0)
                qty = to_int(first_present(entry, ("quantity", "count", "amount", "Qty"), 0), 0)
                if cid:
                    values.append((cid, qty))
            elif isinstance(entry, list) and len(entry) >= 2:
                values.append((to_int(entry[0], 0), to_int(entry[1], 0)))
    return values


def parse_reward_faction(quest: dict[str, Any]) -> list[tuple[int, int]]:
    values: list[tuple[int, int]] = []
    sources: list[Any] = []
    for key in ("rewardFactions", "factionRewards", "reputationRewards"):
        if key in quest:
            sources.append(quest[key])
    if not sources:
        for key in ("rewards.faction", "rewards.reputation"):
            src = lookup_nested(quest, key)
            if src is not None:
                sources.append(src)
    for source in sources:
        for entry in as_list(source):
            if isinstance(entry, dict):
                fid = to_int(first_present(entry, ("factionId", "factionID", "id", "ID"), 0), 0)
                value = to_int(first_present(entry, ("value", "amount", "rep", "points"), 0), 0)
                if fid:
                    values.append((fid, value))
            elif isinstance(entry, list) and len(entry) >= 2:
                values.append((to_int(entry[0], 0), to_int(entry[1], 0)))
    return values


def parse_objectives(quest: dict[str, Any]) -> list[dict[str, Any]]:
    objs: list[dict[str, Any]] = []
    found = []
    for key in ("objectives", "objectiveList", "questsObjectives", "Objectives"):
        if key in quest:
            found.extend(as_list(quest[key]))
    if not found:
        for key in ("requirements.objectives", "data.objectives"):
            data = lookup_nested(quest, key)
            if data is not None:
                found.extend(as_list(data))
    for idx, item in enumerate(found, 1):
        if not isinstance(item, dict):
            continue
        otype = to_int(first_present(item, ("type", "Type", "objectiveType", "objectiveTypeId"), 0), 0)
        if not otype:
            text = str(first_present(item, ("type", "Type"), "")).strip().lower()
            if "kill" in text or "creature" in text or "monster" in text:
                otype = 1
            elif "item" in text:
                otype = 2
            elif "object" in text or "go" in text:
                otype = 3
            elif "talk" in text or "npc" in text or "chat" in text:
                otype = 5
        obj_id = to_int(first_present(item, ("objectId", "objectID", "creatureId", "npcId", "ItemId", "itemId"), 0), 0)
        amount = to_int(first_present(item, ("amount", "count", "qty", "required"), 0), 0)
        desc = str(first_present(item, ("description", "text", "title", "Name"), "Objective"))
        objs.append({
            "Type": otype,
            "ObjectID": obj_id,
            "Amount": amount,
            "Description": desc,
            "Visible": 1,
            "Order": idx,
        })
    if not objs and "Objective" in quest:
        desc = str(quest["Objective"])
        objs.append({"Type": 0, "ObjectID": 0, "Amount": 0, "Description": desc, "Visible": 1, "Order": 1})
    return objs


def build_quest_template_sql(quest: dict[str, Any]) -> str:
    quest_id = to_int(first_present(quest, ("id", "questId", "QuestID", "ID"), 0), 0)
    if not quest_id:
        raise ValueError("Quest missing required ID")

    log_title = get_simple_string(quest, ("logTitle", "title", "name", "Title", "Name"), "")
    log_description = get_simple_string(quest, ("logDescription", "description", "Description"), "")
    quest_description = get_simple_string(quest, ("questDescription", "description", "Description"), log_description)
    area_description = get_simple_string(quest, ("areaDescription", "zoneText", "AreaDescription"), "")
    portrait_giver = to_int(first_present(quest, ("portraitGiver", "questGiver", "giverNpc", "NpcId"), 0), 0)
    portrait_turn_in = to_int(first_present(quest, ("portraitTurnIn", "turnInNpc", "turnIn", "turninNpc"), 0), 0)

    quest_type = quest_type_from_value(first_present(quest, ("questType", "type", "QuestType", "Type"), 2))
    suggested_group = to_int(first_present(quest, ("suggestedGroupNum", "suggestedGroup", "suggestedPlayers"), 0), 0)
    content_tuning = to_int(first_present(quest, ("contentTuningID", "contentTuningId", "tuningId"), 0), 0)
    quest_sort = quest_sort_from_value(first_present(quest, ("questSortID", "sortId", "sortID", "QuestSortID"), 0))
    quest_info = quest_info_from_value(first_present(quest, ("questInfoID", "questInfoId", "QuestInfoID", "infoType"), 0))
    time_allowed = to_int(first_present(quest, ("timeAllowed", "timeLimit", "duration"), 0), 0)
    allowable_races = to_int(first_present(quest, ("allowableRaces", "races", "allowedRaces"), 0), 0)
    expansion = to_int(first_present(quest, ("expansion", "Expansion"), 0), 0)
    flags = to_int(first_present(quest, ("flags", "Flags"), 0), 0)
    flags_ex = to_int(first_present(quest, ("flagsEx", "FlagsEx"), 0), 0)
    flags_ex2 = to_int(first_present(quest, ("flagsEx2", "FlagsEx2"), 0), 0)
    flags_ex3 = to_int(first_present(quest, ("flagsEx3", "FlagsEx3"), 0), 0)
    reward_xp = to_int(first_present(quest, ("rewardXP", "xp", "rewardXPDifficulty", "Experience"), 0), 0)
    reward_money = to_int(first_present(quest, ("rewardMoney", "gold", "money", "rewardMoneyDifficulty"), 0), 0)
    reward_bonus_money = to_int(first_present(quest, ("rewardBonusMoney", "bonusMoney"), 0), 0)
    reward_honor = to_int(first_present(quest, ("rewardHonor", "honor"), 0), 0)
    reward_artifact_xp = to_int(first_present(quest, ("rewardArtifactXP", "artifactXP"), 0), 0)
    reward_title = to_int(first_present(quest, ("rewardTitle", "titleId"), 0), 0)
    reward_skill_id = to_int(first_present(quest, ("rewardSkillLineID", "rewardSkillId", "skillId"), 0), 0)
    reward_skill_points = to_int(first_present(quest, ("rewardNumSkillUps", "rewardSkillPoints"), 0), 0)
    reward_spell = to_int(first_present(quest, ("rewardSpell", "completionSpell"), 0), 0)
    source_item = to_int(first_present(quest, ("sourceItem", "startItem", "startItemId"), 0), 0)
    reward_next_quest = to_int(first_present(quest, ("rewardNextQuest", "nextQuest"), 0), 0)
    poi_continent = to_int(first_present(quest, ("poiContinent", "continent"), 0), 0)
    poi_x = to_float(first_present(quest, ("poiX", "x"), 0.0), 0.0)
    poi_y = to_float(first_present(quest, ("poiY", "y"), 0.0), 0.0)
    poi_priority = to_int(first_present(quest, ("poiPriority", "priority"), 0), 0)

    reward_choice_items = parse_reward_choice_items(quest)
    reward_items = []
    for item in get_reward_list(quest, "rewardItems", "rewards.items", "rewards.itemRewards"):
        if isinstance(item, dict):
            reward_items.append(parse_reward_item(item))
        elif isinstance(item, list) and len(item) >= 2:
            reward_items.append((to_int(item[0], 0), to_int(item[1], 0), 0))
    for entry in reward_items[:4]:
        pass

    reward_items_final = [(0, 0, 0)] * 4
    for idx, (item_id, qty, display) in enumerate(reward_items[:4]):
        reward_items_final[idx] = (item_id, qty, display)

    choice_final = [(0, 0, 0)] * 6
    for idx, (item_id, qty, display) in enumerate(reward_choice_items[:6]):
        choice_final[idx] = (item_id, qty, display)

    reward_currency_items = parse_reward_currency(quest)
    reward_currency_final = [(0, 0)] * 4
    for idx, (cid, qty) in enumerate(reward_currency_items[:4]):
        reward_currency_final[idx] = (cid, qty)

    reputation_items = parse_reward_faction(quest)
    reputation_final = [(0, 0)] * 5
    for idx, (fid, val) in enumerate(reputation_items[:5]):
        reputation_final[idx] = (fid, val)

    quest_lines = [
        "INSERT INTO quest_template (",
        "ID, QuestType, QuestPackageID, ContentTuningID, QuestSortID, QuestInfoID, SuggestedGroupNum, RewardNextQuest, RewardXPDifficulty, RewardXPMultiplier,",
        "RewardMoneyDifficulty, RewardMoneyMultiplier, RewardBonusMoney, RewardSpell, RewardHonor, RewardKillHonor, RewardFavor, StartItem,",
        "RewardArtifactXPDifficulty, RewardArtifactXPMultiplier, RewardArtifactCategoryID, Flags, FlagsEx, FlagsEx2, FlagsEx3,",
        "RewardItem1, RewardAmount1, ItemDrop1, ItemDropQuantity1, RewardItem2, RewardAmount2, ItemDrop2, ItemDropQuantity2,",
        "RewardItem3, RewardAmount3, ItemDrop3, ItemDropQuantity3, RewardItem4, RewardAmount4, ItemDrop4, ItemDropQuantity4,",
        "RewardChoiceItemID1, RewardChoiceItemQuantity1, RewardChoiceItemDisplayID1, RewardChoiceItemID2, RewardChoiceItemQuantity2, RewardChoiceItemDisplayID2,",
        "RewardChoiceItemID3, RewardChoiceItemQuantity3, RewardChoiceItemDisplayID3, RewardChoiceItemID4, RewardChoiceItemQuantity4, RewardChoiceItemDisplayID4,",
        "RewardChoiceItemID5, RewardChoiceItemQuantity5, RewardChoiceItemDisplayID5, RewardChoiceItemID6, RewardChoiceItemQuantity6, RewardChoiceItemDisplayID6,",
        "POIContinent, POIx, POIy, POIPriority, RewardTitle, RewardArenaPoints, RewardSkillLineID, RewardNumSkillUps,",
        "PortraitGiver, PortraitGiverMount, PortraitGiverModelSceneID, PortraitTurnIn, RewardFactionID1, RewardFactionValue1, RewardFactionOverride1, RewardFactionCapIn1,",
        "RewardFactionID2, RewardFactionValue2, RewardFactionOverride2, RewardFactionCapIn2, RewardFactionID3, RewardFactionValue3, RewardFactionOverride3, RewardFactionCapIn3,",
        "RewardFactionID4, RewardFactionValue4, RewardFactionOverride4, RewardFactionCapIn4, RewardFactionID5, RewardFactionValue5, RewardFactionOverride5, RewardFactionCapIn5,",
        "RewardFactionFlags, RewardCurrencyID1, RewardCurrencyQty1, RewardCurrencyID2, RewardCurrencyQty2, RewardCurrencyID3, RewardCurrencyQty3, RewardCurrencyID4, RewardCurrencyQty4,",
        "AcceptedSoundKitID, CompleteSoundKitID, AreaGroupID, TimeAllowed, AllowableRaces, ResetByScheduler, Expansion, ManagedWorldStateID, QuestSessionBonus,",
        "LogTitle, LogDescription, QuestDescription, AreaDescription, PortraitGiverText, PortraitGiverName, PortraitTurnInText, PortraitTurnInName, QuestCompletionLog",
        ") VALUES (",
        f"{quest_id}, {quest_type}, 0, {content_tuning}, {quest_sort}, {quest_info}, {suggested_group}, {reward_next_quest}, {reward_xp}, 1.0,",
        f"{reward_money}, 1.0, {reward_bonus_money}, {reward_spell}, {reward_honor}, 0, 0, {source_item},",
        f"{reward_artifact_xp}, 1.0, 0, {flags}, {flags_ex}, {flags_ex2}, {flags_ex3},",
        f"{reward_items_final[0][0]}, {reward_items_final[0][1]}, {reward_items_final[0][2]}, 0, {reward_items_final[1][0]}, {reward_items_final[1][1]}, {reward_items_final[1][2]}, 0,",
        f"{reward_items_final[2][0]}, {reward_items_final[2][1]}, {reward_items_final[2][2]}, 0, {reward_items_final[3][0]}, {reward_items_final[3][1]}, {reward_items_final[3][2]}, 0,",
        f"{choice_final[0][0]}, {choice_final[0][1]}, {choice_final[0][2]}, {choice_final[1][0]}, {choice_final[1][1]}, {choice_final[1][2]},",
        f"{choice_final[2][0]}, {choice_final[2][1]}, {choice_final[2][2]}, {choice_final[3][0]}, {choice_final[3][1]}, {choice_final[3][2]},",
        f"{choice_final[4][0]}, {choice_final[4][1]}, {choice_final[4][2]}, {choice_final[5][0]}, {choice_final[5][1]}, {choice_final[5][2]},",
        f"{poi_continent}, {poi_x}, {poi_y}, {poi_priority}, {reward_title}, 0, {reward_skill_id}, {reward_skill_points},",
        f"{portrait_giver}, 0, 0, {portrait_turn_in}, {reputation_final[0][0]}, {reputation_final[0][1]}, 0, 0,",
        f"{reputation_final[1][0]}, {reputation_final[1][1]}, 0, 0, {reputation_final[2][0]}, {reputation_final[2][1]}, 0, 0,",
        f"{reputation_final[3][0]}, {reputation_final[3][1]}, 0, 0, {reputation_final[4][0]}, {reputation_final[4][1]}, 0, 0,",
        f"0, {reward_currency_final[0][0]}, {reward_currency_final[0][1]}, {reward_currency_final[1][0]}, {reward_currency_final[1][1]}, {reward_currency_final[2][0]}, {reward_currency_final[2][1]}, {reward_currency_final[3][0]}, {reward_currency_final[3][1]},",
        f"0, 0, 0, {time_allowed}, {allowable_races}, 0, {expansion}, 0, 0,",
        f"{sql_escape(log_title)}, {sql_escape(log_description)}, {sql_escape(quest_description)}, {sql_escape(area_description)}, {sql_escape('')}, {sql_escape('')}, {sql_escape('')}, {sql_escape('')}, {sql_escape('')}",
        ");",
    ]
    return "\n".join(quest_lines)


def build_quest_addon_sql(quest: dict[str, Any]) -> str:
    quest_id = to_int(first_present(quest, ("id", "questId", "QuestID", "ID"), 0), 0)
    max_level = to_int(first_present(quest, ("maxLevel", "MaxLevel", "level"), 0), 0)
    allowable_classes = to_int(first_present(quest, ("allowableClasses", "AllowableClasses"), 0), 0)
    source_spell = to_int(first_present(quest, ("sourceSpellID", "sourceSpellId", "spellId"), 0), 0)
    prev_quest_id = to_int(first_present(quest, ("prevQuestID", "preQuestId", "previousQuest"), 0), 0)
    next_quest_id = to_int(first_present(quest, ("nextQuestID", "nextQuestId"), 0), 0)
    exclusive_group = to_int(first_present(quest, ("exclusiveGroup", "ExclusiveGroup"), 0), 0)
    breadcrumb_for_quest_id = to_int(first_present(quest, ("breadcrumbForQuestId", "breadcrumbForQuest"), 0), 0)
    reward_mail_template_id = to_int(first_present(quest, ("rewardMailTemplateId", "rewardMailTemplate"), 0), 0)
    reward_mail_delay = to_int(first_present(quest, ("rewardMailDelay", "mailDelay"), 0), 0)
    required_skill_id = to_int(first_present(quest, ("requiredSkillId", "requiredSkill"), 0), 0)
    required_skill_points = to_int(first_present(quest, ("requiredSkillPoints", "requiredSkillLevel"), 0), 0)
    required_min_rep_faction = to_int(first_present(quest, ("requiredMinRepFaction", "minRepFaction"), 0), 0)
    required_max_rep_faction = to_int(first_present(quest, ("requiredMaxRepFaction", "maxRepFaction"), 0), 0)
    required_min_rep_value = to_int(first_present(quest, ("requiredMinRepValue", "minRepValue"), 0), 0)
    required_max_rep_value = to_int(first_present(quest, ("requiredMaxRepValue", "maxRepValue"), 0), 0)
    source_item_count = to_int(first_present(quest, ("sourceItemCount", "startItemCount"), 0), 0)
    special_flags = to_int(first_present(quest, ("specialFlags", "SpecialFlags"), 0), 0)
    return (
        "INSERT INTO quest_template_addon (ID, MaxLevel, AllowableClasses, SourceSpellID, PrevQuestID, NextQuestID, ExclusiveGroup, "
        "BreadcrumbForQuestId, RewardMailTemplateId, RewardMailDelay, RequiredSkillId, RequiredSkillPoints, "
        "RequiredMinRepFaction, RequiredMaxRepFaction, RequiredMinRepValue, RequiredMaxRepValue, SourceItemIdCount, SpecialFlags) "
        f"VALUES ({quest_id}, {max_level}, {allowable_classes}, {source_spell}, {prev_quest_id}, {next_quest_id}, {exclusive_group}, "
        f"{breadcrumb_for_quest_id}, {reward_mail_template_id}, {reward_mail_delay}, {required_skill_id}, {required_skill_points}, "
        f"{required_min_rep_faction}, {required_max_rep_faction}, {required_min_rep_value}, {required_max_rep_value}, {source_item_count}, {special_flags});"
    )


def build_objective_sql(quest: dict[str, Any]) -> list[str]:
    quest_id = to_int(first_present(quest, ("id", "questId", "QuestID", "ID"), 0), 0)
    rows: list[str] = []
    objectives = parse_objectives(quest)
    for index, objective in enumerate(objectives, 1):
        obj_id = to_int(objective.get("ObjectID"), 0)
        otype = to_int(objective.get("Type"), 0)
        amount = to_int(objective.get("Amount"), 0)
        desc = str(objective.get("Description", "Objective"))
        rows.append(
            "INSERT INTO quest_objectives (ID, QuestID, Type, `Order`, StorageIndex, ObjectID, Amount, ConditionalAmount, Flags, Flags2, "
            "ProgressBarWeight, ParentObjectiveID, Visible, Description) VALUES "
            f"({quest_id * 1000 + index}, {quest_id}, {otype}, {index}, 0, {obj_id}, {amount}, 0, 0, 0, 0, 0, {objective.get('Visible', 1)}, {sql_escape(desc)});"
        )
    return rows


def build_offer_reward_sql(quest: dict[str, Any]) -> str:
    quest_id = to_int(first_present(quest, ("id", "questId", "QuestID", "ID"), 0), 0)
    reward_text = get_simple_string(quest, ("rewardText", "offerRewardText", "completionText", "rewardTextAlt"), "")
    return (
        "INSERT INTO quest_offer_reward (ID, Emote1, Emote2, Emote3, Emote4, EmoteDelay1, EmoteDelay2, EmoteDelay3, EmoteDelay4, RewardText) "
        f"VALUES ({quest_id}, 0, 0, 0, 0, 0, 0, 0, 0, {sql_escape(reward_text)});"
    )


def build_request_items_sql(quest: dict[str, Any]) -> str:
    quest_id = to_int(first_present(quest, ("id", "questId", "QuestID", "ID"), 0), 0)
    text = get_simple_string(quest, ("requestItemsText", "itemText", "objectiveText"), "")
    return (
        "INSERT INTO quest_request_items (ID, EmoteOnComplete, EmoteOnIncomplete, EmoteOnCompleteDelay, EmoteOnIncompleteDelay, CompletionText) "
        f"VALUES ({quest_id}, 0, 0, 0, 0, {sql_escape(text)});"
    )


def build_details_sql(quest: dict[str, Any]) -> str:
    quest_id = to_int(first_present(quest, ("id", "questId", "QuestID", "ID"), 0), 0)
    text = get_simple_string(quest, ("detailsText", "details", "storyDescription"), "")
    return (
        "INSERT INTO quest_details (ID, Emote1, Emote2, Emote3, Emote4, EmoteDelay1, EmoteDelay2, EmoteDelay3, EmoteDelay4, QuestDescription) "
        f"VALUES ({quest_id}, 0, 0, 0, 0, 0, 0, 0, 0, {sql_escape(text)});"
    )


def process_payload(payload: Any) -> list[str]:
    quests = normalize_quests(payload)
    if not quests:
        raise ValueError("No quests found in input JSON")

    statements: list[str] = []
    for quest in quests:
        if not isinstance(quest, dict):
            continue
        try:
            statements.append(build_quest_template_sql(quest))
            statements.append(build_quest_addon_sql(quest))
            statements.append(build_offer_reward_sql(quest))
            statements.append(build_request_items_sql(quest))
            statements.append(build_details_sql(quest))
            statements.extend(build_objective_sql(quest))
        except ValueError:
            continue
    return statements


def main() -> int:
    parser = argparse.ArgumentParser(description="Convert WoWhead quest JSON files into TrinityCore SQL inserts")
    parser.add_argument("--input", required=True, help="Path to input JSON file")
    parser.add_argument("--output", required=True, help="Path to output .sql file")
    parser.add_argument("--dry-run", action="store_true", help="Print generated SQL to stdout instead of writing a file")
    args = parser.parse_args()

    input_path = Path(args.input)
    try:
        with input_path.open("r", encoding="utf-8-sig") as handle:
            payload = json.load(handle)
    except FileNotFoundError:
        print(f"Input file not found: {input_path}", file=sys.stderr)
        return 1
    except json.JSONDecodeError as exc:
        print(f"Invalid JSON: {exc}", file=sys.stderr)
        return 2

    try:
        statements = process_payload(payload)
    except Exception as exc:  # pragma: no cover
        print(f"Failed to process quests: {exc}", file=sys.stderr)
        return 3

    sql = "\n".join(statements) + "\n"

    if args.dry_run:
        print(sql)
        return 0

    output_path = Path(args.output)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(sql, encoding="utf-8")
    print(f"Wrote {len(statements)} SQL statements to {output_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
