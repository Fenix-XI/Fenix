-----------------------------------
-- Area: Grand Palace of Hu'Xzoi
--  MOB: Eo'Zdei
-- Animation Sub 0 Pot Form
-- Animation Sub 1 Pot Form (reverse eye position)
-- Animation Sub 2 Bar Form
-- Animation Sub 3 Ring Form
-----------------------------------

require("scripts/zones/Grand_Palace_of_HuXzoi/MobIDs");
require("scripts/globals/status");



function onMobDeath(mob,killer,ally)
	ally:addCurrency("mweya_plasm",75);
	ally:PrintToPlayer( "You earned 75 Mweya Plasm!");
end;