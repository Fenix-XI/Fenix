---------------------------------------------------------------------------------------------------
-- func: gmisland
-- auth: <Unknown> :: Modded by Tagban
-- desc: Sets the players position to secret island... muahahaha
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone)
            player:setPos('367', '-25', '380', '59', '25');
end