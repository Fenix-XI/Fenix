-----------------------------------
-- Area: The Boyahda Tree
--  NM:  Voluptuous Vivian (NM)
-----------------------------------
package.loaded["scripts/zones/The_Boyahda_Tree/TextIDs"] = nil
-----------------------------------
require("scripts/zones/The_Boyahda_Tree/TextIDs");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
end;


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)

    ally:addTitle(THE_VIVISECTOR);

    -- Set VV's ToD
    SetServerVariable("[POP]Voluptuous_Vivian", os.time(t) + math.random(57600,86400)); -- 16-24 hours
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Voluptuous_Vivian");
    SetServerVariable("[PH]Voluptuous_Vivian", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));
aaabbbb = {10948,10951};
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