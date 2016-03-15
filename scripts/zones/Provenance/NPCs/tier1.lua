-----------------------------------
-- Area: Prov
-- NPC: tier1
-- Guild Merchant NPC: Tier1 rewards 
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
	
player:PrintToPlayer("Welcome to the Tier 1 Rewards Shop. Please purchase your base item!");

stock = {0x2DD3,1,
0x49CC,1,
0x2EEE,1,
0x2F02,1,
0x2F2A,1,
0x2F16,1,
0x2F3E,1,
0x2D83,1,
0x2EF0,1,
0x2DBF,1,
0x2F04,1,
0x2F18,1,
0x2F40,1,
0x2F2C,1,
0x2F27,1,
0x2EFF,1,
0x2F13,1,
0x3F4B,1,
0x2EEB,1,
0x2F3B,1,
0x49D0,1,
0x2F30,1,
0x2F44,1,
0x2F08,1,
0x2F1C,1,
0x2EF4,1,
0x2DD7,1,
0x49D1,1,
0x2CF5,1,
0x2D85,1,
0x48BC,1,
0x2DD2,1,
0x36DA,1,
0x2F38,1,
0x2F24,1,
0x2EFC,1,
0x2EE8,1,
0x2F10,1,
0x2F42,1,
0x2F2E,1,
0x2F06,1,
0x2EF2,1,
0x2F1A,1,
0x2F39,1,
0x2EE9,1,
0x2EFD,1,
0x2F11,1,
0x2F25,1,
0x484E,1,
0x49D2,1,
0x4A16,1,
0x4A6A,1,
0x3039,1,
0x4AC2,1,
0x4AE4,1,
0x4B70,1,
0x49BD,1,
0x43BD,1
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

-----------------------------------
-- onTrade
-----------------------------------

  function onTrade(player,npc,trade)

 
   if trade:getItemCount() == 1 and trade:hasItemQty(1406,1) --Seal of Byakko 
        		then
	 player:addCurrency("bayld", 150);
	 player:PrintToPlayer("Obtained 150 Bayld!!!");
   player:tradeComplete();
 
   elseif trade:getItemCount() == 1 and trade:hasItemQty(1404,1) --Seal of Genbu
        		then
	 player:addCurrency("bayld", 150);
	 	 player:PrintToPlayer("Obtained 150 Bayld!!!");
   player:tradeComplete();

   elseif trade:getItemCount() == 1 and trade:hasItemQty(1405,1) --Seal of Seiryu
        		then
	 player:addCurrency("bayld", 150);
	 	 player:PrintToPlayer("Obtained 150 Bayld!!!");
   player:tradeComplete();
   
   elseif trade:getItemCount() == 1 and trade:hasItemQty(1407,1) --Seal of Suzaku
        		then
	 player:addCurrency("bayld", 150);
	 	 player:PrintToPlayer("Obtained 150 Bayld!!!");
   player:tradeComplete();

   end
	
end;