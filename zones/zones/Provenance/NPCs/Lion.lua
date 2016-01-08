-----------------------------------
-- Area: The Colosseum
-- NPC: Wood
-- Guild Merchant NPC: Woodworking Guild 
-- @pos 0 0 0 0 zone 71
-----------------------------------
package.loaded["scripts/zones/Provenance/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Provenance/TextIDs");


function onTrade(player,npc,trade)
balance = 0;
jerkin = 17500; --This is how much the upgraded item costs
local is = player:getCurrency("imperial_standing");
if (trade:hasItemQty( 550, 1 )) then   
   if (is >= jerkin) then    --This is a check to see if the player has enough plasm
              player:delCurrency("imperial_standing", 17500);
   player:tradeComplete();
   player:addItem(16555,1);
   player:messageSpecial(ITEM_OBTAINED,16555,1);
   else
   balance = jerkin - is;  --variable to determine how much is needed if not enough
   player:PrintToPlayer( "I'm sorry, you need "..balance.." more Plasm for me to upgrade that armor");
end
else
player:PrintToPlayer("I can't do anything with that armor...");
end



end; 

-----------------------------------
-- onTrigger Action
-----------------------------------



