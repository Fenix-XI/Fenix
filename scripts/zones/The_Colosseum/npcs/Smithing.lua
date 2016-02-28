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
    local payOut = 0;
    local bilbo = trade:getItemQty(16512);
	local HQbilbo = trade:getItemQty(16632);
	local mythril = trade:getItemQty(16651);
	local HQmythril = trade:getItemQty(16670);
	local bastard = trade:getItemQty(16577);
	local HQbastard = trade:getItemQty(16828);
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
if (bilbo > 0 and bilbo == trade:getItemCount()) then
payOut = (bilbo * 300);
player:addCurrency("guild_smithing", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Smithing GP!");
player:tradeComplete();
elseif
 (HQbilbo > 0 and HQbilbo == trade:getItemCount()) then
payOut = (HQbilbo * 400);
player:addCurrency("guild_smithing", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Smithing GP!");
player:tradeComplete();
elseif
 (mythril > 0 and mythril == trade:getItemCount()) then
payOut = (mythril * 500);
player:addCurrency("guild_smithing", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Smithing GP!");
player:tradeComplete();
elseif
 (HQmythril > 0 and HQmythril == trade:getItemCount()) then
payOut = (HQmythril * 600);
player:addCurrency("guild_smithing", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Smithing GP!");
player:tradeComplete();
elseif
 (bastard > 0 and bastard == trade:getItemCount()) then
payOut = (bastard * 700);
player:addCurrency("guild_smithing", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Smithing GP!");
player:tradeComplete();
elseif
 (HQbastard > 0 and HQbastard == trade:getItemCount()) then
payOut = (HQbastard * 800);
player:addCurrency("guild_smithing", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Smithing GP!");
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
