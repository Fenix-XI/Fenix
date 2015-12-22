-----------------------------------
-- Area: The Colosseum
-- NPC: Leathercraft
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
local balance = player:getCurrency("guild_leathercraft");
	
player:PrintToPlayer("All the Leathercraft materials you need for your adventure!");
player:PrintToPlayer("Trade me a single Terra Crystal to receive Synth Support.");
player:PrintToPlayer("You have "..balance.." of GP points!");

stock = {0x119D,1,	--Distilled Water
0x27B,1,	--Windurstian Tea Leaves
0x1F9,1,	--Sheepskin
0x358,1,	--Rabbit Hide
0x36F,1,	--Karakul Skin
0x354,1,	--Lizard Skin
0x35A,1,	--Wolf Hide
0x359,1,	--Dhalmel Hide
0x668,1,	--Bugard Skin
0x35B,1,	--Ram Skin
0x355,1,	--Raptor Skin
0x84B,1,	--Catoblepas Hide
0x35D,1,	--Tiger Hide
0x35F,1,	--Coeurl Hide
0x867,1,	--Marid Hide
0x45C,1,	--Manticore Hide
0x329B,1,	--Cuir Highboots
0x319B,1,	--Cuir Gloves
0x297,1	--Mythril Sheet
	
	}
 
showShop(player, STATIC, stock);
end; 

  -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)

 
   if (trade:getItemCount() == 1 and trade:hasItemQty(4241,1)) 
        		then
	
 player:addStatusEffect(EFFECT_LEATHERCRAFT_IMAGERY,3,0,480);


else


if (player:getVar('[GUILD]currentGuild') ~= 6 ) then
player:PrintToPlayer( "You are not eligible to earn GP for this guild!");
--end
--if (daily_points <=10000)
--then 
		--player:setVar("[Guild]daily_points", os.date("%j")); -- %M for next minute, %j for next day
		--player:setVar("Wait1DayForYomiOkuri",VanadielDayOfTheYear());
else
		if (trade:hasItemQty(13588,1)) --dhalmel mantle
			 then    
              player:addCurrency("guild_leathercraft", 300);
			  player:PrintToPlayer( "You have gained 300 GP !");
			  --daily_points, +300;
			 player:tradeComplete();

		elseif 
			(trade:hasItemQty(13600,1)) --dhalmel mantle +1
			 then    
              player:addCurrency("guild_leathercraft", 400);
			  player:PrintToPlayer( "You have gained 400 GP !");
			 player:tradeComplete();	
			 
		elseif 
			(trade:hasItemQty(12571,1)) --cuir bouilli
			 then    
              player:addCurrency("guild_leathercraft", 500);
			  player:PrintToPlayer( "You have gained 500 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(13709,1)) -- cuir bouilli +1
			 then    
              player:addCurrency("guild_leathercraft", 600);
			  player:PrintToPlayer( "You have gained 600 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(15890,1)) --marid belt
			 then    
              player:addCurrency("guild_leathercraft", 700);
			  player:PrintToPlayer( "You have gained 700 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(15893,1)) --marid belt +1
			 then    
              player:addCurrency("guild_leathercraft", 800);
			  player:messageSpecial(GP_OBTAINED, option);
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
