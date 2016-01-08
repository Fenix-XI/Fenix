-----------------------------------
-- Area: Alzadaal Undersea Ruins
-- NPC:  Armed Gears
-- ZNM Path: Mamool Ja
-- @pos http://ffxiclopedia.wikia.com/wiki/Ferrite traded to ??? at (G/H-11)
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

	
	killer:addCurrency("dominion_note",300);
	killer:PrintToPlayer( "You earned 300 Dominion Notes!");

end;