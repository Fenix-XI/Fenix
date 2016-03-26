---------------------------------------------------------------------------------------------------
-- func: homepoint
-- desc: Sends the target to their homepoint.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player)
    target = player:getName();

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        if (targ:getZoneID() ~= 131) then
            targ:warp();
        else
            player:PrintToPlayer( "You've been jailed for a reason, good try! Now please enjoy your stay while longer.");
        end
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end