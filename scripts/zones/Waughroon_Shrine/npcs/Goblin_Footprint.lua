function onTrigger(player,npc)

    if ((player:getCurrentMission(SANDORIA) == JOURNEY_TO_BASTOK2 or 
        player:getCurrentMission(WINDURST) == THE_THREE_KINGDOMS_BASTOK2) and 
        player:getVar("MissionStatus") == 10) then
            player:addKeyItem(KINDRED_CREST);
            player:messageSpecial(KEYITEM_OBTAINED,KINDRED_CREST);
            player:setVar("MissionStatus",11);
    end