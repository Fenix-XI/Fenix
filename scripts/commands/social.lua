---------------------------------------------------------------------------------------------------
-- func: social
-- auth: 
-- desc: Sets players to main hub location
---------------------------------------------------------------------------------------------------
cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone)
local valor_point = player:getCurrency("valor_point");
local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        if (targ:getZoneID() ~= 131) then
            player:setPos('-117', '-6', '95', '3', '50');
        else
            player:PrintToPlayer( "You been Jailed for a reason, good try! Now please enjoy your stay a while longer.");
        end
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end  
end	
