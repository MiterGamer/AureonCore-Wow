// Offline diagnostics: uses the same MAP, VMAP and DB2 readers as worldserver.
// Does not connect to a database or modify extracted data.
#include "DB2FileSystemSource.h"
#include "DB2LoadInfo.h"
#include "DB2Structure.h"
#include "GridMap.h"
#include "VMapManager.h"
#include <cmath>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <set>
#include <sstream>

struct Table { char const* name; DB2FileLoadInfo const* info; };
// Offline-only schema from WoWDBDefs QuestObjective.dbd, layout 50E2491F (12.1.0.69587).
// The worldserver does not otherwise load this client table.
static constexpr DB2MetaField QuestObjectiveFields[] = {
    {FT_STRING,1,false},{FT_INT,1,true},{FT_INT,1,true},{FT_INT,1,true},
    {FT_BYTE,1,false},{FT_INT,1,true},{FT_BYTE,1,false},{FT_INT,1,true},{FT_INT,1,false}
};
static constexpr DB2Meta QuestObjectiveMeta{0,-1,8,9,8,0x50E2491F,QuestObjectiveFields};
static constexpr DB2FieldMeta QuestObjectiveLoadFields[] = {
    {false,FT_INT,"ID"},{false,FT_STRING,"Description"},{true,FT_INT,"Type"},
    {true,FT_INT,"Amount"},{true,FT_INT,"ObjectID"},{false,FT_BYTE,"OrderIndex"},
    {true,FT_INT,"Flags"},{false,FT_BYTE,"StorageIndex"},{true,FT_INT,"Unknown12"},{false,FT_INT,"QuestID"}
};
static constexpr DB2FileLoadInfo QuestObjectiveLoadInfo{QuestObjectiveLoadFields,10,&QuestObjectiveMeta};
Table const Tables[] = {
    {"QuestObjective.db2", &QuestObjectiveLoadInfo},
#include "tables.inc"
};

