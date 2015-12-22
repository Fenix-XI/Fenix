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
require("scripts/globals/crafting")
require("scripts/zones/The_Colosseum/TextIDs");





-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local balance = player:getCurrency("guild_smithing");
	
player:PrintToPlayer("All the Smithing materials you need for your adventure!");
player:PrintToPlayer("Trade me a single Terra Crystal to receive Synth Support.");
player:PrintToPlayer("You have "..balance.." of GP points!");

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
local current_points = player:getCurrency("guild_smithing");
local daily_points = current_points - balance; 
   if (trade:getItemCount() == 1 and trade:hasItemQty(4241,1)) 
        		then
	
 player:addStatusEffect(EFFECT_SMITHING_IMAGERY,3,0,480);

else

if (player:getVar('[GUILD]currentGuild') ~= 3 ) then
player:PrintToPlayer( "You are not eligible to earn GP for this guild!");
--end
--if (daily_points <=10000)
--then 
		--player:setVar("[Guild]daily_points", os.date("%j")); -- %M for next minute, %j for next day
		--player:setVar("Wait1DayForYomiOkuri",VanadielDayOfTheYear());
else
		if (trade:hasItemQty(16512,1)) 
			 then    
              player:addCurrency("guild_smithing", 300);--bilbo
			  player:PrintToPlayer( "You have gained 300 GP !");
			  --daily_points, +300;
			 player:tradeComplete();

		elseif 
			(trade:hasItemQty(16632,1)) 
			 then    
              player:addCurrency("guild_smithing", 400);--bilbo +1
			  player:PrintToPlayer( "You have gained 400 GP !");
			 player:tradeComplete();	
			 
		elseif 
			(trade:hasItemQty(16651,1)) 
			 then    
              player:addCurrency("guild_smithing", 500);--mythril Pick 
			  player:PrintToPlayer( "You have gained 500 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(16670,1)) 
			 then    
              player:addCurrency("guild_smithing", 600); -- mythril pick +1
			  player:PrintToPlayer( "You have gained 600 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(16577,1)) 
			 then    
              player:addCurrency("guild_smithing", 700);--bastard sword
			  player:PrintToPlayer( "You have gained 700 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(16828,1)) 
			 then    
              player:addCurrency("guild_smithing", 800);--bastard sword +1
			  --player:messageSpecial(GP_OBTAINED);
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
