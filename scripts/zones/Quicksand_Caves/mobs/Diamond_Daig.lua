-----------------------------------
-- Area: Quicksand Caves
--  MOB: Diamond_Daig
-- NM
-----------------------------------

require("scripts/globals/missions");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------
function onMobEngaged(mob)
    mob:addStatusEffect(EFFECT_SILENCE, 1, 0, 6000);
end


-----------------------------------
-- onMobDeath Action
-----------------------------------

function onMobDeath(mob,killer,ally)
end;