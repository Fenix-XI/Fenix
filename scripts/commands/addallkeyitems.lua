---------------------------------------------------------------------------------------------------
-- func: addallkeyitem
-- auth: Shadowmh
-- desc: Adds all key items to character
---------------------------------------------------------------------------------------------------

require("scripts/globals/keyitems");

cmdprops =
{
    permission = 1,
    parameters = ""
};
function onTrigger(player)
z = 1;
while z <= 2544 do
    player:addKeyItem(z);
	z = z + 1;
end
	end