-----------------------------------
-- Area: Sacrificial Chamber
-- NPC:  Tonberry's Elemental
-- Zilart Mission 4 BCNM Fight
-----------------------------------

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
	local mobid = mob:getID();

	for i=mobid-3,mobid-1 do
		GetMobByID(i):updateEnmity(target);
	end
end;

-----------------------------------
-- onMobDeath Action
-----------------------------------

function onMobDeath(mob,killer,ally)
					ally:addCurrency("bayld",1);
		ally:PrintToPlayer( "You earned 1 Bayld!");
end;