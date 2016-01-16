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
	killer:addCurrency("kinetic_unit",85);
	killer:PrintToPlayer( "You earned 85 Kinetic Units!");
end;