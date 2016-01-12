-----------------------------------
-- Area: East Ronfaure [S]
--  MOB: Sandworm
-- Note:  Title Given if Sandworm does not Doomvoid
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
    ally:addTitle(SANDWORM_WRANGLER);
	ally:addCurrency("kinetic_unit",300);
	ally:PrintToPlayer( "You earned 300 Kinetic Units! Doomvoid - Do you need it?");
end;