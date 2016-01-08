-----------------------------------
-- Area: The Colosseum
-- NPC: Smithing
-- Guild Merchant NPC: Woodworking Guild 
-- @pos 0 0 0 0 zone 71
-----------------------------------
package.loaded["scripts/zones/The_Colosseum/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/The_Colosseum/TextIDs");


function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
player:PrintToPlayer("All the Smithing materials you need for your adventure!");
player:PrintToPlayer("Trade me a single Terra Crystal to receive Synth Support.");

stock = {0x281,1,	--Tin Ore
0x280,1,	--Copper Ore
0x283,1,	--Iron Ore
0x285,1,	--Darksteel Ore
0x291,1,	--Tama-Hagane
0x8FE,1,	--Troll Bronze Ingot
0x286,1,	--Adaman Ore
0x4CD,1,	--Adaman Nugget
0x287,1	--Molybdenum Ore
	
	}
 
showShop(player, STATIC, stock);
end;   -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)
local balance = player:getCurrency("guild_smithing");
 
   if (trade:getItemCount() == 1 and trade:hasItemQty(4241,1)) 
        		then
	
 player:addStatusEffect(EFFECT_SMITHING_IMAGERY,3,0,480);

end

if (trade:hasItemQty(16512,1)) 
			 then    
              player:addCurrency("guild_smithing", 300);
			  local balance = current_points;
			  player:PrintToPlayer( "You have "..balance.." of GP points!");
			 player:tradeComplete();

		elseif 
			(trade:hasItemQty(16632,1)) 
			 then    
              player:addCurrency("guild_smithing", 400);
			  local balance = current_points;
			  player:PrintToPlayer( "You have "..balance.." of GP points!");
			 player:tradeComplete();	
			 
		elseif 
			(trade:hasItemQty(16651,1)) 
			 then    
              player:addCurrency("guild_smithing", 500);
			  local balance = current_points;
			  player:PrintToPlayer( "You have "..balance.." of GP points!");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(16670,1)) 
			 then    
              player:addCurrency("guild_smithing", 600);
			  local balance = current_points;
			  player:PrintToPlayer( "You have "..balance.." of GP points!");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(16577,1)) 
			 then    
              player:addCurrency("guild_smithing", 700);
			  local balance = current_points;
			  player:PrintToPlayer( "You have "..balance.." of GP points!");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(16828,1)) 
			 then    
              player:addCurrency("guild_smithing", 800);
			  local balance = current_points;
			  player:PrintToPlayer( "You have "..balance.." of GP points!");
			 player:tradeComplete();			 
			 
end 



end; 
-----------------------------------
-- onEventUpdate
-----------------------------------

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
