-----------------------------------
-- Area: Alzadaal Undersea Ruins
-- NPC: Cheese Hoarder Gigiroon
-- ZNM Path: Mamool
-- @pos http://ffxiclopedia.wikia.com/wiki/Rodent_Cheese traded to ??? at (E/F-8/9)
-----------------------------------
require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

function onMobFight(mob, target)

	

end;



-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer,ally)

	
	ally:addCurrency("dominion_note",50);
	ally:PrintToPlayer( "You earned 50 Dominion Notes!");

end;