-----------------------------------
-- Area: Chamber of Oracles
--  MOB: Triarius V-VIII
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
ally:addCurrency("bayld",84);
ally:PrintToPlayer( "You earned 84 Bayld!");
end;