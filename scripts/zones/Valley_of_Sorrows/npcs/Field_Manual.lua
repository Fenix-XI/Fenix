-----------------------------------	
-- Area: Valley of Sorrows
-- Field Manual	
-----------------------------------	
	
require("scripts/globals/settings");	
require("scripts/globals/fieldsofvalor");	
	
-----------------------------------	
-- onTrigger Action	
-----------------------------------	
	
function onTrigger(player,npc)	
	startFov(FOV_EVENT_SORROWS,player);
end;	
	
-----------------------------------	
-- onTrade Action	
-----------------------------------	
	
function onTrade(player,npc,trade)	
end;	
	
-----------------------------------	
-- onEventSelection	
-----------------------------------	
	
function onEventUpdate(player,csid,menuchoice)	
	updateFov(player,csid,menuchoice,139,140,141,141,141);
end;	
	
-----------------------------------	
-- onEventFinish Action	
-----------------------------------	
	
function onEventFinish(player,csid,option)	
	finishFov(player,csid,option,139,140,141,141,141,FOV_EVENT_SORROWS);
end;	
