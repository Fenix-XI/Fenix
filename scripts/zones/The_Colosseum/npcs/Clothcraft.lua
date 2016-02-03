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
player:PrintToPlayer("You have "..balance.." Clothcraft GP!");
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
      local payOut = 0;
    local heko = trade:getItemQty(13204);
	local HQheko = trade:getItemQty(13190);
	local wool = trade:getItemQty(12723);
	local HQwool = trade:getItemQty(12783);
	local silk = trade:getItemQty(12612);
	local HQsilk = trade:getItemQty(13777);

 
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
if (heko > 0 and heko == trade:getItemCount()) then
payOut = (heko * 300);
player:addCurrency("guild_clothcraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Clothcraft GP!");
player:tradeComplete();
elseif
 (HQheko > 0 and HQheko == trade:getItemCount()) then
payOut = (HQheko * 400);
player:addCurrency("guild_clothcraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Clothcraft GP!");
player:tradeComplete();
elseif
 (wool > 0 and wool == trade:getItemCount()) then
payOut = (wool * 500);
player:addCurrency("guild_clothcraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Clothcraft GP!");
player:tradeComplete();
elseif
 (HQwool > 0 and HQwool == trade:getItemCount()) then
payOut = (HQwool * 600);
player:addCurrency("guild_clothcraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Clothcraft GP!");
player:tradeComplete();
elseif
 (silk > 0 and silk == trade:getItemCount()) then
payOut = (silk * 700);
player:addCurrency("guild_clothcraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Clothcraft GP!");
player:tradeComplete();
elseif
 (HQsilk > 0 and HQsilk == trade:getItemCount()) then
payOut = (HQsilk * 800);
player:addCurrency("guild_clothcraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Clothcraft GP!");
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
