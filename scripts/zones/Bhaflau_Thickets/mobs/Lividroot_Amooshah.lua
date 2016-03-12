-----------------------------------
-- Area: Bhaflau Thickets
-- NPC: Lividroot Amooshah
-- ZNM Path: Mamool
-- @pos http://ffxiclopedia.wikia.com/wiki/Oily_Blood traded to ??? at  (H-9)
-----------------------------------

require("scripts/globals/titles");
	
-----------------------------------	
-- onMobDeath	
-----------------------------------	
	
function onMobDeath(mob, killer,ally)	
	ally:addCurrency("dominion_note",100);
	ally:PrintToPlayer("You earned 100 Dominion Notes!");
end;