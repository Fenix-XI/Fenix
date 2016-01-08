-----------------------------------
-- Area: Wajaom Woodlands
-- NPC: Gotoh Zha the Redolent
-- ZNM Path: Mamool
-- @pos http://ffxiclopedia.wikia.com/wiki/Sheep_Botfly traded to ??? at (F-5)
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