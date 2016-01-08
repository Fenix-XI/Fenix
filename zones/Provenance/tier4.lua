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

stock = {0x6BBC,1,
0x6ECF,1,
0x4975,1,
0x6ED1,1,
0x6B86,1,
0x6F3C,1,
0x6595,1,
0x2838,1,
0x6B8B,1,
0x659E,1,
0x6F6A,1,
0x2D5C,1,
0x6630,1,
0x2A11,1,
0x2DB2,1,
0x2837,1,
0x2D5A,1,
0x2A0E,1,
0x2B2E,1,
0x2A0F,1,
0x2A3F,1,
0x6B81,1,
0x289C,1,
0x482F,1,
0x6DA4,1,
0x29A1,1,
0x29B5,1,
0x29DD,1,
0x29C9,1,
0x29F1,1,
0x68A3,1,
0x2E6E,1,
0x2F41,1,
0x6BD4,1,
0x6FBE,1,
0x2ADF,1,
0x2A4D,1,
0x32C9,1,
0x2948,1,
0x2916,1,
0x29B0,1,
0x299C,1,
0x29C4,1,
0x29D8,1,
0x6FD8,1,
0x6BD6,1,
0x2870,1,
0x2AFF,1,
0x3801,1,
0x2A51,1,
0x299B,1,
0x29D9,1,
0x29EB,1,
0x29C3,1,
0x29EC,1,
0x2EB2,1,
0x28CD,1,
0x3705,1,
0x299D,1,
0x29F8,1,
0x2B05,1,
0x35DF,1,
0x2E16,1,
0x2C62,1,
0x29DC,1,
0x29A0,1,
0x29C8,1,
0x29F0,1,
0x29B4,1,
0x2CF2,1,
0x2C5F,1,
0x2A52,1,
0x4991,1
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
