-----------------------------------
-- Area: Windurst Waters [S]
-- NPC: Yasmina
-- @zone 94
-- @pos -34 -4 221
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
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
		player:startEvent(0x006, price, gil);
	else
		player:startEvent(0x007, price, gil);
	end

end;

  
-----------------------------------
-- onEventFinish Action
-----------------------------------
function onEventFinish(player,csid,option)
print("CSID:",csid);
print("OPTION:",option);


	if (csid == 0x006 and option == 0) then
       player:setPos(320,-4,-46,192,95);
		player:addStatusEffect(EFFECT_CHOCOBO,1,0,900);
            
	end
	

end;