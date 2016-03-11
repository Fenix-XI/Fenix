-----------------------------------
-- Area: Halvung
-- NPC: Operating Level
-- @pos -34 10 336 62
-----------------------------------
package.loaded["scripts/zones/Halvung/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Halvung/TextIDs");


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player, x, y, z, zone)
            player:setPos('-117', '-10', '220', '6', '62');
			player:PrintToPlayer("You're access to portals has just been reset!");

end

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;