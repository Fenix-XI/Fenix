-----------------------------------
-- Area: Ifrit's Cauldron
-- NPC:  Bomb Prince
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
require( "scripts/globals/ability" );
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

end;


-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
local lastPop = mob:getLocalVar("pop_pets");
    if (os.time() - lastPop >= 15) then
	--mob:useMobAbility(475);
	
	mob:setLocalVar("pop_pets", os.time());
	end
end;
function onMobDeath(mob, killer)
end;