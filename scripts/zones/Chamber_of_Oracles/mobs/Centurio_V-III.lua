-----------------------------------
-- Area: Chamber of Oracles
--  MOB: Centurio V-III
-- Zilart 6 Fight
-----------------------------------

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath Action
-----------------------------------

function onMobDeath(mob,killer,ally)					
ally:addCurrency("bayld",83);
ally:PrintToPlayer( "You earned 83 Bayld!");
end;