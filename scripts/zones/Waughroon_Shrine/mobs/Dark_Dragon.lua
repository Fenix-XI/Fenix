-----------------------------------
-- Area: Waughroon Shrine
--  MOB: Black Dragon
-- Mission 2-3 BCNM Fight
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath Action
-----------------------------------

function onMobDeath(mob,killer,ally)
    ally:addTitle(BLACK_DRAGON_SLAYER);
	ally:addCurrency("bayld",50);
	ally:PrintToPlayer( "You earned 50 Bayld!");
end;