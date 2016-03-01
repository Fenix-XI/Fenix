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
0x36E,1,	--Karakul Skin
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
0x297,1,	--Mythril Sheet
0x690,1, --HQ bugard skin
	
	}
 
showShop(player, STATIC, stock);
end; 

  -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)
      local payOut = 0;
    local dhalmel = trade:getItemQty(13588);
	local HQdhalmel = trade:getItemQty(13600);
	local cuir = trade:getItemQty(12571);
	local HQcuir = trade:getItemQty(13709);
	local marid = trade:getItemQty(15890);
	local HQmarid = trade:getItemQty(15893);
 
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
if (dhalmel > 0 and dhalmel == trade:getItemCount()) then
payOut = (dhalmel * 300);
player:addCurrency("guild_leathercraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Leathercraft GP!");
player:tradeComplete();
elseif
 (HQdhalmel > 0 and HQdhalmel == trade:getItemCount()) then
payOut = (HQdhalmel * 400);
player:addCurrency("guild_leathercraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Leathercraft GP!");
player:tradeComplete();
elseif
 (cuir > 0 and cuir == trade:getItemCount()) then
payOut = (cuir * 500);
player:addCurrency("guild_leathercraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Leathercraft GP!");
player:tradeComplete();
elseif
 (HQcuir > 0 and HQcuir == trade:getItemCount()) then
payOut = (HQcuir * 600);
player:addCurrency("guild_leathercraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Leathercraft GP!");
player:tradeComplete();
elseif
 (marid > 0 and marid == trade:getItemCount()) then
payOut = (marid * 700);
player:addCurrency("guild_leathercraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Leathercraft GP!");
player:tradeComplete();
elseif
 (HQmarid > 0 and HQmarid == trade:getItemCount()) then
payOut = (HQmarid * 800);
player:addCurrency("guild_leathercraft", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Leathercraft GP!");
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
