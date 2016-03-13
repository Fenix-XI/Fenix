-----------------------------------
-- Area: The Shrine of Ru'Avitau
--  MOB: Ullikummi
-----------------------------------

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
	ally:addCurrency("bayld",50);
	ally:PrintToPlayer( "You earned 50 Bayld!");
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    GetNPCByID(17506694):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
end;