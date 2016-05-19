-----------------------------------
-- Area: Residential Area
-- NPC:  Moogle
-- 
-----------------------------------
package.loaded["scripts/zones/Port_Windurst/TextIDs"] = nil;

require("scripts/globals/moghouse");
require("scripts/globals/quests");
require("scripts/globals/settings");
require("scripts/zones/Port_Windurst/TextIDs");





-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

    if (player:getQuestStatus(4,100) == QUEST_ACCEPTED) then
        if (trade:hasItemQty(17161,1) and trade:hasItemQty(13457,1) and trade:getGil() == 0 and trade:getItemCount() == 2) then
            player:startEvent(0x7537); -- Power Bow and Beetle Ring for First Expansion
        else
       	moogleTrade(player,npc,trade);
        end
    end
    if (player:getQuestStatus(4,101) == QUEST_ACCEPTED) then
    	if (trade:hasItemQty(17402,1) and trade:hasItemQty(615,1) and trade:getGil() == 0 and trade:getItemCount() == 2) then
    		player:startEvent(0x753b); -- Selbina Butter adn Shrimp Lure for Second Expansion
    	else 
    	moogleTrade(player,npc,trade);
    	end
    end
    if (player:getQuestStatus(4,102) == QUEST_ACCEPTED) then
    	if (trade:hasItemQty(13593,1) and trade:hasItemQty(12474,1) and trade:getGil() == 0 and trade:getItemCount() == 2) then
    		player:startEvent(0x753f); -- Raptor Mantle and Wool Hat for Third Expansion
    	else 
    	moogleTrade(player,npc,trade);
    	end
    end   
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc,csid,itemID)
	local mogNation = WINDURST;
	local mogVacDay = player:getVar("MogVacDay");
	local currentDay = VanadielDayOfTheYear();
	local mogBackVac = ((mogVacDay < currentDay) or (mogVacDay > currentDay and player:getVar("MogVacYear") < VanadielYear()))
    
    if (player:getNation() == mogNation and player:hasItem(5) and player:getQuestStatus(4,100) == QUEST_AVAILABLE) then
        player:startEvent(0x7535);  -- First Mog Safe Expansion 
    elseif (player:getQuestStatus(4,100) == QUEST_ACCEPTED and player:getVar("MogTrade") == 0) then
        player:startEvent(0x7536);  -- First Quest Reminder
        moogleTrigger(player,npc);
    elseif (player:getQuestStatus(4,100) == QUEST_ACCEPTED and mogBackVac == true and player:getVar("MogTrade") == 1) then
        player:startEvent(0x7538);  -- First Quest Finish 
    elseif (player:getNation() == mogNation and player:getContainerSize(1) == 60 and player:hasItem(4) and player:getQuestStatus(4,101) == QUEST_AVAILABLE) then
        player:startEvent(0x7539);  -- Second Mog Safe Expansion
    elseif (player:getQuestStatus(4,101) == QUEST_ACCEPTED and player:getVar("MogTrade") == 0) then
        player:startEvent(0x753a);  -- Second Quest Reminder
        moogleTrigger(player,npc);
    elseif (player:getQuestStatus(4,101) == QUEST_ACCEPTED and mogBackVac == true and player:getVar("MogTrade") == 1) then
        player:startEvent(0x753c); -- Second Quest Finish
    elseif (player:getNation() == mogNation and player:getContainerSize(1) == 70 and player:hasItem(6) and player:getQuestStatus(4,102) == QUEST_AVAILABLE) then
        player:startEvent(0x753d);  -- Third Mog Safe Expansion
    elseif (player:getQuestStatus(4,102) == QUEST_ACCEPTED and player:getVar("MogTrade") == 0) then
        player:startEvent(0x753e);  -- Third Quest Reminder
        moogleTrigger(player,npc);
    elseif (player:getQuestStatus(4,102) == QUEST_ACCEPTED and mogBackVac == true and player:getVar("MogTrade") == 1) then
        player:startEvent(0x7540); -- Third Quest Finish
    else
        moogleTrigger(player,npc) -- Standard Mog Menu Open
    end

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
    if (csid == 0x7530) then
        player:setVar("MoghouseExplication",0);
    elseif (csid == 0x7535 and option == 1) then
    	player:addQuest(4,100);
    elseif (csid == 0x7537) then
    	player:setVar("MogVacDay",VanadielDayOfTheYear());
    	player:setVar("MogVacYear",VanadielYear());
    	player:setVar("MogTrade",1);
    	player:delItem(17161,1);
    	player:delItem(13457,1);
    elseif (csid == 0x7538) then
   		player:setVar("MogVacDay",0);
   		player:setVar("MogVacYear",0);
   		player:setVar("MogTrade",0);
    	player:completeQuest(4,100);
    	player:changeContainerSize(1,10);
    	player:changeContainerSize(9,10);
   		player:messageSpecial(MOG_SAFE_EXPANDED);
   		player:addTitle(MOGS_KIND_MASTER);
   	elseif (csid == 0x7539 and option == 1) then
   		player:addQuest(4,101);
   	elseif (csid == 0x753b) then
    	player:setVar("MogVacDay",VanadielDayOfTheYear());
    	player:setVar("MogVacYear",VanadielYear());
    	player:setVar("MogTrade",1);
    	player:delItem(17402,1);
    	player:delItem(615,1);
    elseif (csid == 0x753c) then 
    	player:setVar("MogVacDay",0);
   		player:setVar("MogVacYear",0);
   		player:setVar("MogTrade",0);
    	player:completeQuest(4,101);
    	player:changeContainerSize(1,10);
    	player:changeContainerSize(9,10);
   		player:messageSpecial(MOG_SAFE_EXPANDED);
   		player:addTitle(MOGS_EXCEPTIONALLY_KIND_MASTER);
   	elseif (csid == 0x753d and option ==1) then
   		player:addQuest(4,102);
   	elseif (csid == 0x753f) then
    	player:setVar("MogVacDay",VanadielDayOfTheYear());
    	player:setVar("MogVacYear",VanadielYear());
    	player:setVar("MogTrade",1);
    	player:delItem(13593,1);
    	player:delItem(12474,1);
    elseif (csid == 0x7540) then
    	player:setVar("MogVacDay",0);
   		player:setVar("MogVacYear",0);
   		player:setVar("MogTrade",0);
    	player:completeQuest(4,102);
    	player:changeContainerSize(1,10);
    	player:changeContainerSize(9,10);
   		player:messageSpecial(MOG_SAFE_EXPANDED);
   		player:addTitle(MOGS_LOVING_MASTER);
    end
end;