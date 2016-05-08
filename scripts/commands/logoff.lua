---------------------------------------------------------------------------------------------------
-- func: logoff
-- desc: Logs the target player off by force.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2, --Fenix
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        target = player:getName();
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        targ:leavegame();
    else
        player:PrintToPlayer( string.format( "Invalid player '%s' given.", target ) );
    end
end