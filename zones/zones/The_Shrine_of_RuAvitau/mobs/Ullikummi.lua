-----------------------------------
-- Area: The Shrine of Ru'Avitau
-- NPC:  Ullikummi
-----------------------------------

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	GetNPCByID(17506694):hideNPC(300);
	
			killer:addCurrency("bayld",100);
	killer:PrintToPlayer( "You earned 100 Bayld!");
end;