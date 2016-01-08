-----------------------------------
-- Area: Wajaom Woodlands
-- NPC: Tinnin
-- ZNM Path: Mamool
-- @pos http://ffxiclopedia.wikia.com/wiki/Monkey_Wine traded to ??? at Wajaom Woodlands Islet
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

function onMobDeath(mob, killer, ally)

	
	ally:addCurrency("dominion_note",800);
	ally:PrintToPlayer( "You earned 800 Dominion Notes!");

end;