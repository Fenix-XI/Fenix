-----------------------------------
-- Area: Batallia Downs
--  MOB: Weeping Willow
-----------------------------------
package.loaded["scripts/zones/Batallia_Downs/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Batallia_Downs/TextIDs");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)
    if (mob:getHPP() <= 50 and mob:getLocalVar("Saplings") < 1) then
        SpawnMob(mob:getID()+1):updateEnmity(target);
        SpawnMob(mob:getID()+2):updateEnmity(target);
        SpawnMob(mob:getID()+3):updateEnmity(target);
        SpawnMob(mob:getID()+4):updateEnmity(target);
        SpawnMob(mob:getID()+5):updateEnmity(target);
        mob:setLocalVar("Saplings", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    local JACK = mob:getID()+6;
    SpawnMob(JACK):updateEnmity(killer);
    GetMobByID(JACK):setPos( mob:getXPos(), mob:getYPos(), mob:getZPos(), 0);
	aaabbbb = {18075,15042};
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