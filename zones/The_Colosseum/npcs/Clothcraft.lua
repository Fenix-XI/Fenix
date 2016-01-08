-----------------------------------
-- Area: The Colosseum
-- NPC: Clothcraft
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
local balance = player:getCurrency("guild_weaving");
	
player:PrintToPlayer("All the Clothcraft materials you need for your adventure!");
player:PrintToPlayer("Trade me a single Terra Crystal to receive Synth Support.");
player:PrintToPlayer("You have "..balance.." of GP points!");
stock = {0x0331,1,	--Grass Thread
0x332,1,	--Cotton Thread
0x724,1,	--Red Grass Thread
0x343,1,	--Flax Flower
0x333,1,	--Linen Thread
0x334,1,	--Wool Thread
0x8F8,1,	--Mohbwa Thread
0x336,1,	--Silver Thread
0x330,1,	--Silk Thread
0x8EF,1,	--Karakul Thread
0x337,1,	--Gold Thread
0x4FE,1,	--Twinthread
0x335,1,	--Rainbow Thread
0x673,1,	--Moblin Thread
0x6A4,1,	--Bloodthread
0x6E9,1,	--Galateia
0x46C,1,	--Raxa
0x48B,1,	--Manticore Hair
0x348,1,	--Chocobo Feather
0x34D,1,	--Black Chocobo Feather
0x340,1,	--Sheep Wool
0x34F,1,	--Bird Feather
0x347,1,	--Crawler Cocoon
0x87D,1,	--Wamoura Cocoon
0x346,1,	--Spider Web
0x864,1,	--Puk Wing
0x921,1,	--Wamoura Hair
0x34B,1		--Giant Bird Plume
}	
	
 
showShop(player, STATIC, stock);
end; 


  -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)
  

 
   if (trade:getItemCount() == 1 and trade:hasItemQty(4241,1)) 
        		then
	
 player:addStatusEffect(EFFECT_CLOTHCRAFT_IMAGERY,3,0,480);


else
if (player:getVar('[GUILD]currentGuild') ~= 5 ) then
player:PrintToPlayer( "You are not eligible to earn GP for this guild!");
--end
--if (daily_points <=10000)
--then 
		--player:setVar("[Guild]daily_points", os.date("%j")); -- %M for next minute, %j for next day
		--player:setVar("Wait1DayForYomiOkuri",VanadielDayOfTheYear());
else
		if (trade:hasItemQty(13204,1)) --heko obi
			 then    
              player:addCurrency("guild_weaving", 300);
			  player:PrintToPlayer( "You have gained 300 GP !");
			  --daily_points, +300;
			 player:tradeComplete();

		elseif 
			(trade:hasItemQty(13190,1)) --heko obi +1
			 then    
              player:addCurrency("guild_weaving", 400);
			  player:PrintToPlayer( "You have gained 400 GP !");
			 player:tradeComplete();	
			 
		elseif 
			(trade:hasItemQty(12723,1)) --wool bracers
			 then    
              player:addCurrency("guild_weaving", 500);
			  player:PrintToPlayer( "You have gained 500 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(12783,1)) --wool bracers +1
			 then    
              player:addCurrency("guild_weaving", 600);
			  player:PrintToPlayer( "You have gained 600 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(12612,1)) --silk cloak
			 then    
              player:addCurrency("guild_weaving", 700);
			  player:PrintToPlayer( "You have gained 700 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(13777,1)) --silk cloak +1
			 then    
              player:addCurrency("guild_weaving", 800);
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
