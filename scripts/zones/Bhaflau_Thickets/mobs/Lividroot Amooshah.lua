-----------------------------------	
-- Area: Bhaflau Thickets
-- NM: Lividroot Amooshah
-- @pos 334 -10 184 52
-----------------------------------	

require("scripts/globals/titles");
	
-----------------------------------	
-- onMobDeath	
-----------------------------------	
	
function onMobDeath(mob,killer)	
	killer:addCurrency("dominion_note",150);
	killer:PrintToPlayer( "You earned 150 Dominion Notes!");
end;