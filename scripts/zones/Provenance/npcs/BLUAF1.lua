-----------------------------------
-- Area: The Colosseum
-- NPC: BLUAF1 
-- Guild Merchant NPC: PLDAF1 
-- @pos 0 0 0 0 zone 71
-----------------------------------

require("scripts/globals/rewards_af");
-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc,trade)
	openShop(player,npc,npcId,trade);
end;
  
  -----------------------------------
-- onTrade Action
-----------------------------------
  
function onTrade(player,npc,trade)
	unlockShop(player,npc,trade)
end;


function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

