-----------------------------------
package.loaded["scripts/zones/Provenance/TextIDs"] = nil;
require("scripts/zones/Provenance/TextIDs");
require("scripts/globals/rewards_items");
-----------------------------------
-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc,trade)
	showShop(player, STATIC, rewardStock)
end;
  
  -----------------------------------
-- onTrade Action
-----------------------------------
  
function onTrade(player,npc,trade)
  rewardTrade(player,npc,trade)
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
