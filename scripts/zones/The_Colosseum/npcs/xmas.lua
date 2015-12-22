-----------------------------------
-- Area: The Colosseum
-- NPC: Xmas
-- Guild Merchant NPC: Xmas Tree
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
	
player:PrintToPlayer("Purchase the XMAS items and a XMAS quest may be available...");

stock = {
0x49B0,1,--Dream Bell +1
0x3D89,1, -- Dream Boots +1
0x3B4B,1,-- Dream Hat +1
0x288F,1,-- Dream Mittens +1
0x2EC0,1,-- Dream Pants +1
0x38B8,1,-- Dream Robe +1
0x9B,1,-- Dream Stocking
0x2EBE,1-- Dream Trousers +1
}

showShop(player, STATIC, stock);

end;
