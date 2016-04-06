---------------------------------------------------------------------------------------------------
-- func: reward npc's
-- auth: 
-- desc: Sets players to main hub location
---------------------------------------------------------------------------------------------------
cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
    target = player:getName();

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        if (targ:getZoneID() ~= 131) then
            player:setPos('-640', '-19', '-492', '98', '222');
        else
            player:PrintToPlayer( "You've been jailed for a reason, good try! Now please enjoy your stay while longer.");
        end
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end