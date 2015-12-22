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
balance_bayld = 0;
balance_mweya_plasm = 0;
balance_dominion_notes = 0;
defending_ring = 18000; -- This is how much the upgraded item costs
creed_cuirass = 6500;
creed_armet = 2500;
novio = 6000;
local bayld = player:getCurrency("bayld");
local mweya_plasm = player:getCurrency("mweya_plasm")

if (trade:hasItemQty(11651, 1 )) then 
if (bayld >= defending_ring) then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 18000);
   player:tradeComplete();
   player:addItem(13566,1);
   player:messageSpecial(ITEM_OBTAINED,13566,1);

 else(trade:hasItemQty(11036, 1 )) then 
if (mweya_plasm >= novio) then	
		player:delCurrency("mweya_plasm", 6000);
		player:tradeComplete();
		player:addItem(14808,1);
		player:messageSpecial(ITEM_OBTAINED,14808,1);
		
		
   else
   balance_bayld = defending_ring - bayld;  --variable to determine how much is needed if not enough
   balance_mweya_plasm = novio - mweya_plasm;
   player:PrintToPlayer( "I'm sorry, you need "..balance_bayld.." more Bayld for me to upgrade that armor");
   player:PrintToPlayer( "I'm sorry, you need "..balance_mweya_plasm.." more Bayld for me to upgrade that armor");
   
end



else
player:PrintToPlayer("I can't do anything with that armor...");

end


end
end; 