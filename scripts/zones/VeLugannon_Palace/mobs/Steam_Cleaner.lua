-----------------------------------
-- Area: Ve'Lugannon Palace
-- MOB:  Steam_Cleaner
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

function onMobDeath(mob, killer,ally)
    ally:addCurrency("bayld",100);
    ally:PrintToPlayer( "You earned 100 Bayld!");
end;