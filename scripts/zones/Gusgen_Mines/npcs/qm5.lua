-----------------------------------
-- Area: Gusgen Mines
-- NPC:  qm5 (???)
-- Involved In Quest: Eco Warrior Bastock
-----------------------------------
package.loaded["scripts/zones/Gusgen_Mines/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/quests");
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
	
	local pudding1 = 17580338;
	local pudding2 = 17580339;
	
	if (player:getQuestStatus(BASTOK,ECO_WARRIOR_BAS) ~= QUEST_AVAILABLE and 
        player:getVar("ECO_WARRIOR_ACTIVE") == 236 and 
        player:hasStatusEffect(EFFECT_LEVEL_RESTRICTION) and 
        player:hasKeyItem(INDIGESTED_ORE) == false) then       
		if (player:getVar("ECOR_WAR_BAS-NMs_killed") == 1) then
			player:addKeyItem(INDIGESTED_ORE);
			player:messageSpecial(KEYITEM_OBTAINED,INDIGESTED_ORE);
            killer:setVar("ECOR_WAR_BAS-NMs_killed",0);
		elseif (GetMobAction(pudding1) + GetMobAction(pudding1) == 0) then
			SpawnMob(pudding1,180):updateClaim(player);
			SpawnMob(pudding2,180):updateClaim(player);
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