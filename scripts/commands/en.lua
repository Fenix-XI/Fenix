---------------------------------------------------------------------------------------------------
-- func: @EN
-- auth: Hookstar
-- desc: Sets players to The Eldieme Necro
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
        if (targ:getZoneID() ~= 131 and valor_point >=1000) then
		      player:PrintToPlayer("Thank you for flying Exodus Tele! You will be deducted 1000 Tabs!");
			  player:delCurrency("valor_point", 1000);
            player:setPos('152', '11', '-392', '159', '105');
        else
            player:PrintToPlayer( "You been Jailed for a reason. Or you do not have enough Tabs!");
        end
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end  
end	