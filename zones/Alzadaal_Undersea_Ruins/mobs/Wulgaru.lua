-----------------------------------
-- Area: Alzadaal Undersea Ruins
-- NPC: Wulgaru
-- ZNM Path: Lamia
-- @pos http://ffxiclopedia.wikia.com/wiki/Opalus_Gem traded to ??? at (H-6)
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

	
	killer:addCurrency("dominion_note",150);
	killer:PrintToPlayer( "You earned 150 Dominion Notes!");

end;