-----------------------------------
-- Area: The Colosseum
-- NPC: CORAF1 
-- Guild Merchant NPC: CORAF1
-- @pos 0 0 0 0 zone 71
-----------------------------------
package.loaded["scripts/zones/The_Colosseum/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/The_Colosseum/TextIDs");

function onTrigger(player,npc,trade)
	
player:PrintToPlayer("Trade me 2 HQ Antlion Jaws and you shall be rewarded!!");

end;
  
  -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)

   --if (balance >= 2500 and trade:getItemCount() == 2 and trade:hasItemQty(2185,1) and
      --trade:hasItemQty(19203,1)) 
        --		then
 
   if (trade:getItemCount() == 2 and trade:hasItemQty(1864,2)) 
       		then
	 player:addCurrency("mweya_plasm", 50);
   player:tradeComplete();
   player:PrintToPlayer("You Obtained 50 Mweya Plasm!");
end



end; 