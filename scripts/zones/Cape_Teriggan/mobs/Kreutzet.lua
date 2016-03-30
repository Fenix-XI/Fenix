----------------------------------
-- Area: Cape Teriggan
--  NM:  Kruetzet
-----------------------------------
package.loaded["scripts/zones/Cape_Teriggan/TextIDs"] =nil
-----------------------------------
require("scripts/zones/Cape_Teriggan/TextIDs");
require("scripts/globals/weather");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)

    -- Set Kruetzet's spawnpoint and respawn time (9-12 hours)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random((32400),(43200)));

end;

-----------------------------------
-- onMobDisengage
-----------------------------------

function onMobDisengage(mob, weather)

    if (weather ~= WEATHER_WIND and weather ~= WEATHER_GALE) then
        DespawnMob(mob:getID());
    end
aaabbbb = {10955,10951};
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