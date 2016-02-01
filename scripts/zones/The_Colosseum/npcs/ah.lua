-----------------------------------
--	Area: Bastok Markets
--	NPC:  Auction Counter
--	Working 100%
-----------------------------------

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

player:PrintToPlayer("Stocked AH for your convenience! Please be considerate to other players when buying, as the stock is limited.");
player:PrintToPlayer("It is refilled once a month. If something runs out, don't forget the real world, or the 8 NPCs behind you!");
	player:sendMenu(3);
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

