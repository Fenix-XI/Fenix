-----------------------------------
-- Area: Mount Zhayolm
-- NPC:  Bapokk
-- Handles access to Alzadaal Ruins
-- @pos -20 -6 276 61
-----------------------------------
package.loaded["scripts/zones/Mount_Zhayolm/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Mount_Zhayolm/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if (trade:getItemCount() == 1 and trade:hasItemQty(2185,1)) then -- Silver
		player:tradeComplete();
		player:setPos(-20,-8,288,190); -- using the pos method until the problem below is fixed
		--player:startEvent(163); -- << this CS goes black at the end, never fades in
		return 1;
	end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:PrintToPlayer("Trade me 1 Imp. Silver Piece to gain Access! Otherwise I can do this all day!");
	-- Ruins -> Zhayolm
   if (player:getZPos() > -280) then 
		--player:startEvent(165);
		player:setPos(-21,-7,270,60);
	-- Zhayolm -> Ruins
   else
		player:startEvent(162);
	end
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