function onTrigger(player,npc)

    if (player:hasKeyItem(DARK_KEY)) then
            player:addKeyItem(KINDRED_CREST);
            player:messageSpecial(KEYITEM_OBTAINED,KINDRED_CREST);
            player:setVar("MissionStatus",9);
            player:delKeyItem(DARK_KEY);
    end