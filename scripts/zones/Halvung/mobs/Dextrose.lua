-----------------------------------
-- Area: Halvung
-- NPC: Dextrose
-- ZNM Path: Troll
-- @pos http://ffxiclopedia.wikia.com/wiki/Granulated_Sugar traded to ??? at (J-6) of Map 2
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