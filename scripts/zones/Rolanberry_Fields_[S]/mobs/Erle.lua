-----------------------------------
-- Area: Rolanberry Fields [S]
-- NPC:  Erle
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
	killer:addCurrency("kinetic_unit",60);
	killer:PrintToPlayer( "You earned 60 Kinetic Units!");
end;