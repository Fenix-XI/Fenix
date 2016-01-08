-----------------------------------
-- Area: Dynamis Valkurm
-- NPC:  Goblin_Statue
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

function onMobDeath(mob,killer)
killer:addCurrency("mweya_plasm",10);
killer:PrintToPlayer( "You earned 10 Mweya Plasm!");

local mobID = mob:getID();
	if (mobID == 16937289 and mob:isInBattlefieldList() == false) then
		killer:addTimeToDynamis(10);
		mob:addInBattlefieldList();
		--print("addtime 10min");
	elseif (mobID == 16937287 and mob:isInBattlefieldList() == false) then
	    killer:addTimeToDynamis(20);
		mob:addInBattlefieldList();
		--print("addtime 20min");
	end
end;