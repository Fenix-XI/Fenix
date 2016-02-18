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
	
function onMobDeath(mob,killer,ally)	
	ally:addCurrency("dominion_note",10);
	ally:PrintToPlayer( "You earned 10 Dominion Notes!");
end;