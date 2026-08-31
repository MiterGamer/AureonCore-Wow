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

#include "WorldserverResourcesService.h"
#include "BattlenetRpcErrorCodes.h"

namespace Battlenet::Services
{
ResourcesService::ResourcesService(WorldSession* session) : BaseService(session)
{
}

uint32 ResourcesService::HandleGetContentHandle(::bgs::protocol::resources::v1::ContentHandleRequest const* request,
    ::bgs::protocol::ContentHandle* response,
    std::function<void(ServiceBase*, uint32, ::google::protobuf::Message const*)>& /*continuation*/)
{
    // Required ContentHandle fields. No CDN payload is hosted; hash is a 32-byte empty digest.
    response->set_region(0x5553); // 'US'
    response->set_usage(request->has_stream() ? request->stream() : request->program());
    response->set_hash(std::string(32, '\0'));
    return ERROR_OK;
}

uint32 ResourcesService::HandleGetTitleIcons(::bgs::protocol::resources::v1::GetTitleIconsRequest const* /*request*/,
    ::bgs::protocol::resources::v1::GetTitleIconsResponse* /*response*/,
    std::function<void(ServiceBase*, uint32, ::google::protobuf::Message const*)>& /*continuation*/)
{
    return ERROR_OK;
}
}
