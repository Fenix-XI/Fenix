-----------------------------------
-- Area: Spire of Dem
-- Mob: Progenerator
-- COP Mission 1
-- @ Spire of Dem
-----------------------------------

require("scripts/globals/titles");
	
-----------------------------------	
-- onMobDeath	
-----------------------------------	
	
function onMobDeath(mob,killer,ally)	
	ally:addCurrency("mweya_plasm",200);
	ally:PrintToPlayer( "You earned 200 Mweya Plasm!");
end;