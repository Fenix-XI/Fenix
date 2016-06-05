-----------------------------------
--  Area: Southern Sandoria
--  NPC: Norejaie
--  Type: Standard NPC
--  @zone: 230
--  @pos 83.924 1 110.54
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/globals/titles");
require("scripts/zones/Southern_San_dOria/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------
require("scripts/globals/settings");
 
function onTrigger(player,npc)

	local ecoWarSANDORIA = player:getQuestStatus(SANDORIA,ECO_WARRIOR_SAN);
	local ecoWarActiveNation = player:getVar("ECO_WARRIOR_ACTIVE");
    	if (player:getQuestStatus(SANDORIA,ECO_WARRIOR_SAN) == QUEST_AVAILABLE) then 
	if (player:hasKeyItem(INDIGESTED_STALAGMITE) and ecoWarActiveNation == 230) then
		player:startEvent(0x02A9); -- quest done
	elseif (ecoWarActiveNation < 1 and player:getFameLevel(SANDORIA) >= 1 and player:getVar("ECO-WAR_ConquestWeek") ~= getConquestTally()) then
		player:startEvent(0x02A5); -- Start CS
	elseif (ecoWarActiveNation ~= 230 and ecoWarActiveNation > 1) then
		player:startEvent(0x02A6); -- already have an Eco Quest
	elseif (ecoWarSANDORIA ~= QUEST_AVAILABLE and ecoWarActiveNation == 230  and player:getVar("ECO-WAR_ConquestWeek") ~= getConquestTally()) then
		player:startEvent(0x02A7); -- reminder
	else
		player:startEvent(0x02A8); -- Default chit-chat
	end
    else
		player:startEvent(0x02A8); -- Default chit-chat
    end
    
end;

 
function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
	if (csid == 0x02A5 and option == 1) then
		if (player:getQuestStatus(SANDORIA,ECO_WARRIOR_SAN) == QUEST_AVAILABLE) then
			player:addQuest(SANDORIA,ECO_WARRIOR_SAN);
		end
		player:setVar("ECO_WARRIOR_ACTIVE",player:getZoneID());
		player:setVar("ECO-WAR_ConquestWeek",0);
	elseif (csid == 0x02A9) then
		if (player:getFreeSlotsCount() >= 1) then
			player:completeQuest(SANDORIA,ECO_WARRIOR_SAN);
			player:delKeyItem(INDIGESTED_STALAGMITE);
			player:addGil(GIL_RATE * 5000);
			player:messageSpecial(GIL_OBTAINED,GIL_RATE * 5000);
			player:addItem(4198);
			player:messageSpecial(ITEM_OBTAINED,4198);
			player:addTitle(EMERALD_EXTERMINATOR);
			player:addFame(SANDORIA,SAN_FAME * 80);
			player:setVar("ECO-WAR_ConquestWeek",getConquestTally())
			player:setVar("ECO-WAR_ConquestWeek",getConquestTally())
			player:setVar("ECO_WARRIOR_ACTIVE",0);            
            player:setVar("ECOR_WAR_SAN-NMs_killed",0);
		else
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,4198);
		end
	end
end;
