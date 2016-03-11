-----------------------------------
-- Area: The Colosseum
-- NPC: BLUAF1 
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
	
player:PrintToPlayer("I require 2500 Conquest Points, 1 Immortal's Schmitar and a Imp. Silver Piece.");
player:PrintToPlayer("Once you trade me the item's I will deduct the CP of your nation!");
player:PrintToPlayer("Trade me a Blue Testimony to start your path to 75!");

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
 	local LvL = player:getMainLvl();
	local mJob = player:getMainJob();
	
if(LvL >= 66 and mJob == 16 and player:levelCap() == 70 and MAX_LEVEL >= 75 and trade:getItemCount()==1 and trade:hasItemQty(2331,1))
		then
		player:PrintToPlayer("Take the Testimony to the HP #1 somewhere in Bhaflau_Thickets")
 end;
 if (balance >= 2500 and trade:getItemCount() == 2 and trade:hasItemQty(2185,1) and
      trade:hasItemQty(17717,1)) 
        		then
	
stock = {0x3ba1,1,	--AF1 Head
	0x3cf0,1,	--AF1 Body
	0x3a50,1,    --AF1 Hands
	0x3d44,1,   --AF1 Legs
	0x38b9,1
	} --AF1 Feet	
showShop(player, STATIC, stock);


end; 

player:PrintToPlayer( "You have "..balance.." of Conquest Points! I NEED 2500!");


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

