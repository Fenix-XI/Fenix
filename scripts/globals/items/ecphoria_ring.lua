-----------------------------------------
-- ID: 15817
-- Item: Ecphoria Ring
-- Amnesia Removal
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
	if (target:hasStatusEffect(EFFECT_AMNESIA) == false) then
		result = 56;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	if (target:hasStatusEffect(EFFECT_AMNESIA) == true) then
		target:delStatusEffect(EFFECT_AMNESIA);
	end
end;
