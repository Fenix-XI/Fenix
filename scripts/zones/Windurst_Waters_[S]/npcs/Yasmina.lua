-----------------------------------
--  Area: Windurst Waters (S)
--   NPC: Yasmina
--  Type: Chocobo Renter
-- @zone: 94
--  @pos -34.972 -5.815 221.845
-- 
-- Auto-Script: Requires Verification (Verified by Brawndo)
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters_[S]/TextIDs"] = nil;
-----------------------------------

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local level = player:getMainLvl();
    if (player:hasKeyItem(CHOCOBO_LICENSE) and level >= 20) then
    player:startEvent(0x0006, 10, 10);
	end
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
	
	if (csid == 0x0006 and option == 0) then


            local duration = 1800 + (player:getMod(MOD_CHOCOBO_RIDING_TIME) * 60)

            player:addStatusEffectEx(EFFECT_CHOCOBO,EFFECT_CHOCOBO,1,0,duration,true);

            player:setPos(320,-4,-41,192,95);
        end
    
end;

