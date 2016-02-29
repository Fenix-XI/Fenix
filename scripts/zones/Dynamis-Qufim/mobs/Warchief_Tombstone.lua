-----------------------------------
-- Area: Dynamis qufim
--  MOB: Warchief_Tombstone
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/titles");
require("scripts/globals/dynamis");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
	ally:addCurrency("mweya_plasm",10);
	ally:PrintToPlayer( "You earned 10 Mweya Plasm!");
local mobID = mob:getID();
    if (mobID == 16945480 and mob:isInBattlefieldList() == false) then
        ally:addTimeToDynamis(10);
        mob:addInBattlefieldList();
        --print("addtime 10min");
    end
end;