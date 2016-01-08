-----------------------------------
-- Area: VeLugannon Palace
-- NPC:  Steam Cleaner
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------
function onMobDeath(mob, killer)
killer:addCurrency("bayld",100);
killer:PrintToPlayer( "You earned 100 Bayld!");
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
end;