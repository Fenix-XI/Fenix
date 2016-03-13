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

function onMobDeath(mob, killer,ally)

	
	ally:addCurrency("dominion_note",100);
	ally:PrintToPlayer( "You earned 100 Dominion Notes!");

end;