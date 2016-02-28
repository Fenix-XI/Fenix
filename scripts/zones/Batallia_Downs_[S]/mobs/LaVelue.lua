-----------------------------------
-- Area: Battalia Downs [S]
-- NPC:  La Velue
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
	ally:addCurrency("kinetic_unit",50);
	ally:PrintToPlayer( "You earned 50 Kinetic Units!");
end;