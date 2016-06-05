-----------------------------------
-- Area: Gusgen Mines
-- NPC:  Degga
-- Type: Standard Info NPC
-- @pos 40 -68 -259
-----------------------------------
package.loaded["scripts/zones/Gusgen_Mines/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/quests");
require("scripts/globals/settings");
require("scripts/zones/Gusgen_Mines/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	--player:startEvent(0x0040);
	if (player:getQuestStatus(BASTOK,ECO_WARRIOR_BAS) ~= QUEST_AVAILABLE and player:getVar("ECO_WARRIOR_ACTIVE") == 236) then		
		if (player:hasKeyItem(INDIGESTED_ORE)) then
			player:startEvent(0x0010); -- After NM's dead
		elseif (player:hasStatusEffect(EFFECT_LEVEL_RESTRICTION) == false) then
			player:startEvent(0x000d); -- 
		else
			player:startEvent(0x000f);
		end
	else
		player:startEvent(0x000c); -- default
	end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID2: %u",csid);
--printf("RESULT2: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	 printf("RESULT: %u",option);
	if (csid == 0x000d and option == 1) then
		player:addStatusEffect(EFFECT_LEVEL_RESTRICTION,20,0,0);
	elseif (csid == 0x0010) then
		player:setVar("ECOR_WAR_BAS-NMs_killed",0);
		player:delStatusEffect(EFFECT_LEVEL_RESTRICTION);
	elseif (csid == 0x000f) then
		player:delStatusEffect(EFFECT_LEVEL_RESTRICTION);
	end
end;