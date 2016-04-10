---------------------------------------------------------------------------------------------------
-- func: @qc
-- auth: Hookstar
-- desc: Sets players to Quicksand Caves
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
              player:PrintToPlayer("Thank you for flying Exodus Tele! You will be deducted 1000 Tabs!");
			  player:delCurrency("valor_point", 1000);
            player:setPos('-739', '-9', '-721', '73', '125');
			else 
			player:PrintToPlayer("You need at least 1000 Valor Points to use this command!");
			end
			end