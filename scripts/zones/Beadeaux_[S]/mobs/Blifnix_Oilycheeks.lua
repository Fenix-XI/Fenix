-----------------------------------
-- Area: Beadeaux [S]
-- NPC:  Blifnix Oilycheeks
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
	killer:addCurrency("kinetic_unit",65);
	killer:PrintToPlayer( "You earned 65 Kinetic Units!");
end;