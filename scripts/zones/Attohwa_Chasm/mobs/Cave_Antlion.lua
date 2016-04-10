-----------------------------------
-- Area: Attohwa Chasm
--  MOB: Cave Antlion
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setTP(1000);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, killer)
    mob:useMobAbility(278); -- Pit Ambush
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
end;