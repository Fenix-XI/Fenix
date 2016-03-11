package.loaded["scripts/zones/Ghelsba_Outpost/TextIDs"] = nil;
package.loaded["scripts/globals/settings"] = nil;
require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/pets");
require("scripts/zones/Ghelsba_Outpost/TextIDs");

	
	-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

 if (player:hasKeyItem(DRAGON_CURSE_REMEDY) == true) then
        player:addTitle(HEIR_TO_THE_HOLY_CREST);
        player:delKeyItem(DRAGON_CURSE_REMEDY);
        player:unlockJob(14);
        player:messageSpecial(YOU_CAN_NOW_BECOME_A_DRAGOON);
        player:setVar("TheHolyCrest_Event",0);
        player:addFame(SANDORIA,SAN_FAME*30);
        player:completeQuest(SANDORIA,THE_HOLY_CREST);
    player:setPetName(PETTYPE_WYVERN,option);
    end

end;

-----------------------------------
-- onEventUpdate Action
-----------------------------------

function onEventUpdate(player,csid,option)
--print("onEventUpdate");
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
--print("onEventFinish");
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;
