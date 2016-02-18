-----------------------------------
-- Area: Ru'Lude Gardens
-- NPC:  Maat
-- Starts and Finishes Quest: Limit Break Quest 1-5
-- Involved in Quests: Beat Around the Bushin
-- @zone 243
-- @pos 8 3 118
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
package.loaded["scripts/globals/settings"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/zones/RuLude_Gardens/TextIDs");


function onTrigger(player,npc)
player:PrintToPlayer("This is not the Crate you are looking for!");
end;