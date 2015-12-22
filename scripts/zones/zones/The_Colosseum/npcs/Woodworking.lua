-----------------------------------
-- Area: The Colosseum
-- NPC: Wood
-- Guild Merchant NPC: Woodworking Guild 
-- @pos 0 0 0 0 zone 71
-----------------------------------
package.loaded["scripts/zones/The_Colosseum/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/The_Colosseum/TextIDs");
require("scripts/globals/crafting")



-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local balance = player:getCurrency("guild_woodworking");	
player:PrintToPlayer("All the woodworking materials you need for your adventure!");
player:PrintToPlayer("Trade me a single Terra Crystal to receive Synth Support.");
player:PrintToPlayer("You have "..balance.." of GP points!");

stock = {0x02B0,1,	--Arrowwood Log
0x2B1,1,	--Lauan Log
0x2BA,1,	--Ash Log
0x2B3,1,	--Maple Log
0x2B9,1,	--Holly Log
0x2B7,1,	--Willow Log
0x2B5,1,	--Walnut Log
0x2B8,1,	--Yew Log
0x2B2,1,	--Elm Log
0x2B6,1,	--Chestnut Log
0x2BB,1,	--Oak Log
0x2B4,1,	--Beech Log
0x2BD,1,	--Rosewood Log
0x2BC,1,	--Mahogany Log
0x2BE,1,	--Ebony Log
0x2BF,1,	--Petrified Log
0x9E4,1,	--Teak Log
0x5A6,1,	--Lacquer Log
0x5BD,1,	--Lancewood Log
0x9E6,1,	--Jacaranda Log
0x679,1	--Bundling Twine


	}	
 
showShop(player, STATIC, stock);
end; 

 -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)

 
   if (trade:getItemCount() == 1 and trade:hasItemQty(4241,1)) 
        		then
	
 player:addStatusEffect(EFFECT_WOODWORKING_IMAGERY,3,0,480);


else

if (player:getVar('[GUILD]currentGuild') ~= 2 ) then
player:PrintToPlayer( "You are not eligible to earn GP for this guild!");
else
		if (trade:hasItemQty(17354,1)) 
			 then    
              player:addCurrency("guild_woodworking", 300);--Harp
			  local balance = current_points;
			  player:PrintToPlayer( "You have gained 300 GP !");
			 player:tradeComplete();

		elseif 
			(trade:hasItemQty(17374,1)) 
			 then    
              player:addCurrency("guild_woodworking", 400);--Harp +1
			  local balance = current_points;
			  player:PrintToPlayer( "You have gained 400 GP !");
			 player:tradeComplete();	
			 
		elseif 
			(trade:hasItemQty(17053,1)) 
			 then    
              player:addCurrency("guild_woodworking", 500);--Rose Wand
			  local balance = current_points;
			  player:PrintToPlayer( "You have gained 500 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(17143,1)) 
			 then    
              player:addCurrency("guild_woodworking", 600);--Rose Wand +1
			  local balance = current_points;
			  player:PrintToPlayer( "You have gained 600 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(16888,1)) --Battle Fork
			 then    
              player:addCurrency("guild_woodworking", 700);
			  local balance = current_points;
			  player:PrintToPlayer( "You have gained 700 GP !");
			 player:tradeComplete();			 
		elseif 
			(trade:hasItemQty(16889,1)) --Battle Fork +1
			 then    
              player:addCurrency("guild_woodworking", 800);
			  local balance = current_points;
			  player:PrintToPlayer( "You have gained 800 GP !");
			 player:tradeComplete();			 
			 
			 
			 
end 
end
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
