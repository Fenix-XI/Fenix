-----------------------------------
-- Area: Beaucedine Glacier [S]
-- NPC:  Amphiptere
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
	--ally:addCurrency("kinetic_unit",80); --mob isn't coded with HP/level
	--ally:PrintToPlayer( "You earned 80 Kinetic Units!");
end;