-----------------------------------
-- Area: Prov
-- NPC: tier2
-- Guild Merchant NPC: Tier2 rewards 
-- @pos 0 0 0 0 zone 
-----------------------------------
package.loaded["scripts/zones/Provenance/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Provenance/TextIDs");


function onTrade(player,npc,trade)
    local payOut = 0;
    local HQeuvhi = trade:getItemQty(1899);
	local HQaern = trade:getItemQty(1900);
	local HQhpemde = trade:getItemQty(1871);
	local HQxzomit = trade:getItemQty(1855);
	local HQphuabo = trade:getItemQty(1852);
if (HQeuvhi > 0 and HQeuvhi == trade:getItemCount()) then
payOut = (HQeuvhi * 50);
player:addCurrency("mweya_plasm", payOut);
player:PrintToPlayer( "You earned " ..payOut.." of Plasm");
player:tradeComplete();
end
if (HQaern > 0 and HQaern == trade:getItemCount()) then
payOut = (HQaern * 50);
player:addCurrency("mweya_plasm", payOut);
player:PrintToPlayer( "You earned " ..payOut.." of Plasm");
player:tradeComplete();
end
if (HQhpemde > 0 and HQhpemde == trade:getItemCount()) then
payOut = (HQhpemde * 50);
player:addCurrency("mweya_plasm", payOut);
player:PrintToPlayer( "You earned " ..payOut.." of Plasm");
player:tradeComplete();
end
if (HQxzomit > 0 and HQxzomit == trade:getItemCount()) then
payOut = (HQxzomit * 50);
player:addCurrency("mweya_plasm", payOut);
player:PrintToPlayer( "You earned " ..payOut.." of Plasm");
player:tradeComplete();
end
if (HQphuabo > 0 and HQphuabo == trade:getItemCount()) then
payOut = (HQphuabo * 50);
player:addCurrency("mweya_plasm", payOut);
player:PrintToPlayer( "You earned " ..payOut.." of Plasm");
player:tradeComplete();
end
end;
-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
player:PrintToPlayer("Welcome to the Tier 2 Rewards Shop. Please purchase your base item!");
player:PrintToPlayer("Trading me HQ Sea organs will net you 50 Plasm each. I only accept the same type at a time!");
stock = {0x2D76,1,
0x4868,1,
0x3F84,1,
0x42B5,1,
0x2B19,1,
0x41CB,1,
0x2B1C,1,
0x3DF1,1,
0x2AB0,1,
0x2AAF,1,
0x48C1,1,
0x3F4F,1,
0x4589,1,
0x2D6B,1,
0x2AB5,1,
0x5044,1,
0x4857,1,
0x4b3c,1,
0x49DD,1,
0x2D64,1,
0x2D6A,1,
0x3F83,1,
0x3E57,1,
0x2D69,1,
0x49BB,1,
0x3DF2,1,
0x458E,1,
0x4065,1,
0x4AC7,1,
0x6CA8,1,
0x6C18,1,
0x2D77,1,
0x6C19,1,
0x6DC4,1,
0x6D31,1,
0x6CA9,1,
0x6E49,1,
0x6C9F,1,
0x6CA5,1,
0x6CA2,1,
0x6C12,1,
0x2F08,1,
0x2EF4,1,
0x6C1C,1,
0x6DC7,1,
0x6D34,1,
0x6E4C,1,
0x6CAC,1,
0x6CAA,1,
0x2F01,1,
0x299D,1,
0x2CF2,1,
0x2F29,1,
0x48C4,1,
0x2CAD,1,
0x2B1F,1,
0x2B1D,1,
0x2DB6,1,
0x30C9,1,
0x48C6,1,
0x4881,1,
0x6CAA,1,
0x6C9F,1,
0x6CA5,1
	}	
 
showShop(player, STATIC, stock);
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
