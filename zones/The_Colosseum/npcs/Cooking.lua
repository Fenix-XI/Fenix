-----------------------------------
-- Area: The Colosseum
-- NPC: Cooking
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
local balance = player:getCurrency("guild_cooking");
	
player:PrintToPlayer("All the Cooking materials you need for your adventure!");
player:PrintToPlayer("Trade me a single Terra Crystal to receive Synth Support.");
player:PrintToPlayer("You have "..balance.." of GP points!");

stock = {0x11DA,1, --Bird Egg
0x1128,1,	--Saruta Orange
0x111A,1,	--Selbina Milk
0x3A8,1,	--Rock Salt
0x5F2,1,	--Dried Marjoram
0x263,1,	--Rye Flour
0x274,1,	--Cinnamon
0x273,1,	--Maple Sugar
0x110B,1,	--Faerie Apple
0x110A,1,	--Lizard Egg
0x110F,1,	--Batagreens
0x114F,1,	--San d'Orian Grapes
0x262,1,	--San d'Orian Flour
0x1125,1,	--San d'Orian Carrot
0x09A0,1,	--Carbon Dioxide
0x1647,1,	--Uleguerand Milk
0x1112,1,	--Honey
0x1174,1,	--Pamamas
0x026B,1,	--Popoto
0x0612,1,	--Turmeric
0x1123,1,	--Wild Onion
0x027F,1,	--Ronfaure Chestnut
0x110D,1,	--Rolanberry
0x0457,1,	--Gelatin
0x0272,1,	--Black Pepper
0x1109,1,	--Nebimonite
0x1184,1,	--Shall Shell
0x1107,1,	--Dhalmel Meat
0x02C0,1,	--Bamboo Stick
0x1162,1,	--Coral Fungus
0x05F4,1,	--Fresh Mugwort
0x0264,1,	--Kazham Peppers
0x0613,1,	--Coriander
0x1126,1,	--Mithran Tomato
0x05C3,1,	--Curry Powder
0x0279,1,	--Olive Oil
0x026C,1,	--Tarutaru Rice
0x05BF,1,	--Sticky Rice
0x142C,1,	--Ground Wasabi
0x1612,1	--Nopales

	}	
 
showShop(player, STATIC, stock);
end; 
  -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)

 
   if (trade:getItemCount() == 1 and trade:hasItemQty(4241,1)) 
        		then
	
 player:addStatusEffect(EFFECT_COOKING_IMAGERY,3,0,480);


else


if (player:getVar('[GUILD]currentGuild') ~= 9 ) then
player:PrintToPlayer( "You are not eligible to earn GP for this guild!");
--end
--if (daily_points <=10000)
--then 
		--player:setVar("[Guild]daily_points", os.date("%j")); -- %M for next minute, %j for next day
		--player:setVar("Wait1DayForYomiOkuri",VanadielDayOfTheYear());
else
		if (trade:hasItemQty(4489,1)) --vegetable gruel
			 then    
              player:addCurrency("guild_cooking", 300);
			  player:PrintToPlayer( "You have gained 300 GP !");
			  --daily_points, +300;
			 player:tradeComplete();

		elseif 
			(trade:hasItemQty(4534,1)) --vegetable gruel +1
			 then    
              player:addCurrency("guild_cooking", 400);
			  player:PrintToPlayer( "You have gained 400 GP !");
			 player:tradeComplete();	
			 
		elseif 
			(trade:hasItemQty(4413,1))--apple pie 
			 then    
              player:addCurrency("guild_cooking", 500);
			  player:PrintToPlayer( "You have gained 500 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(4320,1))-- apple pie +1
			 then    
              player:addCurrency("guild_cooking", 600);
			  player:PrintToPlayer( "You have gained 600 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(4603,1))-- chamomile tea
			 then    
              player:addCurrency("guild_cooking", 700);
			  player:PrintToPlayer( "You have gained 700 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(4286,1)) -- healing tea
			 then    
              player:addCurrency("guild_cooking", 800);
			  --player:messageSpecial(GP_OBTAINED, option);
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
