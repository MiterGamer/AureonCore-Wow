/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef DEF_DARKMAUL_CITADEL_H_
#define DEF_DARKMAUL_CITADEL_H_

#include "CreatureAIImpl.h"

#define DCScriptName "instance_darkmaul_citadel"
#define DataHeader "DarkmaulCitadel"

constexpr uint32 EncounterCount = 2;

enum DarkmaulCitadelDataTypes
{
    // Encounters
    DATA_TUNK     = 0,
    DATA_RAVNYR   = 1,

    DATA_GORGROTH,
    DATA_SHADOWY_DOOR
};

enum DarkmaulCitadelCreatureIds
{
    // Bosses
    BOSS_TUNK     = 157300,
    BOSS_GORGROTH = 156814,
    BOSS_RAVNYR   = 156501,

    NPC_DARKMAUL_SHADOWCALLER        = 156821,
    NPC_DECAYING_CORPSE              = 156913,
    NPC_RITUAL_INVIS_BUNNY           = 165198,
    NPC_CAPTAIN_GARRICK_DARKMAUL     = 161350,
    NPC_HENRY_GARRICK_DARKMAUL       = 161504,
    NPC_JAINA_PROUDMOORE_DARKMAUL    = 245401
};

enum DarkmaulCitadelActions
{
    ACTION_GORGROTH_SACRIFICED = 1,
    ACTION_RITUAL_RESET        = 2
};

enum DarkmaulCitadelGameObjectIds
{
    GO_SHADOWY_DOOR = 334578,
    GO_TEMP_DOOR    = 334502
};

template <class AI, class T>
inline AI* GetDarkmaulCitadelAI(T* obj)
{
    return GetInstanceAI<AI>(obj, DCScriptName);
}

#define RegisterDarkmaulCitadelCreatureAI(ai_name) RegisterCreatureAIWithFactory(ai_name, GetDarkmaulCitadelAI)

#endif
