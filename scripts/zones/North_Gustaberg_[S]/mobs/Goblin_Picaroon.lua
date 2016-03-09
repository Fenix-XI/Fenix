-----------------------------------
-- Area: Crystal War Areas
--  MOB: Goblin Picaroon
-- Note:  
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
  
	ally:addCurrency("kinetic_unit",20);
	ally:PrintToPlayer( "You earned 20 Kinetic Units! ");
end;