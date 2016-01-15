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
	
player:PrintToPlayer("Welcome to the Tier 3 Rewards Shop. Please purchase your base item!");

stock = {0x4817,1,
0x51B1,1,
0x6E43,1,
0x6C13,1,
0x6D2B,1,
0x6CA3,1,
0x6DBE,1,
0x52C2,1,
0x2D77,1,
0x2907,1,
0x6DC3,1,
0x6D30,1,
0x6CA8,1,
0x6C18,1,
0x6E48,1,
0x2D53,1,
0x2D54,1,
0x2D4B,1,
0x2DBB,1,
0x4ADC,1,
0x2DD1,1,
0x49CB,1,
0x4958,1,
0x4B52,1,
0x2D4E,1,
0x2F08,1,
0x2EF4,1,
0x5188,1,
0x3800,1,
0x2DC4,1,
0x2D4F,1,
0x2D02,1,
0x481F,1,
0x537F,1,
0x2F47,1,
0x2F1F,1,
0x2EF7,1,
0x2F0B,1,
0x2D50,1,
0x2F33,1,
0x2D75,1,
0x42AA,1,
0x2D51,1,
0x2A9F,1,
0x28F4,1,
0x6C19,1,
0x6DC4,1,
0x6D31,1,
0x6CA9,1,
0x6E49,1,
0x2D22,1,
0x28EA,1,
0x2A95,1,
0x6D2C,1,
0x6C14,1,
0x6DBF,1,
0x6E44,1,
0x6CA4,1,
0x48C2,1,
0x6C9F,1,
0x6C0F,1,
0x6E3F,1,
0x6DBA,1,
0x6D27,1,
0x2D47,1,
0x6DC0,1,
0x6C15,1,
0x6D2D,1,
0x6E45,1,
0x6CA5,1,
0x42B6,1,
0x4B70,1,
0x6CA2,1,
0x6D2A,1,
0x6C12,1,
0x6E42,1,
0x6DBD,1,
0x49D7,1,
0x28EF,1,
0x2A9A,1,
--THESE BELOW ARE NOT IN THE GAME WILL MAKE A NEW NPC 80 is the max items per NPC



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
