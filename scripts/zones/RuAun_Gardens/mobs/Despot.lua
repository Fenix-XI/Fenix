-----------------------------------
-- Area: RuAun Gardens
--  NM:  Despot
-----------------------------------

require("scripts/globals/fieldsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------
function onMobDeath(mob,killer,ally)
		ally:addCurrency("bayld",100);
	ally:PrintToPlayer( "You earned 100 Bayld!");

    -- Set Despot ToD
    SetServerVariable("[POP]Despot", os.time(t) + 7200); -- 2 hour
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Despot");
    SetServerVariable("[PH]Despot", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;
