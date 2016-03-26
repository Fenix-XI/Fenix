-----------------------------------
-- Area: Monastic Cavern
--  MOB: Orcish Warlord (Overlord Bakgodek PH)
-----------------------------------
package.loaded["scripts/zones/Monastic_Cavern/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Monastic_Cavern/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    -- Needs to be zone wide message
    -- mob:messagePublic(mob,ORCISH_WARLORD_ENGAGE);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
    -- Needs to be zone wide message
    -- mob:messagePublic(mob,ORCISH_WARLORD_DEATH);
    mob:setRespawnTime(math.random(75600,86400)); -- 21 to 24 hours
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