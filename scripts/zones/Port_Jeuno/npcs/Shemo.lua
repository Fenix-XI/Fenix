-----------------------------------
-- Area: Port Jeuno
-- NPC: Shami
-- Orb Seller (BCNM)
-- @pos -14 8 44 246
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/zones/Port_Jeuno/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------
function onTrade(player,npc,trade)
    local payOut = 0;
    local kindredCrest = trade:getItemQty(2955);
	local HighkindredCrest = trade:getItemQty(2956);
	
if (kindredCrest > 0 and kindredCrest == trade:getItemCount()) then
payOut = (kindredCrest /2);
player:addItem(1126,payOut);
player:PrintToPlayer( "You earned " ..payOut.." Beastmen Seals! .5 rounds up to the nearest whole number... lucky you!");
player:tradeComplete();
	elseif
 (HighkindredCrest > 0 and HighkindredCrest == trade:getItemCount()) then
payOut = (HighkindredCrest /2);
player:addItem(1127,payOut);
player:PrintToPlayer( "You earned " ..payOut.." Kindred Seals! .5 rounds up to the nearest whole number... lucky you!");
player:tradeComplete();
	end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
player:PrintToPlayer("Trade me 2 Kindred Crests for 1 Beastmen Seal; or 2 High Kindred Crests for 1 Kindred Seal!");
end;