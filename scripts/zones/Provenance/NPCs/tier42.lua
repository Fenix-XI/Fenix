-----------------------------------
-- Area: Prov
-- NPC: tier4
-- Guild Merchant NPC: Tier4 rewards 
-- @pos 0 0 0 0 zone 
-----------------------------------
package.loaded["scripts/zones/Provenance/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Provenance/TextIDs");


function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
player:PrintToPlayer("Welcome to the Tier 4 Rewards Shop. Please purchase your base item");

stock = {0x5348,1,
0x5358,1,
0x5389,1,
0x515F,1,
0x48BB,1,
0x50EB,1,
0x51FA,1,
0x4A8D,1,
0x44DA,1,
0x48C3,1,
0x49DC,1,
0x410E,1,
0x4174,1,
0x42AD,1,
0x4A8C,1,
0x40C6,1,
0x3F3F,1,
0x497F,1,
0x497A,1,
0x497B,1,
0x3020,1,
0x4973,1,
0x4974,1,
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
