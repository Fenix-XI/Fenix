-----------------------------------
-- Area: 
--  MOB: Greater Amphiptere
-----------------------------------

require("scripts/globals/status");
mixins = { require("scripts/mixins/families/amphiptere") }

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, killer)
end;

-----------------------------------
-- onMobDisengage
-----------------------------------

function onMobDisengage(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer,ally)
	ally:addCurrency("kinetic_unit",90);
	ally:PrintToPlayer( "You earned 90 Kinetic Units!");
end;
