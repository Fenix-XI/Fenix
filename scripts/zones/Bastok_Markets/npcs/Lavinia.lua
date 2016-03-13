-----------------------------------
-- Area: Bastok Markets
-- NPC: Lavinia
-- Standard Info NPC
-----------------------------------


package.loaded["scripts/zones/Bastok_Markets/TextIDs"] = nil;
require("scripts/zones/Bastok_Markets/TextIDs");

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
	
if (oPiece >= 2 and oPiece == trade:getItemCount()) then
payOut = (oPiece /2);
player:addItem(1455,payOut);
player:PrintToPlayer( "You recieved " ..payOut.." of Bynes for your trade! ");
player:tradeComplete();
	elseif
 (mPiece >= 2 and mPiece == trade:getItemCount()) then
payOut = (mPiece /2);
player:addItem(1456,payOut);
player:PrintToPlayer( "You traded for " ..payOut.." of 100 Byne Bills for your trade! ");
player:tradeComplete();
	elseif
 (tShell >= 2 and tShell == trade:getItemCount()) then
payOut = (tShell /2);
player:addItem(1455,payOut);
player:PrintToPlayer( "You recieved " ..payOut.." of Bynes for your trade!");
player:tradeComplete();
	elseif
 (jShell >= 2 and jShell == trade:getItemCount()) then
payOut = (jShell /2);
player:addItem(1456,payOut);
player:PrintToPlayer( "You recieved " ..payOut.." of 100 Byne Bills for your trade!");
player:tradeComplete();
end
--]]
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:startEvent(0x7B);
player:PrintToPlayer("I convert Windurst or San 'D oria Ancient Currency to Bastok Ancient Currency at 2:1 ratio!")
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



