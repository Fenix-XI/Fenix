-----------------------------------
-- Area: BCNM
--  MOB: Lambton Worm
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addTitle(LAMBTON_WORM_DESEGMENTER);
	ally:addCurrency("kinetic_unit",500);
	ally:PrintToPlayer( "You earned 500 Kinetic Units!");
end;