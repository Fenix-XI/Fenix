-----------------------------------
-- Area: Dynamis tavnazia
-- NPC:  Icon_Prototype
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

function onMobDeath(mob,killer)
killer:addCurrency("mweya_plasm",10);
killer:PrintToPlayer( "You earned 10 Mweya Plasm!");

local mobID = mob:getID();

    if (mobID == 16949306 and mob:isInBattlefieldList() == false) then
		killer:addTimeToDynamis(10);
		--print("addtime 10min");
		mob:addInBattlefieldList();
	end
	
end;