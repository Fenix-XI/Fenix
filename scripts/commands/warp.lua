---------------------------------------------------------------------------------------------------
-- func: homepoint
-- desc: Sends the target to their homepoint.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        target = player:getName();
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        if (targ:getZoneID() ~= 131) then
            targ:warp();
        else
            player:PrintToPlayer( "You been Jailed for a reason, good try! Now please enjoy your stay a while longer.");
        end
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end