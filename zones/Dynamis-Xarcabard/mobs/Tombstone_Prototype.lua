-----------------------------------
-- Area: Dynamis Xarcabard
-- NPC:  Tombstone Prototype
-----------------------------------
package.loaded["scripts/zones/Dynamis-Xarcabard/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/dynamis");
require("scripts/zones/Dynamis-Xarcabard/TextIDs");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob,target)
end;

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
killer:addCurrency("bayld",10);
killer:PrintToPlayer( "You earned 10 Bayld!");
	
	local mobID = mob:getID();
	
	-- Time Bonus: 010 060
	if (mobID == 17330531 and mob:isInBattlefieldList() == false) then
		killer:addTimeToDynamis(30);
		mob:addInBattlefieldList();
	elseif (mobID == 17330830 and mob:isInBattlefieldList() == false) then
		killer:addTimeToDynamis(30);
		mob:addInBattlefieldList();
	end
	
end;