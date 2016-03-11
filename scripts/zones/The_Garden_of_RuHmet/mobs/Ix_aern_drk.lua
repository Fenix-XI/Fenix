-----------------------------------
-- Area: The Garden of Ru'Hmet
--  MOB: Ix'aern (drk)
-----------------------------------

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
	ally:addCurrency("mweya_plasm",300);
	ally:PrintToPlayer( "You earned 300 Mweya Plasm!");
    --SetServerVariable("[PH]Ix_aern_drk", 0);

end;