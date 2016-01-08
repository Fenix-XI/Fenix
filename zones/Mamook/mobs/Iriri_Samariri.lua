-----------------------------------
-- Area: Mamook
-- NPC: Iriri Samariri
-- ZNM Path: Mamool
-- @pos http://ffxiclopedia.wikia.com/wiki/Samariri_Corpsehair traded to ??? at (F-7)
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