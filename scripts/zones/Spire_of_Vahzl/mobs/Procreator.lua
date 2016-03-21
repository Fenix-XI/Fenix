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
	ally:addCurrency("mweya_plasm",100);
	ally:PrintToPlayer( "You earned 100 Mweya Plasm!");
end;