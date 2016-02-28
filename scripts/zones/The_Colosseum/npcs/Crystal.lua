-----------------------------------
-- Area: The Colosseum
-- NPC: Cooking
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
	
player:PrintToPlayer("All the crystals you need for your crafting adventures!");

stock = {0x1008,1,	--Crystal clusters
	0x1009,1,	
	0x100A,1,	
	0x100b,1,	
	0x100c,1,   
	0x100d,1,
	0x100e,1,
	0x100f,1,
	0x1091,1,	--HQ Crystals
	0x108e,1,	
	0x108f,1,	
	0x1090,1,	
	0x1092,1,   
	0x1093,1,
	0x1094,1,
	0x1095,1,}	
 
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
