-----------------------------------
-- Area: The Colosseum
-- NPC: PLDAF1 
-- Guild Merchant NPC: PLDAF1 
-- @pos 0 0 0 0 zone 71
-----------------------------------
package.loaded["scripts/zones/The_Colosseum/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/The_Colosseum/TextIDs");




-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc,trade)
	
player:PrintToPlayer("I require 2500 Conquest Points, 1 Honor Sword and a Zvahl Coffer Key.");
player:PrintToPlayer("Once you trade me the item's I will deduct the CP of your nation!");

local cpb = player:getCurrency("bastok_cp");
local cps = player:getCurrency("sandoria_cp");
local cpw = player:getCurrency("windurst_cp");
balance = cpb + cps + cpw;  --variable to determine how much is needed if not enough
player:PrintToPlayer( "You have "..balance.." of Conquest Points!");
--player:PrintToPlayer( "You have "cpb" of Conquest Points!");
end;
  
  -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)
local cpb = player:getCurrency("bastok_cp");
local cps = player:getCurrency("sandoria_cp");
local cpw = player:getCurrency("windurst_cp");
 if (cps >= 2500) then player:delCurrency("sandoria_cp", 2500);end
 if (cpw >= 2500) then player:delCurrency("windurst_cp", 2500);end
 if (cpb >= 2500) then player:delCurrency("bastok_cp", 2500) ;end
 
   if (balance >= 2500 and trade:getItemCount() == 2 and trade:hasItemQty(1048,1) and
      trade:hasItemQty(17643,1)) 
        		then
	
stock = {0x30e3,1,	--AF1 Head
	0x3164,1,	--AF1 Body
	0x368f,1,    --AF1 Hands
	0x378C,1,   --AF1 Legs
	0x370F,1   } --AF1 Feet	
	  
 
showShop(player, STATIC, stock);



end; 

player:PrintToPlayer( "You have "..balance.." of Conquest Points!");


end;
function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)

--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