int main(int argc, char** argv)
try
{
    if (argc < 3) { std::cerr << "Usage: mapdata_audit DATA_ROOT --db2 [locale] | --points FILE | --spell-effects [SPELL_ID ...] | --effect-misc MISC_VALUE ...\n"; return 2; }
    std::filesystem::path root(argv[1]);
    std::string mode(argv[2]);
    if (mode == "--criteria-tree" && argc > 3)
    {
        DB2FileSystemSource source((root / "dbc/enUS/CriteriaTree.db2").string());
        DB2FileLoader loader;
        loader.Load(&source, &CriteriaTreeLoadInfo::Instance);
        uint32 count = 0;
        char** index = nullptr;
        std::unique_ptr<char[]> data(loader.AutoProduceData(count, index));
        std::unique_ptr<char*[]> entries(index);
        loader.AutoProduceRecordCopies(count, index, data.get());
        std::set<uint32> selected;
        for (int arg = 3; arg < argc; ++arg) selected.insert(uint32(std::stoul(argv[arg])));
        bool changed;
        do
        {
            changed = false;
            for (uint32 id = 0; id < count; ++id)
                if (index[id])
                {
                    auto const* row = reinterpret_cast<CriteriaTreeEntry const*>(index[id]);
                    if (selected.contains(row->Parent) && selected.insert(id).second) changed = true;
                }
        } while (changed);
        std::cout << "id\tparent\tamount\toperator\tcriteria\n";
        for (uint32 id : selected)
            if (id < count && index[id])
            {
                auto const* row = reinterpret_cast<CriteriaTreeEntry const*>(index[id]);
                std::cout << id << '\t' << row->Parent << '\t' << row->Amount << '\t' << row->Operator << '\t' << row->CriteriaID << '\n';
            }
        return 0;
    }
    if (mode == "--spell-names" && argc > 3)
    {
        DB2FileSystemSource source((root / "dbc/enUS/SpellName.db2").string());
        DB2FileLoader loader;
        loader.Load(&source, &SpellNameLoadInfo::Instance);
        uint32 count = 0;
        char** index = nullptr;
        std::unique_ptr<char[]> data(loader.AutoProduceData(count, index));
        std::unique_ptr<char*[]> entries(index);
        std::unique_ptr<char[]> strings(loader.AutoProduceStrings(index, count, LOCALE_enUS));
        loader.AutoProduceRecordCopies(count, index, data.get());
        for (uint32 i = 0; i < count; ++i)
        {
            auto row = reinterpret_cast<SpellNameEntry const*>(index[i]);
            if (!row || !row->Name[LOCALE_enUS])
                continue;
            std::string_view name(row->Name[LOCALE_enUS]);
            for (int arg = 3; arg < argc; ++arg)
                if (name.find(argv[arg]) != std::string_view::npos)
                {
                    std::cout << row->ID << '\t' << name << '\n';
                    break;
                }
        }
        return 0;
    }
    if (mode == "--uimap" && argc > 3)
    {
        uint32 mapId = uint32(std::stoul(argv[3]));
        DB2FileSystemSource source((root / "dbc/enUS/UiMapAssignment.db2").string());
        DB2FileLoader loader;
        loader.Load(&source, &UiMapAssignmentLoadInfo::Instance);
        uint32 count = 0;
        char** index = nullptr;
        std::unique_ptr<char[]> data(loader.AutoProduceData(count, index));
        std::unique_ptr<char*[]> entries(index);
        loader.AutoProduceRecordCopies(count, index, data.get());
        for (uint32 i = 0; i < count; ++i)
            if (index[i])
            {
                auto const* row = reinterpret_cast<UiMapAssignmentEntry const*>(index[i]);
                if (row->UiMapID != mapId) continue;
                std::cout << std::setprecision(10) << row->ID << ' ' << row->MapID << ' ' << row->AreaID;
                for (auto const& p : row->Region) std::cout << ' ' << p.X << ' ' << p.Y << ' ' << p.Z;
                std::cout << ' ' << row->UiMin.X << ' ' << row->UiMin.Y << ' ' << row->UiMax.X << ' ' << row->UiMax.Y << '\n';
            }
        return 0;
    }
    if (mode == "--records" && argc > 4)
    {
        Table const* selected = nullptr;
        for (Table const& table : Tables) if (std::string(argv[3]) == table.name) selected = &table;
        if (!selected) return 2;
        DB2FileSystemSource source((root / "dbc/enUS" / selected->name).string());
        DB2FileLoader loader;
        loader.Load(&source, selected->info);
        uint32 count = 0;
        char** index = nullptr;
        std::unique_ptr<char[]> data(loader.AutoProduceData(count, index));
        std::unique_ptr<char*[]> entries(index);
        loader.AutoProduceRecordCopies(count, index, data.get());
        for (int arg = 4; arg < argc; ++arg)
        {
            uint32 id = uint32(std::stoul(argv[arg]));
            if (id >= count || !index[id]) { std::cout << id << " MISSING\n"; continue; }
            std::cout << "Record " << id << '\n';
            char const* field = index[id];
            for (std::size_t i = 0; i < selected->info->FieldCount; ++i)
            {
                auto const& meta = selected->info->Fields[i];
                std::cout << meta.Name << '=';
                switch (meta.Type)
                {
                    case FT_BYTE: std::cout << (meta.IsSigned ? int(*reinterpret_cast<int8 const*>(field)) : int(*reinterpret_cast<uint8 const*>(field))); field += 1; break;
                    case FT_SHORT: std::cout << (meta.IsSigned ? int(*reinterpret_cast<int16 const*>(field)) : int(*reinterpret_cast<uint16 const*>(field))); field += 2; break;
                    case FT_INT: std::cout << (meta.IsSigned ? int64(*reinterpret_cast<int32 const*>(field)) : int64(*reinterpret_cast<uint32 const*>(field))); field += 4; break;
                    case FT_FLOAT: std::cout << *reinterpret_cast<float const*>(field); field += 4; break;
                    case FT_LONG: std::cout << *reinterpret_cast<uint64 const*>(field); field += 8; break;
                    case FT_STRING: std::cout << "<localized string>"; field += sizeof(LocalizedString); break;
                    case FT_STRING_NOT_LOCALIZED: std::cout << "<string>"; field += sizeof(char*); break;
                    default: return 2;
                }
                std::cout << '\n';
            }
        }
        return 0;
    }
    if (mode == "--db2")
    {
        int failed = 0;
        for (Table const& table : Tables)
            try
            {
                DB2FileSystemSource source((root / "dbc" / (argc > 3 ? argv[3] : "enUS") / table.name).string());
                DB2FileLoader loader;
                loader.Load(&source, table.info);
                std::cout << "OK\t" << table.name << '\t' << loader.GetRecordCount() << '\n';
            }
            catch (std::exception const& e) { ++failed; std::cout << "ERROR\t" << table.name << '\t' << e.what() << '\n'; }
        return failed ? 1 : 0;
    }
    if (mode == "--spell-effects" || mode == "--effect-misc" || mode == "--spell-details")
    {
        DB2FileSystemSource source((root / "dbc/enUS/SpellEffect.db2").string());
        DB2FileLoader loader;
        loader.Load(&source, &SpellEffectLoadInfo::Instance);
        std::set<uint32> spells{313583,298241,298232,382063,382193,382188,382190,382192,312463,312548,321340,383057,250484,314180};
        if (mode == "--effect-misc" || argc > 3)
            spells.clear();
        for (int arg = 3; arg < argc; ++arg) spells.insert(uint32(std::stoul(argv[arg])));
        std::cout << "spell\tindex\teffect\taura\tmisc1\tmisc2\ttrigger\ttarget1\ttarget2";
        if (mode == "--spell-details") std::cout << "\tbasepoints\titem\tperiod_ms";
        std::cout << '\n';
        uint32 count = 0;
        char** index = nullptr;
        std::unique_ptr<char[]> data(loader.AutoProduceData(count, index));
        std::unique_ptr<char*[]> entries(index);
        loader.AutoProduceRecordCopies(count, index, data.get());
        for (uint32 i = 0; i < count; ++i)
        {
            auto r = reinterpret_cast<SpellEffectEntry const*>(index[i]);
            if (!r || !(mode == "--effect-misc" ? spells.contains(uint32(r->EffectMiscValue[0])) : spells.contains(r->SpellID))) continue;
            std::cout << r->SpellID << '\t' << r->EffectIndex << '\t' << r->Effect
                << '\t' << r->EffectAura << '\t' << r->EffectMiscValue[0] << '\t' << r->EffectMiscValue[1]
                << '\t' << r->EffectTriggerSpell << '\t' << r->ImplicitTarget[0] << '\t' << r->ImplicitTarget[1];
            if (mode == "--spell-details") std::cout << '\t' << r->EffectBasePoints << '\t' << r->EffectItemType << '\t' << r->EffectAuraPeriod;
            std::cout << '\n';
        }
        return 0;
    }
    if (mode != "--points" || argc < 4) return 2;
    VMAP::VMapManager vmaps;
    DB2FileSystemSource source((root / "dbc/enUS/Map.db2").string());
    DB2FileLoader maps;
    maps.Load(&source, &MapLoadInfo::Instance);
    for (uint32 i = 0; i < maps.GetRecordCount(); ++i)
        if (auto record = maps.GetRecord(i))
            vmaps.InitializeThreadUnsafe(record.GetId(), int16(record.GetUInt16("ParentMapID")));

    std::ifstream points(argv[3]);
    if (!points) { std::cerr << "Cannot open points file\n"; return 2; }
    std::cout << "label\tmap\tx\ty\tz\tmap_status\tvmap_status\tterrain_z\tmodel_z\tarea\n" << std::setprecision(9);
    std::string line;
    int failed = 0;
    while (std::getline(points, line))
    {
        if (line.empty() || line[0] == '#') continue;
        std::istringstream row(line);
        std::string label;
        uint32 map;
        float x, y, z;
        if (!(row >> label >> map >> x >> y >> z) || !std::isfinite(x) || !std::isfinite(y) || !std::isfinite(z))
        { ++failed; std::cerr << "Invalid point row\n"; continue; }
        int gx = int(std::floor(32.0f - x / 533.33333f));
        int gy = int(std::floor(32.0f - y / 533.33333f));
        if (gx < 0 || gy < 0 || gx >= 64 || gy >= 64) { ++failed; continue; }
        std::ostringstream file;
        file << std::setfill('0') << std::setw(4) << map << '_' << std::setw(2) << gx << '_' << std::setw(2) << gy << ".map";
        GridMap terrain;
        auto mapStatus = terrain.loadData((root / "maps" / file.str()).string().c_str());
        auto vmapStatus = vmaps.loadMap((root / "vmaps").string(), map, gx, gy);
        std::cout << label << '\t' << map << '\t' << x << '\t' << y << '\t' << z << '\t' << int(mapStatus) << '\t' << int(vmapStatus)
            << '\t' << terrain.getHeight(x,y) << '\t' << vmaps.getHeight(map,x,y,z+2.0f,100.0f) << '\t' << terrain.getArea(x,y) << '\n';
        vmaps.unloadMap(map);
        if (mapStatus == GridMap::LoadResult::InvalidFile || vmapStatus == VMAP::LoadResult::VersionMismatch || vmapStatus == VMAP::LoadResult::ReadFromFileFailed) ++failed;
    }
    return failed ? 1 : 0;
}
catch (std::exception const& e) { std::cerr << e.what() << '\n'; return 1; }
