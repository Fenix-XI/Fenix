-----------------------------------
--  Area: Attohwa Chasm
--  NPC:  Cradle_of_Rebirth
-----------------------------------
package.loaded["scripts/zones/Attohwa_Chasm/TextIDs"] = nil;
-------------------------------------

require("scripts/zones/Attohwa_Chasm/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/keyitems");

-----------------------------------
-- onTrade
-----------------------------------

function onTrade(player,npc,trade)
    -- Trade Flaxen Pouch
    if (trade:hasItemQty(1864,2) and trade:getItemCount() == 2) then
        player.addCurrency("mweya_plasm",50);
            player:tradeComplete();           
           player:PrintToPlayer("Obtained 50 Mweya Plasm");
        end
    end
end;

-----------------------------------
-- onTrigger
-----------------------------------

function onTrigger(player,npc)
player:PrintToPlayer("Trade me 2 H.Q. Antlion Jaws for a Plasm Reward!");
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