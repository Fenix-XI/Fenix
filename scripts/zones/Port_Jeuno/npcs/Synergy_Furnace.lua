-----------------------------------
--
-------------------------------------
-------------------------------------


----------------------------------- 
-- onTrade Action 
----------------------------------- 

function onTrade(player,npc,trade) 
    local oldAnimiationtr = npc:AnimationSub();
    if oldAnimiationtr == 5 then npc:AnimationSub( 2 );
    else if oldAnimiationtr == 2 then npc:AnimationSub( 5 );
    end
    end
end;

----------------------------------- 
-- onTrigger Action 
-----------------------------------
 
function onTrigger(player,npc) 
    local oldAnimiationtrg = npc:AnimationSub();
    if oldAnimiationtrg == 2 then npc:AnimationSub( 3 );
    else if oldAnimiationtrg == 3 then npc:AnimationSub( 5 );
    end
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
end;
