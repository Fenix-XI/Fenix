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
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
player:PrintToPlayer("Welcome to the Tier 2 Rewards Shop. Please purchase your base item");

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
0x4AC7,1

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
