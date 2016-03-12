-----------------------------------
-- Area: The Colosseum
-- NPC: Alchemy
-- Guild Merchant NPC: Alchemy
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
player:PrintToPlayer("You have "..balance.." Alchemy GP!");

stock = {0x119D,1,	--Distilled Water
0x027E,1,	--Sage
0x027C,1,	--Chamomile
0x1133,1,	--Yellow Globe
0x115B,1,	--Cobalt Jellyfish
0x0391,1,	--Beeswax
0x027D,1,	--Slime Oil
0x03B8,1,	--Poison Flour
0x026D,1,	--Crying Mustard
0x0392,1,	--Mercury
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
    local payOut = 0;
    local potion1 = trade:getItemQty(4113); -- 31
	local potion2 = trade:getItemQty(4114);--31
	local ether1 = trade:getItemQty(4129);--46
	local ether2 = trade:getItemQty(4130);--46
	local hipot1 = trade:getItemQty(4117);--81
	local hipot2= trade:getItemQty(4118);--81
 
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
if (potion1 > 0 and potion1 == trade:getItemCount()) then
payOut = (potion1 * 300);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
player:tradeComplete();
elseif
 (potion2 > 0 and potion2 == trade:getItemCount()) then
payOut = (potion2 * 400);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
player:tradeComplete();
elseif
 (ether1 > 0 and ether1 == trade:getItemCount()) then
payOut = (ether1 * 500);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
player:tradeComplete();
elseif
 (ether2 > 0 and ether2 == trade:getItemCount()) then
payOut = (ether2 * 600);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
player:tradeComplete();
elseif
 (hipot1 > 0 and hipot1 == trade:getItemCount()) then
payOut = (hipot1 * 700);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
player:tradeComplete();
elseif
 (hipot2 > 0 and hipot2 == trade:getItemCount()) then
payOut = (hipot2 * 800);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
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
-----------------------------------
-- Area: The Colosseum
-- NPC: Alchemy
-- Guild Merchant NPC: Alchemy
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
player:PrintToPlayer("You have "..balance.." Alchemy GP!");

stock = {0x119D,1,	--Distilled Water
0x027E,1,	--Sage
0x027C,1,	--Chamomile
0x1133,1,	--Yellow Globe
0x115B,1,	--Cobalt Jellyfish
0x0391,1,	--Beeswax
0x027D,1,	--Slime Oil
0x03B8,1,	--Poison Flour
0x026D,1,	--Crying Mustard
0x0392,1,	--Mercury
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
    local payOut = 0;
    local poisonKukuri = trade:getItemQty(16478);
	local HQkukuri = trade:getItemQty(16489);
	local fire = trade:getItemQty(16543);
	local FlameSword = trade:getItemQty(16621);
	local holyWand = trade:getItemQty(17085);
	local HQholyWand = trade:getItemQty(17434);
 
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
if (poisonKukuri > 0 and poisonKukuri == trade:getItemCount()) then
payOut = (poisonKukuri * 300);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
player:tradeComplete();
elseif
 (HQkukuri > 0 and HQkukuri == trade:getItemCount()) then
payOut = (HQkukuri * 400);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
player:tradeComplete();
elseif
 (fire > 0 and fire == trade:getItemCount()) then
payOut = (fire * 500);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
player:tradeComplete();
elseif
 (FlameSword > 0 and FlameSword == trade:getItemCount()) then
payOut = (FlameSword * 600);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
player:tradeComplete();
elseif
 (holyWand > 0 and holyWand == trade:getItemCount()) then
payOut = (holyWand * 700);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
player:tradeComplete();
elseif
 (HQholyWand > 0 and HQholyWand == trade:getItemCount()) then
payOut = (HQholyWand * 800);
player:addCurrency("guild_alchemy", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Alchemy GP!");
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
