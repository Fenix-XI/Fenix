---------------------------------------------------------------------------------------------------
-- func: crafting & hangout
-- desc: Moves self to crafting location The Colosseum
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
            player:PrintToPlayer( "@craft has been changed to @fenix!");
end