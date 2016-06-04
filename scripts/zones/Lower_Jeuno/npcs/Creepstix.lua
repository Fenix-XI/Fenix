-----------------------------------
-- Area: Lower Jeuno
-- NPC: Creepstix
-- Standard Merchant NPC
-----------------------------------

require("scripts/globals/shop");
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
require("scripts/zones/Lower_Jeuno/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:PrintToPlayer("Gobbiebag items for sale!");
player:showText(npc,CREEPSTIX_SHOP_DIALOG);

stock = {0x350,1, --Begin Gobbiebag Quest Items
0x28C,1,
0x33A,1,
0x314,1,
0x353,1,
0x28D,1,
0x33B,1,
0x31E,1,
0x357,1,
0x2E9,1,
0x33C,1,
0x31D,1,
0x3A3,1,
0x28E,1,
0x33D,1,
0x328,1,
0x665,1,
0x663,1,
0x664,1,
0x662,1,
0x6CB,1,
0x6CA,1,
0x6CD,1,
0x6CC,1,
0x9E2,1,
0x28F,1,
0x33E,1,
0x32C,1,
0x9E1,1,
0x9E8,1,
0x9E9,1,
0x32D,1,
0x2EB,1,
0x9EA,1,
0xA90,1,
0xAB7,1,
0x6AF,1,
0x5B3,1,
0xA91,1,
0xAB8,1,
0x139f,8160,	-- Scroll of Goblin Gavotte 
	 0x127e,7074,	-- Scroll of Protectra II
	 0x1282,1700,	-- Scroll of Shellra
	 0x13e1,73740,	-- Scroll of Gain-VIT
	 0x13e4,77500,	-- Scroll of Gain-MND
	 0x13e2,85680,	-- Scroll of Gain-AGI
	 0x13e5,81900,	-- Scroll of Gain-CHR
	 0x13e8,73740,	-- Scroll of Boost-VIT
	 0x13eb,77500,	-- Scroll of Boost-MND
	 0x13e9,85680,	-- Scroll of Boost-AGI
	 0x13ec,81900,	-- Scroll of Boost-CHR
	 0x12f1,130378}	-- Scroll of Addle

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



