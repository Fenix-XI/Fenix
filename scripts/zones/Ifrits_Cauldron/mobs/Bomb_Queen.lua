-----------------------------------
-- Area: Ifrit's Cauldron
-- NPC:  Bomb Queen
-----------------------------------

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	
end;

function onMobFight( mob, target )
local rand = math.random( 0, 2 );
local lastPop = mob:getLocalVar("pop_pets");
    if (os.time() - lastPop >= 30) then
        local SPAWNS = mob:getLocalVar("SPAWNS");
        local prince = GetMobAction(17617160);
        local princess = GetMobAction(17617161);

		if (lastPop >= 30) then -- Spawns random 
            SpawnMob(17617160, 300):updateEnmity(target); 
            SpawnMob(17617161, 300):updateEnmity(target);
			SpawnMob(17617163, 300):updateEnmity(target);

            mob:setLocalVar("pop_pets", os.time());
		end
	end
end;




-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	GetNPCByID(17617180):hideNPC(180); -- 15min, qm2 in npc_list
end;