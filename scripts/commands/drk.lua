---------------------------------------------------------------------------------------------------
-- func: drk
-- desc: Displays the Chaosbringer kills for DRK unlock quest.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:PrintToPlayer(player:getVar("ChaosbringerKills"));
end