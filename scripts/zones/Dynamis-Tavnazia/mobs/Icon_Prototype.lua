-----------------------------------
-- Area: Dynamis tavnazia
--  MOB: Icon_Prototype
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/dynamis");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
	ally:addCurrency("mweya_plasm",10);
	ally:PrintToPlayer( "You earned 10 Mweya Plasm!");
local mobID = mob:getID();

    if (mobID == 16949306 and mob:isInBattlefieldList() == false) then
        ally:addTimeToDynamis(10);
        --print("addtime 10min");
        mob:addInBattlefieldList();
    end
    
end;