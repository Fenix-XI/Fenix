-----------------------------------
-- Area: Chamber of Oracles
-- NPC:  Pedestal of Dark
-- Involved in Zilart Mission 7
-- @pos 199 -2 36 168
-------------------------------------
package.loaded["scripts/zones/Chamber_of_Oracles/TextIDs"] = nil;
-------------------------------------

require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/zones/Chamber_of_Oracles/TextIDs");

-------------------------------------	

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local ZilartStatus = player:getVar("ZilartStatus");

  if (player:getCurrentMission(ZILART) == THROUGH_THE_QUICKSAND_CAVES) then
            player:completeMission(ZILART,THROUGH_THE_QUICKSAND_CAVES);
            player:addMission(ZILART,THE_CHAMBER_OF_ORACLES);
			--player:addKeyItem(DARK_FRAGMENT);
player:startEvent(0x7d01);
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
    
    if (csid == 0x0001) then
        player:addTitle(LIGHTWEAVER);
        player:setVar("ZilartStatus",2);
        player:addKeyItem(PRISMATIC_FRAGMENT);
        player:messageSpecial(KEYITEM_OBTAINED,PRISMATIC_FRAGMENT);
        player:completeMission(ZILART,THE_CHAMBER_OF_ORACLES);
        player:addMission(ZILART,RETURN_TO_DELKFUTTS_TOWER);
    end
    
end;