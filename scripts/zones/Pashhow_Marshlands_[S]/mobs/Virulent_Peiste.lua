-----------------------------------
-- Area:
--  Name: Virulent Peiste
-- @pos -242 25 -360
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
    ally:addCurrency("bayld",10);
	ally:PrintToPlayer( "You earned 10 Bayld!");
end;