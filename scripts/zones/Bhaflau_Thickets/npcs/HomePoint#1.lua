-----------------------------------
-- Area: Bhaflau Thickets
-- NPC:  HomePoint#1
-- @pos  -98 -10 -493 52
-----------------------------------

package.loaded["scripts/zones/Bhaflau_Thickets/TextIDs"] = nil;

require("scripts/globals/settings");
require("scripts/zones/Bhaflau_Thickets/TextIDs");
require("scripts/globals/homepoint");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

	local LvL = player:getMainLvl();
	local mJob = player:getMainJob();
	
if(LvL >= 66 and mJob == 16 and player:levelCap() == 70 and MAX_LEVEL >= 75 and trade:getItemCount()==1 and trade:hasItemQty(2331,1))
		then
		player:tradeComplete();
		player:PrintToPlayer("You made it through the thicket! You can now progress to 75!");
		player:addTitle(STAR_BREAKER);
		player:levelCap(75);
		player:addCurrency("dominion_note",100);
		player:PrintToPlayer( "You earned 100 Notes!");
		player:messageSpecial(YOUR_LEVEL_LIMIT_IS_NOW_75);
		player:addMission(JEUNO,SHATTERING_STARS)
		player:completeQuest(JEUNO,SHATTERING_STARS);
		else 
		--(LvL <= 66 and mJob !~ 16 and player:levelCap() !~ 70 and MAX_LEVEL !~ 75)
		--then
		player:PrintToPlayer("Please come back when you are 66 -70 Blue Mage!")
		end
		
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	homepointMenu( player, 0x21fc, 74);
end; 

-----------------------------------
-- onEventUpdate
-----------------------------------

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

	if (csid == 0x21fc) then

		if (option == 1) then	
			player:setHomePoint();
			player:messageSpecial(HOMEPOINT_SET);
		else
			hpTeleport( player, option);
		end
	end
end;