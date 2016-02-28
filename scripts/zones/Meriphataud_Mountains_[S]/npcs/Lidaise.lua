-----------------------------------
-- Area: Meriphataud Mountains [S]
--  NPC: Lidaise
-- @pos 597 -32 279 97
-- Chocobo NPC
-----------------------------------
package.loaded["scripts/zones/Meriphataud_Mountains_[S]/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/globals/teleports");
require("scripts/globals/campaign");
require("scripts/zones/Meriphataud_Mountains_[S]/TextIDs");
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
		player:startEvent(0x06a, price, gil);
	else
		player:startEvent(0x06b, price, gil);
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

	if (csid == 0x06a and option == 0) then
		player:addStatusEffect(EFFECT_CHOCOBO,1,0,900);
            
	end
	

end;