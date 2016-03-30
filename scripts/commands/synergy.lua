---------------------------------------------------------------------------------------------------
-- func: social
-- auth: Hookstar
-- desc: Sets players to crafting location The Colosseum
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone)
            player:setPos('-65', '0', '4', '198', '246');
end