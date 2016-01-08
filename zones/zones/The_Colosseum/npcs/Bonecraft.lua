-----------------------------------
-- Area: The Colosseum
-- NPC: Bonecraft
-- Guild Merchant NPC: Bonecraft Guild 
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
local balance = player:getCurrency("guild_bonecraft");
	
player:PrintToPlayer("All the Bonecraft materials you need for your adventure!");
player:PrintToPlayer("Trade me a single Terra Crystal to receive Synth Support.");
player:PrintToPlayer("You have "..balance.." of GP points!");

stock = {0x0370,1,	--Bone Chip
0x37B,1,	--Bat Wing
0x378,1,	--Seashell
0x360,1,	--Fish Scales
0x372,1,	--Sheep Tooth
0x379,1,	--Beetle Shell
0x37E,1,	--Beetle Jaw
0x37D,1,	--Giant Femur
0x37F,1,	--Ram Horn
0x371,1,	--Crab Shell
0x380,1,	--Scorpion Shell
0x377,1,	--Coral Fragment
0x386,1,	--Demon Horn
0x318,1,	--Pearl
0x319,1,	--Black Pearl
0x6B3,1,	--Vivified Coral
0x362,1,	--Wyvern Scales
0x86D,1,	--Imp Horn
0x87B,1,	--Colibri Beak
0x376,1,	--Demon Skull
0x155A,1,	--Trumpet Shell
0xCC6,1,	--High-Quality Pugil Scale
0x632,1,	--Titanictus Shell
0x520,1,	--Angel Skin
}	
 
showShop(player, STATIC, stock);
end; 
  -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)

 
   if (trade:getItemCount() == 1 and trade:hasItemQty(4241,1)) 
        		then
	
 player:addStatusEffect(EFFECT_BONECRAFT_IMAGERY,3,0,480);


else
if (player:getVar('[GUILD]currentGuild') ~= 7 ) then
player:PrintToPlayer( "You are not eligible to earn GP for this guild!");
--end
--if (daily_points <=10000)
--then 
		--player:setVar("[Guild]daily_points", os.date("%j")); -- %M for next minute, %j for next day
		--player:setVar("Wait1DayForYomiOkuri",VanadielDayOfTheYear());
else
		if (trade:hasItemQty(13323,1)) --beetle earring
			 then    
              player:addCurrency("guild_bonecraft", 300);
			  player:PrintToPlayer( "You have gained 300 GP !");
			  --daily_points, +300;
			 player:tradeComplete();

		elseif 
			(trade:hasItemQty(13326,1)) --beetle earring
			 then    
              player:addCurrency("guild_bonecraft", 400);
			  player:PrintToPlayer( "You have gained 400 GP !");
			 player:tradeComplete();	
			 
		elseif 
			(trade:hasItemQty(13091,1)) --carapace gorget
			 then    
              player:addCurrency("guild_bonecraft", 500);
			  player:PrintToPlayer( "You have gained 500 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(13063,1)) -- blue gorget
			 then    
              player:addCurrency("guild_bonecraft", 600);
			  player:PrintToPlayer( "You have gained 600 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(12508,1)) --coral hairpin
			 then    
              player:addCurrency("guild_bonecraft", 700);
			  player:PrintToPlayer( "You have gained 700 GP !");
			 player:tradeComplete();			 
			 
		elseif 
			(trade:hasItemQty(13850,1)) --coral hairpin +1
			 then    
              player:addCurrency("guild_bonecraft", 800);
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
