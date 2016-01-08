-----------------------------------
-- Area: Prov
-- NPC: tier2
-- Guild Merchant NPC: Tier3 rewards 
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
	
player:PrintToPlayer("Welcome to the Tier 3 Rewards Shop. Please purchase your base item");

stock = {0x2E1A,1,
0x2E44,1,
0x2E87,1,
0x2EAE,1,
0x2CB7,1,
0x2E0D,1,
0x2E3A,1,
0x2E6F,1,
0x2EA2,1,
0x2CAB,1,
0x2E12,1,
0x2E3F,1,
0x2E74,1,
0x2EA7,1,
0x2CB0,1,
0x2D37,1,
0x2D34,1,
0x2D35,1,
0x2ADE,1,
0x2ADD,1,
0x2AAC,1,
0x2AAE,1,
0x2AAD,1,
0x2D67,1,
0x2D60,1,
0x2DB5,1,
0x2DC8,1,
0x2DC9,1,
0x2DB9,1,
0x2DBA,1,
0x4AF8,1,
0x42B7,1,
0x4B56,1,
0x48C0,1,
0x4bE8,1,
0x409C,1,
0x4AE7,1,
0x4A16,1,
0x4D12,1,
0x293F,1,
0x2981,1,
0x6C1C,1,
0x6DC7,1,
0x6D34,1,
0x6E4C,1,
0x6CAC,1,
0x6CAA,1,
0x6DC5,1,
0x6C1A,1,
0x6D32,1,
0x6E4A,1,
0x2F29,1,
0x2F3D,1,
0x2EED,1,
0x2F15,1,
0x2F01,1





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
