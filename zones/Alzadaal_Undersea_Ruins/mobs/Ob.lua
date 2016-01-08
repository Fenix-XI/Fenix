-----------------------------------
-- Area: Alzadaal Undersea Ruins
-- NPC: Ob
-- ZNM Path: Troll
-- @pos  http://ffxiclopedia.wikia.com/wiki/Cog_Lubricant traded to ??? at  the Bhaflau Remnants G-7 map. (SE Porter) 
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

function onMobDeath(mob, killer)

	
	killer:addCurrency("dominion_note",50);
	killer:PrintToPlayer( "You earned 50 Dominion Notes!");

end;