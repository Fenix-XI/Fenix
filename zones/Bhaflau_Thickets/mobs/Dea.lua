-----------------------------------
-- Area: Bhaflau Thickets
-- NPC: Dea
-- ZNM Path: Mamool
-- @pos http://ffxiclopedia.wikia.com/wiki/Olzhiryan_Cactus traded to ??? at (F-7) on Map 1. 
-----------------------------------

require("scripts/globals/titles");
	
-----------------------------------	
-- onMobDeath	
-----------------------------------	
	
function onMobDeath(mob,killer)	
	killer:addCurrency("dominion_note",300);
	killer:PrintToPlayer( "You earned 300 Dominion Notes!");
end;