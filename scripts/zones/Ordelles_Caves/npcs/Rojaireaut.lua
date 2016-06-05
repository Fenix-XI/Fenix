-----------------------------------
--  Area: Ordelle's Caves
--  NPC:  Rojaireaut
--  Type: Standard NPC
--  @pos -91.781 -0.545 587.944 193
-----------------------------------
package.loaded["scripts/zones/Ordelles_Caves/TextIDs"] = nil;
-----------------------------------
----------------------------------

require("scripts/zones/Ordelles_Caves/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

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
	if (player:getQuestStatus(SANDORIA,ECO_WARRIOR_SAN) ~= QUEST_AVAILABLE and player:getVar("ECO_WARRIOR_ACTIVE") == 230) then	
		if (player:hasKeyItem(INDIGESTED_STALAGMITE)) then
			player:startEvent(0x0036); -- After NM's dead
		elseif (player:hasStatusEffect(EFFECT_LEVEL_RESTRICTION) == false) then
			player:startEvent(0x0033); -- 
		else
			player:startEvent(0x0035);
		end
	else
		player:startEvent(0x0037); -- default
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
	 printf("RESULT: %u",option);
	if (csid == 0x0033 and option == 1) then
		player:addStatusEffect(EFFECT_LEVEL_RESTRICTION,20,0,0);
	elseif (csid == 0x003) then
		player:delStatusEffect(EFFECT_LEVEL_RESTRICTION);
	elseif (csid == 0x0035) then
		player:delStatusEffect(EFFECT_LEVEL_RESTRICTION);
    elseif (csid == 0x0036) then
		player:delStatusEffect(EFFECT_LEVEL_RESTRICTION);
	end
end;