-----------------------------------
--  Area: Port Bastok
--   NPC: Raifa
--  Type: Quest Giver
-- @zone: 236
--  @pos -166.416 -8.48 7.153
--
-- Auto-Script: Requires Verification (Verfied by Brawndo)
-----------------------------------
package.loaded["scripts/zones/Port_Bastok/TextIDs"] = nil;

require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/globals/titles");
require("scripts/zones/Port_Bastok/TextIDs");
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
	local ecoWarBastok = player:getQuestStatus(BASTOK,ECO_WARRIOR_BAS);
	local ecoWarActiveNation = player:getVar("ECO_WARRIOR_ACTIVE");
    	if (player:getQuestStatus(BASTOK,ECO_WARRIOR_BAS) == QUEST_AVAILABLE) then    
	if (player:hasKeyItem(INDIGESTED_ORE)) then
		player:startEvent(0x011a); -- quest done
    elseif (ecoWarActiveNation < 1 and player:getFameLevel(BASTOK) >= 1) then
        player:startEvent(0x0116); -- Start CS
	elseif (ecoWarActiveNation ~= 238 and ecoWarActiveNation > 1) then
		player:startEvent(0x0119); -- already on an eco quest
	elseif (ecoWarBastok ~= QUEST_AVAILABLE and ecoWarActiveNation == 238  and player:getVar("ECO-WAR_ConquestWeek") ~= getConquestTally()) then
		player:startEvent(0x0118); -- reminder
	else
		player:startEvent(0x0117); -- Default chit-chat

	end
    	else
		player:startEvent(0x0117); -- Default chit-chat
    end
end;

	-- start the event player:startEvent(0x0116);

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
	printf("RESULT: %u",option);
	if (csid == 0x0116 and option == 1) then
		if (player:getQuestStatus(BASTOK,ECO_WARRIOR_BAS) == QUEST_AVAILABLE) then
			player:addQuest(BASTOK,ECO_WARRIOR_BAS);
		end
		player:setVar("ECO_WARRIOR_ACTIVE",player:getZoneID());
		player:setVar("ECO-WAR_ConquestWeek",0);
	elseif (csid == 0x011a) then
		if (player:getFreeSlotsCount() >= 1) then
			player:completeQuest(BASTOK,ECO_WARRIOR_BAS);
			player:delKeyItem(INDIGESTED_ORE);
			player:addGil(GIL_RATE * 5000);
			player:messageSpecial(GIL_OBTAINED,GIL_RATE * 5000);
			player:addItem(4198);
			player:messageSpecial(ITEM_OBTAINED,4198);
			player:addTitle(EMERALD_EXTERMINATOR);
			player:addFame(BASTOK,BAS_FAME * 80);
			player:setVar("ECO-WAR_ConquestWeek",getConquestTally())
			player:setVar("ECO_WARRIOR_ACTIVE",0);
		else
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,4198);
		end
	end
end;

