-----------------------------------
-- Area: Crawlers' Nest (197)
--  MOB: Demonic_Tiphia
-----------------------------------
package.loaded["scripts/zones/Crawlers_Nest/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Crawlers_Nest/TextIDs");
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)    

    -- Set Demonic_Tiphia's Window Open Time
    local wait = math.random(7200,28800);
    SetServerVariable("[POP]Demonic_Tiphia", os.time(t) + wait); -- 2-8 hours
    DeterMob(mob:getID(), true);
    
    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Demonic_Tiphia");
    SetServerVariable("[PH]Demonic_Tiphia", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));
aaabbbb = {17965,18867};
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