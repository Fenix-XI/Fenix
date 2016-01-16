-----------------------------------
-- Area: North Gustaberg [S]
-- NPC:  Olgoi-Khorkhoi
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
	killer:addCurrency("kinetic_unit",20);
	killer:PrintToPlayer( "You earned 20 Kinetic Units!");
end;