-----------------------------------
-- Area: Ifrit's Cauldron
--  MOB: Ash Dragon
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
	killer:addCurrency("bayld",150);
	killer:PrintToPlayer( "You earned 150 Bayld!");
    ally:addTitle(DRAGON_ASHER);

    -- Set ASh Dragon's spawnpoint and respawn time (3-5 Days)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random(259200,432000));
end;