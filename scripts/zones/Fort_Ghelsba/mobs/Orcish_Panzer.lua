-----------------------------------
-- Area: Fort Ghelsba
--  NM:  Orcish Panzer
-----------------------------------
package.loaded["scripts/zones/Fort_Ghelsba/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Fort_Ghelsba/TextIDs");
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
    local OrcFighter = 17354895;
    local Chariotbuster = 17354896;
    local ToD = GetServerVariable("Chariotbuster_Byakzak");
    if (ToD <= os.time(t)) then -- It's NM time, so spawn Chariotbuster Byakzak
        SpawnMob(Chariotbuster,600):updateEnmity(killer);
        GetMobByID(Chariotbuster):setPos( mob:getXPos(), mob:getYPos(), mob:getZPos(), 0);
    else -- Not NM time yet, so spawn normal Orcish Fighter instead
        SpawnMob(OrcFighter,600):updateEnmity(killer);
        GetMobByID(OrcFighter):setPos( mob:getXPos(), mob:getYPos(), mob:getZPos(), 0);
		aaabbbb = {18503,19222};
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
    end
end;