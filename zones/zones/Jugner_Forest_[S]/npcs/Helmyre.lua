-----------------------------------
--  Area: Jugner Forest (S)
--  NPC:  Helmyre
--  Type: Chocobo Renter
--  @pos -120.853 -1 -152.582 82
-----------------------------------
package.loaded["scripts/zones/Jugner_Forest_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/zones/Jugner_Forest_[S]/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)

price = 100;
gil = player:getGil();
hasLicense = player:hasKeyItem(CHOCOBO_LICENSE);
ChocobosWounds = player:getQuestStatus(JEUNO,CHOCOBO_S_WOUNDS);
level = player:getMainLvl();

 if ((hasLicense and level >= 15) or (level >=15 and ChocobosWounds == QUEST_COMPLETED)) then
		player:startEvent(0x0d0, price, gil);
	else
		player:startEvent(0x0d1, price, gil);
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

	if (csid == 0x0d0 and option == 0) then
		player:addStatusEffect(EFFECT_CHOCOBO,1,0,900);
            
	end
	

end;

