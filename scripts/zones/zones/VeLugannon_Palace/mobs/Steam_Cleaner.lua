-----------------------------------
-- Area: Ve'Lugannon Palace
-- MOB:  Steam_Cleaner
-----------------------------------

require("scripts/globals/groundsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
			killer:addCurrency("bayld",100);
	killer:PrintToPlayer( "You earned 100 Bayld!");
end;