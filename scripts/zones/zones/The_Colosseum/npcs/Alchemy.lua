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


function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local balance = player:getCurrency("guild_alchemy");
	
player:PrintToPlayer("All the Alchemy crap you need for your adventure!");
player:PrintToPlayer("Trade me a single Terra Crystal to recieve Synth Support");
player:PrintToPlayer("You have "..balance.." of GP points!");

stock = {0x119D,1,	--Distilled Water
0x027E,1,	--Sage
0x027C,1,	--Chamomile
0x1133,1,	--Yellow Globe
0x115B,1,	--Cobalt Jellyfish
0x0391,1,	--Beeswax
0x027D,1,	--Slime Oil
0x03B8,1,	--Poison Flour
0x026D,1,	--Crying Mustard
0x0266,1,	--Mercury
0x03A9,1,	--Animal Glue
0x03A5,1,	--Glass Fiber
0x03B3,1,	--Firesand
0x03A0,1,	--Bomb Ash
0x0454,1,	--Sulfur
0x03BB,1,	--Golem Shard
0x048D,1,	--Doll Shard
0x0398,1,	--Malboro Vine
0x0300,1,	--Flint Stone
0x03A3,1,	--Cermet Chunk
0x039A,1,	--Bat Wing
0x1160,1,	--Puffball
0x03AC,1,	--Revival Tree Root
0x03B9,1,	--Treant Bulb
0x03A7,1,	--Ahriman Wing
0x03A2,1,	--Beastman Blood
0x051E,1,	--Platinum Leaf
0x03AE,1,	--Philosopher’s Stone
0x0464,1,	--Wyvern Wing
0x0397,1	--Boyahda Moss

	}	
 
showShop(player, STATIC, stock);
end; 

  -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)

 
   if (trade:getItemCount() == 1 and trade:hasItemQty(4241,1)) 
        		then
	
 player:addStatusEffect(EFFECT_ALCHEMY_IMAGERY,3,0,480);


else

if (player:getVar('[GUILD]currentGuild') ~= 8 ) then
player:PrintToPlayer( "You are not eligible to earn GP for this guild!");
--end
--if (daily_points <=10000)
--then 
		--player:setVar("[Guild]daily_points", os.date("%j")); -- %M for next minute, %j for next day
		--player:setVar("Wait1DayForYomiOkuri",VanadielDayOfTheYear());
else
		if (trade:hasItemQty(16478,1)) --poison kukuri
			 then    
              player:addCurrency("guild_alchemy", 300);
			  player:PrintToPlayer( "You have gained 300 GP !");
			  --daily_points, +300;
			 player:tradeComplete();

		elseif 
			(trade:hasItemQty(16489,1)) --poison kukuri+1
			 then    
              player:addCurrency("guild_alchemy", 400);
			  player:PrintToPlayer( "You have gained 400 GP !");
			 player:tradeComplete();	
			 
		elseif 
			(trade:hasItemQty(16543,1))--fire sword 
			 then    
              player:addCurrency("guild_alchemy", 500);
			  player:PrintToPlayer( "You have gained 500 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(16621,1))-- flame sword
			 then    
              player:addCurrency("guild_alchemy", 600);
			  player:PrintToPlayer( "You have gained 600 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(17085,1))-- holy wand 
			 then    
              player:addCurrency("guild_alchemy", 700);
			  player:PrintToPlayer( "You have gained 700 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(17434,1)) -- holy wand +1
			 then    
              player:addCurrency("guild_alchemy", 800);
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
