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

stock = {0x6BBC,1, --Adoulin Ring for Headsman's Ring
0x2D57,1, --Artemis' Medal for Bull's Necklace
0x4975,1, --Amicus Grip for Mercenary Major Charm
0x2D58,1, --Barcarolla Medal for Ancient Torque
0x2B18,1, --Mujin Stud for Brilliant Earring	
0x2DB4,1, --Gifted Earring for Diverter's Ring
0x3CA7,1, --Praecis Gorget for Cougar Pendant
0x2838,1, --Charivari Earring for Temple Earring
0x2DB1,1, --Moonshade Earring for Supremacy Earring
0x2D54,1, --Corvus Torque for Bloodbead Gorget
0x6F6A,1, --Dudgeon Earring for Paramount Earring
0x2D5C,1, --Eidolon Pendant for Crocodile Collar
0x2D79,1, --Metanoia Ring for Fenian Ring
0x2D7A,1, --Hoard Ring for Royal Knight Sigil Ring
0x2DB2,1, --Hecate's Earring for Crapaud Earring
0x2837,1, --Kokou's Earring for Fox Earring
0x2D5A,1, --Lacono Necklace for Shield Collar
0x2A0E,1, --Lunette Ring for Patronus Ring
0x2B2E,1, --Pensee Earring for Roundel Earring
0x2D7B,1, --Odium Ring for Ecphoria Ring
0x2A3F,1, --Phasmida Belt for Cuchulain's Belt
0x2D59,1, --Shifting Necklace for Piper's Torque
0x289C,1, --Rioter's Collar for Tiercel Necklace
0x482F,1, --Light Sachet for Sturm's Report
0x6DA4,1, --Abatteur Subligar for Nimue's Tights
0x29A1,1, --Abyss Burgeonet +2  for Fourth Haube
0x29B5,1, --Abyss Cuirass +2 for Fourth Brunne
0x29DD,1, --Abyss Flanchard +2 for Fourth Schuhs
0x29C9,1, --Abyss Gauntlets +2 for Fourth Hentzes
0x29F1,1, --Abyss Sollerets +2 for Fourth Schoss
0x68A3,1, --Alhazen Hat +1 for Gnadbhod's Helm
0x2E6E,1, --Ample Gloves for Stone Mufflers
0x2F41,1, --Aoidos' Cothurnes for Aoide's Pumps
0x2D1E,1, --Belenos' Mantle for Arrestor Mantle
0x2D27,1, --Ultion Mantle for Fourth Mantle
0x2ADF,1, --Archon Cape for Poison Taster's Cape
0x2A4D,1, --Artful Belt for Earthy Belt
0x32C9,1, --Augur's Gaiters for Shrewd Pumps
0x2948,1, --Auspex Slops for Bahram Cuisses
0x2916,1, --Ayao's Gages for Bricta's Cuffs
0x29B0,1, --Cleric's Briault +2 for Cobra Unit Robe
0x299C,1, --Cleric's Cap +2 for Cobra Unit Cloche
0x29C4,1, --Cleric's Mitts +2 for Cobra Unit Gloves
0x29D8,1, --Cleric's Pantaloons +2 for Cobra Unit Trews
0x29EC,1, --Cleric's Duckbills +2 for Cobra Unit Crackows
0x6FD8,1, --Cornflower Cape for Ixion Cape
0x2D28,1, --Pedant Cape for Ixion Cloak
0x2870,1, --Ghadhab Nails for Karasutengu Kogake
0x2AFF,1, --Letalis Mantle for Cuchulain's Mantle
0x3801,1, --Loki's Kaftan for Zahak's Mail
0x2A51,1, --Maniacus Sash for Capricornian Rope
0x299B,1, --Melee Crown +2 for Cobra Unit Cap
0x29AF,1, --Melee Cyclas +2 for Cobra Unit Harness
0x29EB,1, --Melee Gaiters +2 for Cobra Unit Leggings
0x29C3,1, --Melee Gloves +2 for Cobra Unit Mittens
0x29D7,1, --Melee Hose +2 for Cobra Unit Subligar
0x2EB2,1, --Nebula Slops for Sangoma Lappa
0x28CD,1, --Nemetona Cap for Spurrer Beret
0x3705,1, --Serpentes Sabots for Setanta's Ledesens
0x299D,1, --Sorcerer's Petasos +2  for Ree's Headgear
0x29F8,1, --Summoner's Pigaches +2 for Koschei Crackows
0x2B05,1, --Taubran Cape for Hecate's Cape
0x35DF,1, --Timarli Jawshan for Avalon Breastplate
0x2E16,1, --Twilight Helm for Nocturnus Helm
0x2C62,1, --Twilight Mail for Nocturnus Mail
0x29DC,1, --Valor Breeches +2 for Iron Ram Greaves
0x29A0,1, --Valor Coronet +2  for Iron Ram Sallet
0x29C8,1, --Valor Gauntlets +2  for Iron Ram Dastanas
0x29F0,1, --Valor Leggings +2  for Iron Ram Hose
0x29B4,1, --Valor Surcoat +2  for Iron Ram Hauberk
0x2CF2,1, --Varangian Helm for Zha'Go's Barbut
0x2C5F,1, --Velox Harness for Antares Harness
0x2A52,1, --Wanion Belt for Crimson Belt
0x4991,1 --Cantabank's Horn for Cradle Horn
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
