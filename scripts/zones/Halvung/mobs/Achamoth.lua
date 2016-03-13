-----------------------------------
-- Area: Halvung
-- NPC: Achamoth
-- ZNM Path: Troll
-- @pos http://ffxiclopedia.wikia.com/wiki/Rock_Juice traded to ??? at (G-4)
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