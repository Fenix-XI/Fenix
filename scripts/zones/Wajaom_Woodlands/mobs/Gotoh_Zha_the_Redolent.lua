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

function onMobDeath(mob, killer,ally)
	ally:addCurrency("dominion_note",250);
	ally:PrintToPlayer( "You earned 250 Dominion Notes!");

end;