-----------------------------------
-- Area: Jugner Forest [S]
-- NPC:  Boll Weevil
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
	ally:addCurrency("kinetic_unit",20);
	ally:PrintToPlayer( "You earned 20 Kinetic Units!");
end;