-----------------------------------
-- Area: Prov
-- NPC: tier4
-- Guild Merchant NPC: Tier4 rewards 
-- @pos 0 0 0 0 zone 
-----------------------------------
package.loaded["scripts/zones/Provenance/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Provenance/TextIDs");


function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
player:PrintToPlayer("Welcome to the Tier 4 Rewards Shop. Please purchase your base item");

stock = {0x5348,1, --Adlivun Bolt for Black Tathlum
0x5358,1, --Adlivun Bullet for White Tathlum
0x5389,1, --Aqreqaq Bomblet for Sonia's Plectrum
0x515F,1, --Aalak' Axe for Seismic Axe
0x48BB,1, --Chthonic Staff for Prester
0x50EB,1, --Acclimator for Ruler
0x51FA,1, --Achiuchikapu for Fragarach
0x4A8D,1, --Vajra for Azoth
0x44DA,1, --Auric Dagger for Creve-coeur
0x48C3,1, --Bryoja's Staff for Samudra
0x49DC,1, --Dhampyr Sword for Griffonclaw
0x410E,1, --Glyph Axe for Balestarius
0x4174,1, --Leste Jambiya for Papilio Kirpan
0x42AD,1, --Moepapa Mace for Deae Gratia
0x4A8C,1, --Murgleis for Lex Talionis
0x40C6,1, --Vetala Sword for Nightfall
0x3F3F,1, --Utilis Shield for Avalon Shield
0x497F,1, --Arbuda Grip for Reign Grip
0x497A,1, --Cadushi Grip for Rose Strap
0x497B,1, --Oneiros Grip for Brave Grip
0x3020,1, --Seigneur Shield for Airy Buckler
0x4973,1, --Pax Grip for Wise Strap
0x4974,1, --Uther's Grip for Ariesian Grip
0x482F,1, --Adoulin Ring for Headsman's Ring
0x2A52,1 -- Lux Pugio for X's Knife
	}	
showShop(player, STATIC, stock);
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
