-----------------------------------
-- Area: Dynamis qufim
-- NPC:  Adamantking_Image
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
	if (mobID == 16945193 and mob:isInBattlefieldList() == false) then
		killer:addTimeToDynamis(10);
		mob:addInBattlefieldList();
		--print("addtime 10min");
	end
end;