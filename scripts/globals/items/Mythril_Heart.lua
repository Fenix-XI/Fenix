-----------------------------------------
-- ID: 16950
-- Item: Mythril Heart
-- Additional Effect: Dispel
-----------------------------------------
require("scripts/globals/status");

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 5;
	
    if (math.random(0,99) >= chance) then
            return 0,0,0;
		else
			target:dispelStatusEffect();
			return SUBEFFECT_DISPEL, MSGBASIC_ADD_EFFECT_DISPEL, MSG_DISPEL;
	end
end;