---------------------------------------------------------------------------------------------------
-- func: Whitegate
-- auth: 
-- desc: Sets player's location to Whitegate AH area
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone)
            player:setPos('-117', '-6', '95', '3', '50');
end
