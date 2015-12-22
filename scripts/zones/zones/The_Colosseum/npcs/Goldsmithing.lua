-----------------------------------
-- Area: The Colosseum
-- NPC: Goldsmithing
-- Guild Merchant NPC: Woodworking Guild 
-- @pos 0 0 0 0 zone 71
-----------------------------------
package.loaded["scripts/zones/The_Colosseum/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/globals/crafting");
require("scripts/zones/The_Colosseum/TextIDs");


function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local balance = player:getCurrency("guild_goldsmithing");
local Previous_Points = player:getCurrency("guild_goldsmithing");
player:PrintToPlayer("All the Goldsmithing materials you need for your adventure!");
player:PrintToPlayer("Trade me a single Terra Crystal to receive Synth Support.");
player:PrintToPlayer("You have "..balance.." of GP points!");
--player:PrintToPlayer("I now do GP! Trade me Test Item for your current Skill");
--player:PrintToPlayer("You have "..Previous_Points.." points accumulated today!");
stock = {0x0280,1,	--Copper Ore
	0x0282,1,	--Zinc Ore
	0x02EE,1,	--Silver Beastcoin
0x2E0,1,	--Silver Ore
0x2ED,1,	--Mythril Beastcoin
0x284,1,	--Mythril Ore
0x2EC,1,	--Gold Beastcoin
0x2E1,1,	--Gold Ore
0x4C9,1,	--Gold Nugget
0x901,1,	--Auric Sand
0x2E2,1,	--Platinum Ore
0x4CB,1,	--Platinum Nugget
0x742,1,	--Moblumin Ingot
0x744,1,	--Moblin Putty
0x32A,1,	--Fluorite
0x324,1,	--Spinel
0x2E3,1,	--Orichalcum Ore
0x4E7,1,	--Fire Ore
0x4E8,1,	--Ice Ore
0x4E9,1,	--Wind Ore
0x4EA,1,	--Earth Ore
0x4EB,1,	--Lightning Ore
0x4EC,1,	--Water Ore
0x4ED,1,	--Light Ore
0x4EE,1	--Dark Ore

	}	
 
showShop(player, STATIC, stock);
end; 
  -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)
   if (trade:getItemCount() == 1 and trade:hasItemQty(4241,1)) then	
 player:addStatusEffect(EFFECT_GOLDSMITHING_IMAGERY,3,0,480);
else
--		if (trade:hasItemQty(12496,1)) and (previous_points - balance and balance<=9000)

if (player:getVar('[GUILD]currentGuild') ~= 4 ) then
player:PrintToPlayer( "You are not eligible to earn GP for this guild!");
--end
--if (daily_points <=10000)
--then 
		--player:setVar("[Guild]daily_points", os.date("%j")); -- %M for next minute, %j for next day
		--player:setVar("Wait1DayForYomiOkuri",VanadielDayOfTheYear());
else
		if (trade:hasItemQty(12495,1)) --silver hairpin
			 then    
              player:addCurrency("guild_goldsmithing", 300);
			  player:PrintToPlayer( "You have gained 300 GP !");
			  --daily_points, +300;
			 player:tradeComplete();

		elseif 
			(trade:hasItemQty(12531,1)) --silver hairpin +1
			 then    
              player:addCurrency("guild_goldsmithing", 400);
			  player:PrintToPlayer( "You have gained 400 GP !");
			 player:tradeComplete();	
			 
		elseif 
			(trade:hasItemQty(13446,1))--mythril ring  
			 then    
              player:addCurrency("guild_goldsmithing", 500);
			  player:PrintToPlayer( "You have gained 500 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(13519,1))-- mythril hairpin +1
			 then    
              player:addCurrency("guild_goldsmithing", 600);
			  player:PrintToPlayer( "You have gained 600 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(13125,1))-- Torque
			 then    
              player:addCurrency("guild_goldsmithing", 700);
			  player:PrintToPlayer( "You have gained 700 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(13126,1)) -- Torque +1
			 then    
              player:addCurrency("guild_goldsmithing", 800);
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
