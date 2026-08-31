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

#include "WorldSession.h"
#include "HousingPackets.h"
#include "Log.h"
#include "Player.h"

void WorldSession::HandleDeclineNeighborhoodInvites(WorldPackets::Housing::DeclineNeighborhoodInvites const& declineNeighborhoodInvites)
{
    if (declineNeighborhoodInvites.Allow)
        GetPlayer()->SetPlayerFlagEx(PLAYER_FLAGS_EX_AUTO_DECLINE_NEIGHBORHOOD);
    else
        GetPlayer()->RemovePlayerFlagEx(PLAYER_FLAGS_EX_AUTO_DECLINE_NEIGHBORHOOD);
}

void WorldSession::HandleHousingClientOpcode(WorldPackets::Null& packet)
{
    OpcodeServer response{};
    switch (packet.GetOpcode())
    {
        case CMSG_HOUSE_EXTERIOR_LOCK:
            response = SMSG_HOUSE_EXTERIOR_LOCK_RESPONSE;
            break;
        case CMSG_HOUSE_EXTERIOR_SET_HOUSE_POSITION:
            response = SMSG_HOUSE_EXTERIOR_SET_HOUSE_POSITION_RESPONSE;
            break;
        case CMSG_HOUSING_BLUEPRINT_DELETE:
            response = SMSG_HOUSING_BLUEPRINT_DELETE_RESPONSE;
            break;
        case CMSG_HOUSING_BLUEPRINT_EXPORT:
            response = SMSG_HOUSING_BLUEPRINT_EXPORT_RESPONSE;
            break;
        case CMSG_HOUSING_BLUEPRINT_IMPORT:
            response = SMSG_HOUSING_BLUEPRINT_IMPORT_RESPONSE;
            break;
        case CMSG_HOUSING_BLUEPRINT_RENAME:
            response = SMSG_HOUSING_BLUEPRINT_RENAME_RESPONSE;
            break;
        case CMSG_HOUSING_BLUEPRINT_REQUEST_COLLECTION:
        case CMSG_HOUSING_BLUEPRINT_REQUEST_CONTENTS:
            response = SMSG_HOUSING_BLUEPRINT_GET_RESPONSE;
            break;
        case CMSG_HOUSING_DECOR_DELETE_FROM_STORAGE:
            response = SMSG_HOUSING_DECOR_DELETE_FROM_STORAGE_RESPONSE;
            break;
        case CMSG_HOUSING_DECOR_LOCK:
            response = SMSG_HOUSING_DECOR_LOCK_RESPONSE;
            break;
        case CMSG_HOUSING_DECOR_MOVE:
            response = SMSG_HOUSING_DECOR_MOVE_RESPONSE;
            break;
        case CMSG_HOUSING_DECOR_PLACE:
            response = SMSG_HOUSING_DECOR_PLACE_RESPONSE;
            break;
        case CMSG_HOUSING_DECOR_REDEEM_DEFERRED_DECOR:
            response = SMSG_HOUSING_REDEEM_DEFERRED_DECOR_RESPONSE;
            break;
        case CMSG_HOUSING_DECOR_REMOVE:
            response = SMSG_HOUSING_DECOR_REMOVE_RESPONSE;
            break;
        case CMSG_HOUSING_DECOR_REQUEST_STORAGE:
            response = SMSG_HOUSING_DECOR_REQUEST_STORAGE_RESPONSE;
            break;
        case CMSG_HOUSING_DECOR_SET_DYE_SLOTS:
            response = SMSG_HOUSING_DECOR_SYSTEM_SET_DYE_SLOTS_RESPONSE;
            break;
        case CMSG_HOUSING_DECOR_SET_EDIT_MODE:
            response = SMSG_HOUSING_DECOR_SET_EDIT_MODE_RESPONSE;
            break;
        case CMSG_HOUSING_FIXTURE_CREATE_FIXTURE:
            response = SMSG_HOUSING_FIXTURE_CREATE_FIXTURE_RESPONSE;
            break;
        case CMSG_HOUSING_FIXTURE_DELETE_FIXTURE:
            response = SMSG_HOUSING_FIXTURE_DELETE_FIXTURE_RESPONSE;
            break;
        case CMSG_HOUSING_FIXTURE_SET_CORE_FIXTURE:
            response = SMSG_HOUSING_FIXTURE_SET_CORE_FIXTURE_RESPONSE;
            break;
        case CMSG_HOUSING_FIXTURE_SET_EDIT_MODE:
            response = SMSG_HOUSING_FIXTURE_SET_EDIT_MODE_RESPONSE;
            break;
        case CMSG_HOUSING_FIXTURE_SET_HOUSE_SIZE:
            response = SMSG_HOUSING_FIXTURE_SET_HOUSE_SIZE_RESPONSE;
            break;
        case CMSG_HOUSING_FIXTURE_SET_HOUSE_TYPE:
            response = SMSG_HOUSING_FIXTURE_SET_HOUSE_TYPE_RESPONSE;
            break;
        case CMSG_HOUSING_GET_CURRENT_HOUSE_INFO:
            response = SMSG_HOUSING_GET_CURRENT_HOUSE_INFO_RESPONSE;
            break;
        case CMSG_HOUSING_GET_PLAYER_PERMISSIONS:
            response = SMSG_HOUSING_GET_PLAYER_PERMISSIONS_RESPONSE;
            break;
        case CMSG_HOUSING_HOUSE_STATUS:
            response = SMSG_HOUSING_HOUSE_STATUS_RESPONSE;
            break;
        case CMSG_HOUSING_PHOTO_SHARING_CLEAR_AUTHORIZATION:
            response = SMSG_HOUSING_PHOTO_SHARING_AUTHORIZATION_CLEARED_RESULT;
            break;
        case CMSG_HOUSING_PHOTO_SHARING_COMPLETE_AUTHORIZATION:
            response = SMSG_HOUSING_PHOTO_SHARING_AUTHORIZATION_RESULT;
            break;
        case CMSG_HOUSING_RESET_HOUSE:
            response = SMSG_HOUSING_RESET_HOUSE_RESPONSE;
            break;
        case CMSG_HOUSING_RESET_KIOSK_MODE:
            response = SMSG_HOUSING_RESET_KIOSK_MODE_RESPONSE;
            break;
        case CMSG_HOUSING_ROOM_ADD:
            response = SMSG_HOUSING_ROOM_ADD_RESPONSE;
            break;
        case CMSG_HOUSING_ROOM_APPLY_COMPONENT_MATERIALS:
            response = SMSG_HOUSING_ROOM_APPLY_COMPONENT_MATERIALS_RESPONSE;
            break;
        case CMSG_HOUSING_ROOM_MOVE:
        case CMSG_HOUSING_ROOM_ROTATE:
            response = SMSG_HOUSING_ROOM_UPDATE_RESPONSE;
            break;
        case CMSG_HOUSING_ROOM_REMOVE:
            response = SMSG_HOUSING_ROOM_REMOVE_RESPONSE;
            break;
        case CMSG_HOUSING_ROOM_SET_CEILING_TYPE:
            response = SMSG_HOUSING_ROOM_SET_CEILING_TYPE_RESPONSE;
            break;
        case CMSG_HOUSING_ROOM_SET_COMPONENT_THEME:
            response = SMSG_HOUSING_ROOM_SET_COMPONENT_THEME_RESPONSE;
            break;
        case CMSG_HOUSING_ROOM_SET_DOOR_TYPE:
            response = SMSG_HOUSING_ROOM_SET_DOOR_TYPE_RESPONSE;
            break;
        case CMSG_HOUSING_ROOM_SET_LAYOUT_EDIT_MODE:
            response = SMSG_HOUSING_ROOM_SET_LAYOUT_EDIT_MODE_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_ACCEPT_NEIGHBORHOOD_OWNERSHIP:
            response = SMSG_HOUSING_SVCS_ACCEPT_NEIGHBORHOOD_OWNERSHIP_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_DELETE_ALL_NEIGHBORHOOD_INVITES:
            response = SMSG_HOUSING_SVCS_DELETE_ALL_NEIGHBORHOOD_INVITES_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_GET_BNET_FRIEND_NEIGHBORHOODS:
            response = SMSG_HOUSING_SVCS_GET_BNET_FRIEND_NEIGHBORHOODS_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_GET_HOUSE_FINDER_INFO:
            response = SMSG_HOUSING_SVCS_GET_HOUSE_FINDER_INFO_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_GET_HOUSE_FINDER_NEIGHBORHOOD:
            response = SMSG_HOUSING_SVCS_GET_HOUSE_FINDER_NEIGHBORHOOD_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_GET_PLAYER_HOUSES_INFO:
            response = SMSG_HOUSING_SVCS_GET_PLAYER_HOUSES_INFO_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_GET_POTENTIAL_HOUSE_OWNERS:
            response = SMSG_HOUSING_SVCS_GET_POTENTIAL_HOUSE_OWNERS_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_GUILD_CREATE_NEIGHBORHOOD:
            response = SMSG_HOUSING_SVCS_GUILD_CREATE_NEIGHBORHOOD_NOTIFICATION;
            break;
        case CMSG_HOUSING_SVCS_HOUSE_FINDER_IGNORE_NEIGHBORHOOD:
            response = SMSG_HOUSING_SVCS_IGNORE_NEIGHBORHOOD_INVITE_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_NEIGHBORHOOD_RESERVE_PLOT:
            response = SMSG_HOUSING_SVCS_NEIGHBORHOOD_RESERVE_PLOT_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_PLAYER_VIEW_HOUSES_BY_BNET_ACCOUNT:
        case CMSG_HOUSING_SVCS_PLAYER_VIEW_HOUSES_BY_PLAYER:
            response = SMSG_HOUSING_SVCS_PLAYER_VIEW_HOUSES_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_REJECT_NEIGHBORHOOD_OWNERSHIP:
            response = SMSG_HOUSING_SVCS_REJECT_NEIGHBORHOOD_OWNERSHIP_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_RELINQUISH_HOUSE:
            response = SMSG_HOUSING_SVCS_RELINQUISH_HOUSE_RESPONSE;
            break;
        case CMSG_HOUSING_SVCS_UPDATE_HOUSE_SETTINGS:
            response = SMSG_HOUSING_SVCS_UPDATE_HOUSE_SETTINGS_RESPONSE;
            break;
        default:
            TC_LOG_DEBUG("network.opcode", "Housing opcode {} from {} acknowledged without reply",
                GetOpcodeNameForLogging(packet.GetOpcode()), GetPlayerInfo());
            return;
    }

    WorldPackets::Housing::EmptyResult stub(response);
    SendPacket(stub.Write());
}
