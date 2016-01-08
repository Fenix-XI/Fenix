-----------------------------------
-- Area: Port Jeuno
-- NPC: Shami
-- Orb Seller (BCNM)
-- @pos -14 8 44 246
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/zones/Port_Jeuno/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------
function onTrade(player,npc,trade)
if (trade:getItemCount() == 1 and trade:hasItemQty(2955,1)) 
       		then
	  	   player:addItem(1126,2);
   player:messageSpecial(ITEM_OBTAINED,1126,2);
   player:tradeComplete();
   elseif(trade:getItemCount() == 1 and trade:hasItemQty(2956,1)) 
       		then
	 	   player:addItem(1127,2);
   player:messageSpecial(ITEM_OBTAINED,1127,2);
   player:tradeComplete();
  
end
  
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:PrintToPlayer("Trade me 2 Kindred Crests for 1 Beastmen Seal; or 2 High Kindred Crests for 1 Kindred Seal!");



end;