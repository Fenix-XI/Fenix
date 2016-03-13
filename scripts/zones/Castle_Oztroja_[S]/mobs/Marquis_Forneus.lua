-----------------------------------
-- Area: Castle Oztraja [S]
-- NPC:  Marquis Forneus
-----------------------------------

-----------------------------------
-- requires go here
-----------------------------------

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, killer)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer,slly)
	ally:addCurrency("kinetic_unit",100);
	ally:PrintToPlayer( "You earned 100 Kinetic Units!");
end;