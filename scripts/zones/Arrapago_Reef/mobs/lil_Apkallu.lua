-----------------------------------
-- Area: Arrapago Reef
-- NPC: Lil' Apkallu
-- ZNM Path: Lamia
-- @pos http://ffxiclopedia.wikia.com/wiki/Greenling traded to ??? at (Map 1) (I-9). Go through the gate at (I-8) to get to the spawn point.
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

	
	ally:addCurrency("dominion_note",50);
	ally:PrintToPlayer( "You earned 50 Dominion Notes!");

end;