-----------------------------------
-- Area: Southern San d'Oria
-- NPC: Gondebaud
-- Standard Info NPC
-----------------------------------


package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
require("scripts/zones/Southern_San_dOria/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
--[[
    local payOut = 0;
    local byne = trade:getItemQty(1455);
	local bigByne = trade:getItemQty(1456);
	local oPiece = trade:getItemQty(1452);
	local mPiece = trade:getItemQty(1453);
	local tShell = trade:getItemQty(1449);
	local jShell = trade:getItemQty(1450);
	
if (byne >= 2 and byne == trade:getItemCount()) then
payOut = (byne /2);
player:addItem(1452,payOut);
player:PrintToPlayer( "You recieved " ..payOut.." of Ordelle Bronzepieces for your trade! ");
player:tradeComplete();
	elseif
 (bigByne >= 2 and bigByne == trade:getItemCount()) then
payOut = (bigByne /2);
player:addItem(1453,payOut);
player:PrintToPlayer( "You traded for " ..payOut.." of Montiont Silverpiece's  for your trade! ");
player:tradeComplete();
	elseif
 (tShell >= 2 and tShell == trade:getItemCount()) then
payOut = (tShell /2);
player:addItem(1452,payOut);
player:PrintToPlayer( "You recieved " ..payOut.." of Ordelle Bronzepieces for your trade!");
player:tradeComplete();
	elseif
 (jShell >= 2 and jShell == trade:getItemCount()) then
payOut = (jShell /2);
player:addItem(1453,payOut);
player:PrintToPlayer( "You recieved " ..payOut.." of Montiont Silverpiece's  for your trade!");
player:tradeComplete();
end
--]]
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:PrintToPlayer("I convert Windurst or Bastok Ancient Currency to San d'Oria Ancient Currency at 2:1 ratio!")
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



