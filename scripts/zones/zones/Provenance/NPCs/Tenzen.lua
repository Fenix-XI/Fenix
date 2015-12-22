-----------------------------------
-- Area: The Colosseum
-- NPC: Bonecraft
-- Guild Merchant NPC: Bonecraft Guild 
-- @pos 0 0 0 0 zone 71
-----------------------------------
package.loaded["scripts/zones/The_Colosseum/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/The_Colosseum/TextIDs");




-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
player:PrintToPlayer("Welcome to the reward store for gear pertaining to CoP storyline");

local bayld = player:getCurrency("bayld");
balance = bayld;  --variable to determine how much is needed if not enough
player:PrintToPlayer( "You have "..balance.." of Bayld Currency!");
if (bayld >= 10000) then
		stock = {0x02B0,1,	--Arrowwood Log x12
	0x02BA,1,	--Ash Log
	0x02D2,1,	--Divine Log
	0x100A,1,	--Wind Crystal
	
	}	
	
 
showShop(player, STATIC, stock);

else
			player:startEvent(0x0172);
		end
end;
