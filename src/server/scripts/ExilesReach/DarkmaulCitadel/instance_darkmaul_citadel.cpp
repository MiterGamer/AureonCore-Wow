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

#include "ScriptMgr.h"
#include "Creature.h"
#include "GameObject.h"
#include "InstanceScript.h"
#include "ObjectGuid.h"
#include "darkmaul_citadel.h"

static constexpr ObjectData creatureData[] =
{
    { BOSS_TUNK,     DATA_TUNK     },
    { BOSS_GORGROTH, DATA_GORGROTH },
    { BOSS_RAVNYR,   DATA_RAVNYR   },
};

static constexpr ObjectData gameobjectData[] =
{
    { GO_SHADOWY_DOOR, DATA_SHADOWY_DOOR },
};

static constexpr DoorData doorData[] =
{
    { GO_TEMP_DOOR, DATA_TUNK, EncounterDoorBehavior::OpenWhenDone },
};

static constexpr DungeonEncounterData encounters[] =
{
    { DATA_TUNK,   {{ 2325 }} },
    { DATA_RAVNYR, {{ 2326 }} }
};

class instance_darkmaul_citadel : public InstanceMapScript
{
public:
    instance_darkmaul_citadel() : InstanceMapScript(DCScriptName, 2236) { }

    struct instance_darkmaul_citadel_InstanceMapScript: public InstanceScript
    {
        instance_darkmaul_citadel_InstanceMapScript(InstanceMap* map) : InstanceScript(map)
        {
            SetHeaders(DataHeader);
            SetBossNumber(EncounterCount);
            LoadObjectData(creatureData, gameobjectData);
            LoadDoorData(doorData);
            LoadDungeonEncounterData(encounters);
        }

        void OnCreatureCreate(Creature* creature) override
        {
            InstanceScript::OnCreatureCreate(creature);
            if (creature->GetEntry() == NPC_DARKMAUL_SHADOWCALLER)
                if (!creature->IsAlive())
                    RecordShadowcallerDeath(creature->GetGUID());
        }

        void OnGameObjectCreate(GameObject* object) override
        {
            InstanceScript::OnGameObjectCreate(object);
            if (object->GetEntry() == GO_SHADOWY_DOOR && _barrierCleared)
                HandleGameObject(object->GetGUID(), true, object);
        }

        void OnUnitDeath(Unit* unit) override
        {
            InstanceScript::OnUnitDeath(unit);
            if (unit && unit->GetEntry() == NPC_DARKMAUL_SHADOWCALLER)
                RecordShadowcallerDeath(unit->GetGUID());
        }

    private:
        GuidSet _deadShadowcallers;
        PersistentInstanceScriptValue<bool> _barrierCleared{ *this, "ShadowBarrierCleared", false };

        // Wiki Font of Shadows: all three Darkmaul Shadowcallers 156821 channel the orb;
        // when they die the shadowy barrier 334578 drops (sniff CreateObject on map 2236).
        void RecordShadowcallerDeath(ObjectGuid guid)
        {
            _deadShadowcallers.insert(guid);
            // Unloaded living casters must not be mistaken for dead casters.
            if (_deadShadowcallers.size() < 3)
                return;
            if (!_barrierCleared)
                _barrierCleared = true;
            if (GameObject* door = GetGameObject(DATA_SHADOWY_DOOR))
                HandleGameObject(door->GetGUID(), true, door);
        }
    };

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_darkmaul_citadel_InstanceMapScript(map);
    }
};

void AddSC_instance_darkmaul_citadel()
{
    new instance_darkmaul_citadel();
}
