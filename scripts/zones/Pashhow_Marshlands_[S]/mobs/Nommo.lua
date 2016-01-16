-----------------------------------
-- Area: Pashhow Marshlands [S]
-- NPC:  Nommo
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
	killer:addCurrency("kinetic_unit",100);
	killer:PrintToPlayer( "You earned 100 Kinetic Units!");
end;