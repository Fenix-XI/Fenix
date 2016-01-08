-----------------------------------	
-- Area: Bhaflau Thickets
-- NM: Dea
-- @pos -34 -32 481 52
-----------------------------------	

require("scripts/globals/titles");
	
-----------------------------------	
-- onMobDeath	
-----------------------------------	
	
function onMobDeath(mob,killer)	
	killer:addCurrency("dominion_note",300);
	killer:PrintToPlayer( "You earned 300 Dominion Notes!");
end;