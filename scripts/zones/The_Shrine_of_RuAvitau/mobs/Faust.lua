-----------------------------------
-- Area: The Shrine of Ru'Avitau
--  MOB: Faust
-----------------------------------

-- TODO: Faust should WS ~3 times in a row each time.

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
    mob:setRespawnTime(math.random(10800,21600)); -- respawn 3-6 hrs
end;