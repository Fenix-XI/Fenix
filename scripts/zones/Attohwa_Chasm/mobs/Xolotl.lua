-----------------------------------
-- Area: Attohwa Chasm
--  MOB: Xolotl
-----------------------------------
package.loaded["scripts/zones/Attohwa_Chasm/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Attohwa_Chasm/TextIDs");
require("scripts/globals/titles");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob) 
    mob:setRespawnTime(0, true);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addTitle(XOLOTL_XTRAPOLATOR);
    -- Do not respawn Xolotl for 21-24 hours
    mob:setRespawnTime(math.random(75600,86400), true);
	aaabbbb = {10952,10953};
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