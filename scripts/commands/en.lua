---------------------------------------------------------------------------------------------------
-- func: @EN
-- desc: Sets player's location to entrance of Castle Oztroja
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone)
local valor_point = player:getCurrency("valor_point");
if (valor_point >= 1000)
	then
              player:PrintToPlayer("1000 tabs deducted for teleportation fee. Happy adventuring!");
			  player:delCurrency("valor_point", 1000);
            player:setPos('152', '11', '-392', '159', '105');
			else 
			player:PrintToPlayer("You need at least 1000 Valor Points to use this command!");
			end
			end