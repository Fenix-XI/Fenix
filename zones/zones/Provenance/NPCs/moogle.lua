-----------------------------------
-- Area: The Colosseum
-- NPC: Bonecraft
-- Guild Merchant NPC: Bonecraft Guild 
-- @pos 0 0 0 0 zone 71
-----------------------------------

function onTrigger(player,npc)

player:PrintToPlayer("Points rewards Items can be obtained here. Please check the forums");
player:PrintToPlayer("For EXACT items needed and currency. NO REFUNDS!");

end;
function onTrade(player,npc,trade)--Defending Ring
balance = 0;
defending_ring = 18000; -- This is how much the upgraded item costs
creed_cuirass = 6500;
creed_armet = 2500;
local bayld = player:getCurrency("bayld");

if (trade:hasItemQty(10475, 1 )) then 
if (bayld >= defending_ring) then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 18000);
   player:tradeComplete();
   player:addItem(13556,1);
   player:messageSpecial(ITEM_OBTAINED,13556,1);
  
   else
   balance = defending_ring - bayld;  --variable to determine how much is needed if not enough
   player:PrintToPlayer( "I'm sorry, you need "..balance.." more Bayld for me to upgrade that armor");
end
end

else
player:PrintToPlayer("I can't do anything with that armor...");

end

end;

end; 