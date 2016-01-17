function onTrigger(player,npc)

		if (player:hasKeyItem(DARK_KEY)) then
			player:addKeyItem(KINDRED_CREST);
			player:messageSpecial(KEYITEM_OBTAINED,KINDRED_CREST);
			player:setVar("MissionStatus",9);
			player:delKeyItem(DARK_KEY);
			player:PrintToPlayer("Please continue on with your next mission! Add KI Kindred Crest_ delKI Dark Key");
		end
		end;