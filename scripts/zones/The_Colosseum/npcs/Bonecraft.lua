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
player:PrintToPlayer("You have "..balance.." Bonecraft GP!");

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
0x6b7,1,    --Harajanite Shell
}	
 
showShop(player, STATIC, stock);
end; 
  -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)
    local payOut = 0;
    local beetle = trade:getItemQty(13323);
	local HQbeetle = trade:getItemQty(13326);
	local carapace = trade:getItemQty(13091);
	local HQcarapaceblue = trade:getItemQty(13063);
	local coral = trade:getItemQty(12508);
	local HQcoral = trade:getItemQty(13850);

 
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
if (beetle > 0 and beetle == trade:getItemCount()) then
payOut = (beetle * 300);
player:addCurrency("guild_bonecraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Bonecraft GP!");
player:tradeComplete();
elseif
 (HQbeetle > 0 and HQbeetle == trade:getItemCount()) then
payOut = (HQbeetle * 400);
player:addCurrency("guild_bonecraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Bonecraft GP!");
player:tradeComplete();
elseif
 (carapace > 0 and carapace == trade:getItemCount()) then
payOut = (carapace * 500);
player:addCurrency("guild_bonecraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Bonecraft GP!");
player:tradeComplete();
elseif
 (HQcarapaceblue > 0 and HQcarapaceblue == trade:getItemCount()) then
payOut = (HQcarapaceblue * 600);
player:addCurrency("guild_bonecraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Bonecraft GP!");
player:tradeComplete();
elseif
 (coral > 0 and coral == trade:getItemCount()) then
payOut = (coral * 700);
player:addCurrency("guild_bonecraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Bonecraft GP!");
player:tradeComplete();
elseif
 (HQcoral > 0 and HQcoral == trade:getItemCount()) then
payOut = (HQcoral * 800);
player:addCurrency("guild_bonecraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Bonecraft GP!");
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
