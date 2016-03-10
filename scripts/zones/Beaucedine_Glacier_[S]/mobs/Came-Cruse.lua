-----------------------------------
-- Area: Beaucedine Glacier [S]
-- NPC:  Came-Cruse
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
	--ally:addCurrency("kinetic_unit",40); --mob isn't coded with HP/level
	--ally:PrintToPlayer( "You earned 40 Kinetic Units!");
end;