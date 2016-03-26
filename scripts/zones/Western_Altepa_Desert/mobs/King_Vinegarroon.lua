-----------------------------------
-- Area: Western Altepa Desert
--   NM: King Vinegarroon
-----------------------------------
package.loaded["scripts/zones/Western_Altepa_Desert/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Western_Altepa_Desert/TextIDs");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;


-----------------------------------
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target)
    -- todo make him use AoE tp move
    mob:addTP(300);
end;

-----------------------------------
-- onMobDisengage
-----------------------------------

function onMobDisengage(mob, weather)

    if (weather ~= WEATHER_DUST_STORM and weather ~= WEATHER_SAND_STORM) then
        DespawnMob(mob:getID());
    end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

    ally:addTitle(VINEGAR_EVAPORATOR);

    -- Set King_Vinegarroon's spawnpoint and respawn time (21-24 hours)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random(75600,86400));
aaabbbb = {10949,10954};
        local aaaabbb = mob:getZone():getPlayers();
        for i, aaaabbbb in pairs(aaaabbb) do
            local aaabbb = math.random(1,table.getn(aaabbbb));
            if (aaaabbbb:getFreeSlotsCount() >= 1 and aaaabbbb:hasItem(aaabbbb[aaabbb]) == false) then
                local aaaabbbbb = aaaabbbb:checkDistance(mob);
                    if (aaaabbbbb < 40) then
                        if (math.random(1,2) == 1) then
                            aaaabbbb:addItem(aaabbbb[aaabbb],1);
                            aaaabbbb:messageSpecial( ITEM_OBTAINED, aaabbbb[aaabbb]);
                        end;
                    end;
            end;
        end;
end;
