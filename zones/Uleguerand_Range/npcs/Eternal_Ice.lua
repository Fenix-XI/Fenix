-----------------------------------
--  Area: Uleguerand Range
--  NPC:  Eternal Ice
--  Gives key item Mystic Ice upon examining
--  @pos 575 -26 -101 5
--  @pos 455 -82 421 5
--  @pos -95 -146 378 5
-----------------------------------
package.loaded["scripts/zones/Uleguerand_Range/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/zones/Uleguerand_Range/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

	local LvL = player:getMainLvl();
	local mJob = player:getMainJob();
	
if(LvL >= 66 and mJob == 19 and player:levelCap() == 70 and MAX_LEVEL >= 75 and trade:getItemCount()==1 and trade:hasItemQty(2556,1))
		then
		player:tradeComplete();
		player:PrintToPlayer("You made it! You can now progress to 75!");
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
		player:PrintToPlayer("Please come back when you are 66 -70 DNC!")
		end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	if (player:hasKeyItem(MYSTIC_ICE) == false) then
		player:addKeyItem(MYSTIC_ICE);
		player:messageSpecial(KEYITEM_OBTAINED,MYSTIC_ICE);
	else
		player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
	end
end;