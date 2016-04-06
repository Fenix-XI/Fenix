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
    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        if (targ:getZoneID() ~= 131) then
            player:setPos('0', '0', '0', '0', '71');
        else
            player:PrintToPlayer( "You been Jailed for a reason, good try! Now please enjoy your stay a while longer.");
        end
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end           
   
end