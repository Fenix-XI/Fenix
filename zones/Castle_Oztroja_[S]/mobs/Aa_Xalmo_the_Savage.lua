-----------------------------------
-- Area: Castle Oztraja [S]
-- NPC:  Aa Xalmo the Savage
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

function onMobDeath(mob, killer)
	killer:addCurrency("kinetic_units",110);
	killer:PrintToPlayer( "You earned 110 Kinetic Units!");
end;