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
--player:addTitle(STAR_BREAKER);--
--		player:levelCap(75);
--						player:addCurrency("bayld",100);
--		player:PrintToPlayer( "You earned 100 Bayld!");
--		player:setVar("maatDefeated",0);
--		player:messageSpecial(YOUR_LEVEL_LIMIT_IS_NOW_75);
--		player:addQuest(JEUNO,SHATTERING_STARS);
--		player:completeQuest(JEUNO,SHATTERING_STARS);
--		player:addFame(JEUNO, JEUNO_FAME*80);
			end;