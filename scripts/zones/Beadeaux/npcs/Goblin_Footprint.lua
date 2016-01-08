--------------------------
-- Area: Beadeaux
-- NPC: ??? (qm2)
-- Type: Quest NPC
-- @pos -79 1 -99 147
--------------------------
package.loaded["scripts/zones/Beadeaux/TextIDs"] = nil;
--------------------------

require("scripts/zones/Beadeaux/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/weather");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
	 if (player:getQuestStatus(BASTOK, BLADE_OF_DARKNESS) == QUEST_ACCEPTED) --and player:getVar("ChaosbringerKills") >= 100) 
	 then
	  
	  player:unlockJob(8);
      player:addTitle(DARK_SIDER);
      player:setVar("ZeruhnMines_Zeid_CS", 0);
      player:messageSpecial(YOU_CAN_NOW_BECOME_A_DARK_KNIGHT);
      player:completeQuest(BASTOK, BLADE_OF_DARKNESS);
	 end 
end;
-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;