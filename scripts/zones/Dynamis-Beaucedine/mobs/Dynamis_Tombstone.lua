-----------------------------------
-- Area: Dynamis Beaucedine
-- NPC:  Dynamis Tombstone
-- Trigger for Fire Pukis respawn
-----------------------------------

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    SpawnMob(17326273):updateEnmity(target);
    SpawnMob(17326255):updateEnmity(target);
    SpawnMob(17326212):updateEnmity(target);
    SpawnMob(17326237):updateEnmity(target);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
	ally:addCurrency("bayld",10);
	ally:PrintToPlayer( "You earned 10 Bayld!");
end;