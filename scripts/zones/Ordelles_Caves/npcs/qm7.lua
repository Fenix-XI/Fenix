-----------------------------------
-- Area: Gusgen Mines
-- NPC:  qm7 (???)
-- Involved In Quest: Eco Warrior Sandoria
-----------------------------------
package.loaded["scripts/zones/Ordelles_Caves/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/zones/Ordelles_Caves/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	

	
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
	local necro = 17568138;
	
	if (player:getQuestStatus(SANDORIA,ECO_WARRIOR_SAN) ~= QUEST_AVAILABLE and 
        player:getVar("ECO_WARRIOR_ACTIVE") == 230 and 
        player:hasStatusEffect(EFFECT_LEVEL_RESTRICTION) and 
        player:hasKeyItem(INDIGESTED_STALAGMITE) == false) then       
		if (player:getVar("ECOR_WAR_SAN-NMs_killed") == 1) then
			player:addKeyItem(INDIGESTED_STALAGMITE);
			player:messageSpecial(KEYITEM_OBTAINED,INDIGESTED_STALAGMITE);
            player:setVar("ECOR_WAR_BAS-NMs_killed",0);
		else
			SpawnMob(necro,180):updateClaim(player);

		end
	end

end
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
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;