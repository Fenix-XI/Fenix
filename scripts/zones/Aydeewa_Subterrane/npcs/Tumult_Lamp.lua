-----------------------------------
-- Area: Aydeewa Subterrane

-----------------------------------
package.loaded["scripts/zones/Aydeewa_Subterrane/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Aydeewa_Subterrane/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

 

end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
            player:setVar("EmptyVesselStone",0);
        player:addKeyItem(MARK_OF_ZAHAK);
        player:unlockJob(16);
        player:addTitle(BEARER_OF_THE_MARK_OF_ZAHAK);
        player:completeQuest(AHT_URHGAN,AN_EMPTY_VESSEL);
        player:setPos(148,-2,0,130,50);
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
end;