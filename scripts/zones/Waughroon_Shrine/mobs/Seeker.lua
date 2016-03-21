-----------------------------------
-- Area: Waughroon Shrine
--  MOB: Searcher
-- Mission 2-3 BCNM Fight
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
ally:addCurrency("bayld",50);
ally:PrintToPlayer( "You earned 50 Bayld!");
end;