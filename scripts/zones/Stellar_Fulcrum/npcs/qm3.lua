-----------------------------------
-- Area: Stellar Fulcrum
-- NPC:  ??? QM3
-------------------------------------

require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
--player:PrintToPlayer("Done son");
if (player:getCurrentMission(ZILART) == RETURN_TO_DELKFUTTS_TOWER) then
            player:completeMission(ZILART,RETURN_TO_DELKFUTTS_TOWER);
            player:addMission(ZILART,ROMAEVE);
            player:setVar("ZilartStatus",0);
			 player:startEvent(0x7d01);
			 player:PrintToPlayer("You are now on Mission Ro'Maeve");
        end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("onUpdate CSID: %u",csid);
--printf("onUpdate RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
--printf("onFinish CSID: %u",csid);
--printf("onFinish RESULT: %u",option);


end;
