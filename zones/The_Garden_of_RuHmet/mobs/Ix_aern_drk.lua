-----------------------------------
-- Area: The Garden of Ru'Hmet
-- NPC:  Ix'aern (drk)
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
	SetServerVariable("[PH]Ix_aern_drk", 0);
	killer:addCurrency("mweya_plasm",75);
	killer:PrintToPlayer( "You earned 75 Mweya Plasm!");

end;