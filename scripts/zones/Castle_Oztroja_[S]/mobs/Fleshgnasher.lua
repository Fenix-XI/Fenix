-----------------------------------
-- Area: Castle Oztraja [S]
-- NPC:  Fleshgnasher
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

function onMobDeath(mob, killer,ally)
	killer:addCurrency("kinetic_unit",75);
	killer:PrintToPlayer( "You earned 75 Kinetic Units!");
end;