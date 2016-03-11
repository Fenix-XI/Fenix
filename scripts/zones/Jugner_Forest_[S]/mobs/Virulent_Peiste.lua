-----------------------------------
-- Area: Jugner_Forest_[S]
--  MOB: Virulent Peiste
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
 	ally:addCurrency("kinetic_unit",10);
	ally:PrintToPlayer( "You earned 10 Kinetic Units!");
end;