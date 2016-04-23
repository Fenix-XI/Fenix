---------------------------------------------------------------------------------------------------
-- func: crafting & hangout
-- desc: Moves self to crafting location The Colosseum
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone)
            player:setPos('-10.082', '-9.962', '-9.285', '0', '71');
end