function onTrigger(player,npc)
    if ((player:getCurrentMission(BASTOK) == THE_EMISSARY_SANDORIA2 or 
        player:getCurrentMission(WINDURST) == THE_THREE_KINGDOMS_SANDORIA2) and 
        player:getVar("MissionStatus") == 9) then
            player:addKeyItem(KINDRED_CREST);
            player:messageSpecial(KEYITEM_OBTAINED,KINDRED_CREST);
            player:setVar("MissionStatus",10);
    end