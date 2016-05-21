-----------------------------------
-- Area: Provenance
-- @pos -640 -19 -509 222
-----------------------------------

package.loaded["scripts/zones/Provenance/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/globals/quests");
require("scripts/zones/Provenance/TextIDs");

function onTrigger(player,npc)

player:PrintToPlayer("insert dyna blurb here");
end;

function onTrade(player,npc,trade)
balance_chocobuck_sandoria = 0;
balance_chocobuck_bastok = 0;
balance_chocobuck_windurst = 0;

-------------DECLARING VALUES FOR EACH ITEM-------------------------------------------------------------------------------------
whiteshell = 1; jadeshell = 100; bronze = 1; silver = 100; byne = 1; hundred_byne = 100;
-----------END OF DECLARE----------------------------------------------------------------------------------------------------------

local chocobuck_sandoria = player:getCurrency("chocobuck_sandoria");
local chocobuck_bastok = player:getCurrency("chocobuck_bastok")
local chocobuck_windurst = player:getCurrency("chocobuck_windurst")


if (trade:getItemCount() == 1) then
        if (trade:hasItemQty(baseitem,1)) and (chocobuck_windurst >= whiteshell)
			 then    
              player:delCurrency("chocobuck_windurst", ###);
   player:tradeComplete();
   player:addItem(1449,1);
   player:messageSpecial(ITEM_OBTAINED,1449,1);
        
		elseif (trade:hasItemQty(baseitem,1)) and (chocobuck_windurst >= jadeshell)
			 then    
              player:delCurrency("chocobuck_windurst", ###);
   player:tradeComplete();
   player:addItem(1450,1);
   player:messageSpecial(ITEM_OBTAINED,1450,1);
   
   		elseif (trade:hasItemQty(baseitem,1)) and (chocobuck_sandoria >= bronze)
			 then    
              player:delCurrency("chocobuck_sandoria", ###);
   player:tradeComplete();
   player:addItem(1452,1);
   player:messageSpecial(ITEM_OBTAINED,1452,1);
   
   		elseif (trade:hasItemQty(baseitem,1)) and (chocobuck_sandoria >= silver)
			 then    
              player:delCurrency("chocobuck_sandoria", ###);
   player:tradeComplete();
   player:addItem(1453,1);
   player:messageSpecial(ITEM_OBTAINED,1453,1);
   
   		elseif (trade:hasItemQty(baseitem,1)) and (chocobuck_bastok >= byne)
			 then    
              player:delCurrency("chocobuck_bastok", ###);
   player:tradeComplete();
   player:addItem(1455,1);
   player:messageSpecial(ITEM_OBTAINED,1455,1);
   
   		elseif (trade:hasItemQty(baseitem,1)) and (chocobuck_bastok >= hundred_byne)
			 then    
              player:delCurrency("chocobuck_bastok", ###);
   player:tradeComplete();
   player:addItem(1456,1);
   player:messageSpecial(ITEM_OBTAINED,1456,1);
		end
     end 
end; 
