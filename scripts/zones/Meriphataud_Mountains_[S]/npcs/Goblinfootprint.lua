-----------------------------------
-- Area: Meriphataud Mountains [S]
-- NPC: Goblin Footprint [changeme]
-- @zone 97
-- @pos 312 -10 28
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
		player:startEvent(0x06A, price, gil);
	else
		player:startEvent(0x06B, price, gil);
	end

end;

  
-----------------------------------
-- onEventFinish Action
-----------------------------------
function onEventFinish(player,csid,option)
print("CSID:",csid);
print("OPTION:",option);


	if (csid == 0x06A and option == 0) then
		player:addStatusEffect(EFFECT_CHOCOBO,1,0,900);
            
	end
	

end;