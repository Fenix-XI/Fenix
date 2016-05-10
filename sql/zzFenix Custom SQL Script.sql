-- Moogle Fix for Colosseum
UPDATE zone_settings set misc = 32 where zoneid = '71';

-- ----------------------------
-- Fenix Custom WS Levels
-- ----------------------------
update weapon_skills set skilllevel = 292 where weaponskillid = '13'; #Tornado Kick w/o DM earring
update weapon_skills set skilllevel = 297 where weaponskillid = '225'; #Chant du Cygne w/o DM earring
update weapon_skills set skilllevel = 292 where weaponskillid = '45'; #Atonement for use with capped sword and sword merits
update weapon_skills set skilllevel = 285 where weaponskillid = '46'; #Expiacion w/o DM earring
update weapon_skills set skilllevel = 297 where weaponskillid = '47'; #Sanguine Blade w/o DM earring
update weapon_skills set skilllevel = 299 where weaponskillid = '91'; #Fell Cleave w/o DM earring
update weapon_skills set skilllevel = 299 where weaponskillid = '107'; #Infernal Scythe w/o DM earring
update weapon_skills set skilllevel = 299 where weaponskillid = '123'; #Sonic Thrust w/o DM earring
update weapon_skills set skilllevel = 299 where weaponskillid = '155'; #Tachi:Ageha w/o DM earring
update weapon_skills set skilllevel = 279 where weaponskillid = '172'; #Flash Nova so WHM can use
update weapon_skills set skilllevel = 263 where weaponskillid = '189'; #Cataclysm  w/o DM earring
update weapon_skills set skilllevel = 273 where weaponskillid = '219'; #Numbing Shot so COR can use

-- ----------------------------
-- Fenix Custom Items http://Fenix-ffxi.wikia.com/wiki/Custom_Items
-- ----------------------------

-- Judge's Helm Buffs by Froofles
INSERT INTO item_mods(itemId,modId,value) VALUES(12523,368,1000);
INSERT INTO item_mods(itemId,modId,value) VALUES(12523,369,100);
INSERT INTO item_mods(itemId,modId,value) VALUES(12523,370,100);

-- Ridill for BLU

UPDATE item_armor set jobs = 36257 where itemId = '16555';

-- Skadi Gear for DNC

update item_armor set jobs = 328992 where itemId = '14550'; #Skadis Cuirie
update item_armor set jobs = 328992 where itemId = '14965'; #Skadis Bazubands
update item_armor set jobs = 328992 where itemId = '15629'; #Skadis Chausses
update item_armor set jobs = 328992 where itemId = '15715'; #Skadis Jambeaux
update item_armor set jobs = 328992 where itemId = '16088'; #Skadis Visor

-- Morrigan's Gear for SCH

update item_armor set jobs = 557080 where itemId = '14562'; #Morrigans Robe
update item_armor set jobs = 557080 where itemId = '14977'; #Morrigans Cuffs
update item_armor set jobs = 557080 where itemId = '15641'; #Morrigans Slops
update item_armor set jobs = 557080 where itemId = '15727'; #Morrigans Pigaches
update item_armor set jobs = 557080 where itemId = '16100'; #Morrigans Coronal

-- Relic Job Additions

update item_armor set jobs = 66560 where itemId = '18335'; #Ferdinand for COR
update item_armor set jobs = 66560 where itemId = '18336'; #Annihilator for COR
update item_armor set jobs = 262704 where itemId = '18269'; #Batardeau for DNC
update item_armor set jobs = 262704 where itemId = '18270'; #Mandau for DNC
update item_armor set jobs = 131074 where itemId = '18263'; #Caestus for PUP
update item_armor set jobs = 131074 where itemId = '18264'; #Spharai for PUP
update item_armor set jobs = 32848 where itemId = '18275'; #Caliburn for BLU
update item_armor set jobs = 32848 where itemId = '18276'; #Excalibur for BLU

-- Mjollnir

INSERT INTO item_mods (itemid,modId,value) Values(18324,519,10); #cure cast time down 10%
INSERT INTO item_mods (itemid,modId,value) Values(18324,369,1); #refresh +1
INSERT INTO item_mods (itemid,modId,value) Values(18324,374,15); #cure potency +15%

-- Claustrum

INSERT INTO item_mods (itemid,modId,value) Values(18330,369,1); #Refresh +1
INSERT INTO item_mods (itemid,modId,value) Values(18330,346,3); #avatar perp -3
INSERT INTO item_mods (itemid,modId,value) Values(18330,543,2); #elemental affinity DMG +2
INSERT INTO item_mods (itemid,modId,value) Values(18330,552,2); #elemental affinity acc +2
INSERT INTO item_mods (itemid,modId,value) Values(18330,71,10); #HMP +10
INSERT INTO item_mods (itemid,modId,value) Values(18330,12,5); #INT +5
INSERT INTO item_mods (itemid,modId,value) Values(18330,13,5); #MND +5
INSERT INTO item_mods (itemid,modId,value) Values(18330,374,10); #Cure Potency +10
INSERT INTO item_mods (itemid,modId,value) Values(18330,566,1); #Iridesence

-- Chatoyant Staff Affinity while it's broken

-- INSERT INTO `item_mods` VALUES (18633,347,3); # Fire Elemental Damage +2
-- INSERT INTO `item_mods` VALUES (18633,348,3); # Earth Elemental Damage +2
-- INSERT INTO `item_mods` VALUES (18633,349,3); # Water Elemental Damage +2
-- INSERT INTO `item_mods` VALUES (18633,350,3); # Ice Elemental Damage +2
-- INSERT INTO `item_mods` VALUES (18633,351,3); # Thunder Elemental Damage +2
-- INSERT INTO `item_mods` VALUES (18633,352,3); # Wind Elemental Damage +2
-- INSERT INTO `item_mods` VALUES (18633,353,3); # Light Elemental Damage +2
-- INSERT INTO `item_mods` VALUES (18633,354,3); # Darkness Elemental Damage +2
-- INSERT INTO `item_mods` VALUES (18633,544,3); # Fire Elemental Accuracy +2
-- INSERT INTO `item_mods` VALUES (18633,545,3); # Earth Elemental Accuracy +2
-- INSERT INTO `item_mods` VALUES (18633,546,3); # Water Elemental Accuracy +2
-- INSERT INTO `item_mods` VALUES (18633,547,3); # Ice Elemental Accuracy +2
-- INSERT INTO `item_mods` VALUES (18633,548,3); # Thunder Elemental Accuracy +2
-- INSERT INTO `item_mods` VALUES (18633,549,3); # Wind Elemental Accuracy +2
-- INSERT INTO `item_mods` VALUES (18633,550,3); # Light Elemental Accuracy +2
-- INSERT INTO `item_mods` VALUES (18633,551,3); # Darkness Elemental Accuracy +2

-- Iridal Staff Affinity while it's broken

-- INSERT INTO `item_mods` VALUES (18632,347,3); # Fire Elemental Damage +1
-- INSERT INTO `item_mods` VALUES (18632,348,3); # Earth Elemental Damage +1
-- INSERT INTO `item_mods` VALUES (18632,349,3); # Water Elemental Damage +1
-- INSERT INTO `item_mods` VALUES (18632,350,3); # Ice Elemental Damage +1
-- INSERT INTO `item_mods` VALUES (18632,351,3); # Thunder Elemental Damage +1
-- INSERT INTO `item_mods` VALUES (18632,352,3); # Wind Elemental Damage +1
-- INSERT INTO `item_mods` VALUES (18632,353,3); # Light Elemental Damage +1
-- INSERT INTO `item_mods` VALUES (18632,354,3); # Darkness Elemental Damage +1
-- INSERT INTO `item_mods` VALUES (18632,544,3); # Fire Elemental Accuracy +1
-- INSERT INTO `item_mods` VALUES (18632,545,3); # Earth Elemental Accuracy +1
-- INSERT INTO `item_mods` VALUES (18632,546,3); # Water Elemental Accuracy +1
-- INSERT INTO `item_mods` VALUES (18632,547,3); # Ice Elemental Accuracy +1
-- INSERT INTO `item_mods` VALUES (18632,548,3); # Thunder Elemental Accuracy +1
-- INSERT INTO `item_mods` VALUES (18632,549,3); # Wind Elemental Accuracy +1
-- INSERT INTO `item_mods` VALUES (18632,550,3); # Light Elemental Accuracy +1
-- INSERT INTO `item_mods` VALUES (18632,551,3); # Darkness Elemental Accuracy +1

-- Vivid Strap

INSERT INTO item_mods (itemid,modId,value) Values(19049,12,2); #INT +2
INSERT INTO item_mods (itemid,modId,value) Values(19049,13,2); #MND +2
INSERT INTO item_mods (itemid,modId,value) Values(19049,7,20); #Converts 20 HP/MP
INSERT INTO item_mods (itemid,modId,value) Values(19049,30,2); #MACC +2

-- Maat's Cap

INSERT INTO item_mods (itemid,modId,value) Values(15194,421,7); #CRIT DMG +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,170,7); #Fast Cast +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,71,7); #HMP +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,269,7); #Conserve MP +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,291,7); #Counter +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,29,7); #MDB +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,315,7); #Enhance Drain/Aspir +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,224,7); #Vermin Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,225,7); #Bird Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,226,7); #Amorph Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,227,7); #Lizard Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,228,7); #Aquan Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,229,7); #Plantoid Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,230,7); #Beast Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,231,7); #Undead Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,232,7); #Arcana Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,233,7); #Dragon Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,234,7); #Demon Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,235,7); #Empty Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,236,7); #Humanoid Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,237,7); #Lumorian Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,238,7); #Luminion Killer +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,168,7); #Spell interuption Rate +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,365,7); #Snapshot +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,73,7); #Store TP +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,384,7); #Haste +7
INSERT INTO item_mods (itemid,modId,value) Values(15194,289,7); #Subtle Blow +7

-- Homam Corazza

UPDATE item_mods set value = 5 where itemid = '14488' and modid = '302'; #Triple Attack +5

-- ----------------------------
-- Custom NPCs
-- ----------------------------

-- @craft
INSERT INTO npc_list VALUES (17068570,'Woodworking','Woodworking',192,14.000,0.000,-19.000,32769,50,50,0,0,0,0,27,0x0100060100107520753000400850006000700000,0,'TOAU');
INSERT INTO npc_list VALUES (17068571,'Clothcraft','Clothcraft',192,0.000,0.000,-19.000,32769,40,40,0, 0,0,0,27,0x010004077710772017300E401455000600070000,0,'TOAU');
INSERT INTO npc_list VALUES (17068572,'Leathercraft','Leathercraft',192,-14.000,0.000,-19.000,32769,40,40,0,0,0,0,27,0x0000C80600000000000000000000000000000000,0,'TOAU');
INSERT INTO npc_list VALUES (17068573,'Bonecraft','Bonecraft',254,-21.000,0.000,-19.000,32769,40,40,0,0,0,0,27,0x01000D0279107920AD30AD40AD50006000700000,0,'TOAU');
INSERT INTO npc_list VALUES (17068574,'Smithing','Smithing',254,-21.000,0.000,16.000,32769,40,40,0,0,0,0,27,0x00003F0000000000000000000000000000000000,0,'TOAU');
INSERT INTO npc_list VALUES (17068575,'Goldsmithing','Goldsmithing',67,-14.000,0.000,19.000,32769,40,40,0,0,0,0,27,0x01000D027D107D20003006400850006000700000,0,'TOAU');
INSERT INTO npc_list VALUES (17068576,'Cooking','Cooking',67,0.000,0.000,19.000,32769,40,40,0,0,0,0,27,0x010005077C107C20003074404650AC6000700000,0,'TOAU');
INSERT INTO npc_list VALUES (17068577,'Alchemy','Alchemy',67,14.000,0.000,19.000,32769,40,40,0,0,0,0,27,0x0000E20000000000000000000000000000000000,0,'TOAU');
INSERT INTO npc_list VALUES (17068578,'Crystal','Crystal',124,21.000,0.000,0.000,23769,40,40,0,0,0,0,27,0x0000330000000000000000000000000000000000,0,'TOAU');
INSERT INTO npc_list VALUES (17068579,'AH','AH',6,-24.000,0.000,0.000,32769,40,40,0,0,0,0,27,0x00007E0000000000000000000000000000000000,0,'TOAU');
INSERT INTO npc_list VALUES (17068580,'Moogle','Moogle',10,-10.000,0.000,-1.000,32769,40,40,0,0,0,0,27,0x0000520000000000000000000000000000000000,0,'TOAU');

-- @reward
INSERT INTO npc_list VALUES (17686595,'Tier1','Tier1',165,-634.000,-19.000,-510.000,0,40,40,0,0,32,0,27,0x00003C0000000000000000000000000000000000,0,'WOTG'); 
INSERT INTO npc_list VALUES (17686596,'Tier2','Tier2',165,-636.000,-19.000,-510.000,0,40,40,0,0,32,0,27,0x0000A20500000000000000000000000000000000,0,'WOTG');
INSERT INTO npc_list VALUES (17686597,'Tier3','Tier3',165,-638.000,-19.000,-510.000,0,40,40,0,0,32,0,27,0x0000FE0500000000000000000000000000000000,0,'WOTG');
INSERT INTO npc_list VALUES (17686598,'Reward','Reward',165,-640.000,-19.000,-510.000,0,40,40,0,0,32,0,27,0x0000520000000000000000000000000000000000,0,'WOTG');
INSERT INTO npc_list VALUES (17686599,'Tier32','Tier32',165,-637.000,-19.000,-512.000,0,40,40,0,0, 32,0,27,0x010005017710AD208730AC40AD50006007000000,0,'WOTG');
INSERT INTO npc_list VALUES (17686600,'Tier4','Tier4',165,-642.000,-19.000,-510.000,0,40,40,0,0,32,0,27,0x00006E0900000000000000000000000000000000,0,'WOTG');
INSERT INTO npc_list VALUES (17686601,'Tier42','Tier42',165,-641.000,-19.000,-512.000,0,40,40,0,0,32,0,27,0x00006E0900000000000000000000000000000000,0,'WOTG');
INSERT INTO npc_list VALUES (17686643,'PLDAF1','PLDAF1',48,-645.000,-19.000,-469.000,0,40,40,0,0,32,0,27,0x0000400000000000000000000000000000000000,0,'WOTG');
INSERT INTO npc_list VALUES (17686645,'CORAF1','CORAF1',66,-635.000,-19.000,-469.000,0,40,40,0,0,32,0,27,0x0000050600000000000000000000000000000000,0,'WOTG');
INSERT INTO npc_list VALUES (17686646,'SCHAF1','SCHAF1',61,-629.000,-19.000,-471.000,0,40,40,0,0,32,0,27,0x01000F02D610D620D630D640D650006000700000,0,'WOTG');
INSERT INTO npc_list VALUES (17686647,'BLUAF1','BLUAF1',70,-624.000,-19.000,-472.000,0,40,40,0,0,32,0,27,0x01000201A510A520AB30A540AB50776100700000,0,'WOTG');

-- ----------------------------
-- Custom Synth Recipes http://Fenix-ffxi.wikia.com/wiki/Custom_Recipes
-- ----------------------------
INSERT INTO synth_recipes VALUES (9000,1,0,0,0,0,0,0,102,0,0,4100,4242,14640,0,0,0,0,0,0,0,747,747,747,1300,1,1,2,1);#snow ring desynth retail
INSERT INTO synth_recipes VALUES (9001,1,0,0,0,0,0,0,102,0,0,4100,4242,14630,0,0,0,0,0,0,0,747,747,747,1299,1,1,2,1);#flame ring desynth retail
INSERT INTO synth_recipes VALUES (9002,1,0,0,0,0,0,0,102,0,0,4100,4242,14632,0,0,0,0,0,0,0,747,747,747,1304,1,1,2,1);#aqua ring desynth retail
INSERT INTO synth_recipes VALUES (9003,1,0,0,0,0,0,0,102,0,0,4100,4242,14636,0,0,0,0,0,0,0,747,747,747,1301,1,1,2,1);#breeze ring desynth retail
INSERT INTO synth_recipes VALUES (9004,1,0,0,0,0,0,0,102,0,0,4100,4242,14644,0,0,0,0,0,0,0,747,747,747,1306,1,1,2,1);#dark ring desynth retail
INSERT INTO synth_recipes VALUES (9005,1,0,0,0,0,0,0,102,0,0,4100,4242,14642,0,0,0,0,0,0,0,747,747,747,1305,1,1,2,1);#light ring desynth retail
INSERT INTO synth_recipes VALUES (9006,1,0,0,0,0,0,0,102,0,0,4100,4242,14634,0,0,0,0,0,0,0,747,747,747,1302,1,1,2,1);#soil ring desynth retail
INSERT INTO synth_recipes VALUES (9007,1,0,0,0,0,0,0,102,0,0,4100,4242,14638,0,0,0,0,0,0,0,747,747,747,1303,1,1,2,1);#thunder ring desynth retail
INSERT INTO synth_recipes VALUES (9009,1,0,0,0,0,0,60,0,98,0,4100,4242,12420,0,0,0,0,0,0,0,914,1225,654,655,1,6,1,1);#adaman barbuta desynth retail
INSERT INTO synth_recipes VALUES (9010,1,0,0,0,0,0,60,0,103,0,4100,4242,12548,0,0,0,0,0,0,0,855,1225,654,655,1,6,2,2);#adaman cuirass desynth retail
INSERT INTO synth_recipes VALUES (9011,1,0,0,0,0,0,60,0,102,0,4100,4242,12676,0,0,0,0,0,0,0,914,1225,654,655,1,6,1,1);#adaman gauntlets desynth retail
INSERT INTO synth_recipes VALUES (9012,1,0,0,0,0,0,60,0,100,0,4100,4242,12932,0,0,0,0,0,0,0,855,1225,654,655,1,6,2,1);#adaman sabatons desynth retail
INSERT INTO synth_recipes VALUES (9013,1,0,0,0,0,0,0,0,0,71,4100,4242,17357,0,0,0,0,0,0,0,719,719,927,927,1,2,1,1);#ebony harp desynth
INSERT INTO synth_recipes VALUES (9014,1,0,20,0,100,0,0,40,0,0,4102,4244,760,828,828,850,850,1767,2113,2476,16365,16366,16366,16366,1,1,1,1);#argent hose retail
INSERT INTO synth_recipes VALUES (9015,1,0,0,0,0,0,94,45,0,0,4096,4238,879,2850,18405,0,0,0,0,0,18873,18874,18874,18874,1,1,1,1);#brise-os retail
INSERT INTO synth_recipes VALUES (9016,1,0,0,0,60,0,0,0,0,100,4099,4241,720,725,2010,0,0,0,0,0,3678,3678,3678,3678,1,1,1,1);#recital bench retail
INSERT INTO synth_recipes VALUES (9017,1,0,0,0,0,74,0,0,0,0,4096,4238,610,626,936,4366,4378,5755,0,0,5760,5761,5761,5761,1,1,1,1);#Kohlrouladen retail
INSERT INTO synth_recipes VALUES (9018,1,0,0,0,0,103,0,0,0,0,4096,4238,615,627,2237,4509,5568,5661,0,0,5922,5923,5923,5923,33,33,66,99);#Walnut Cookie retail
INSERT INTO synth_recipes VALUES (9019,1,0,0,0,100,0,0,0,0,0,4102,4244,15435,15436,15437,15438,15439,15440,15441,15442,28419,28419,28419,28419,1,1,1,1);#Hachirin-no-Obi Fenix
INSERT INTO synth_recipes VALUES (9020,1,0,0,0,0,0,0,0,0,102,4102,4244,17546,17548,17550,17552,17554,17556,17558,17560,18633,18633,18633,18633,1,1,1,1); #Chatoyant Staff Fenix
INSERT INTO synth_recipes VALUES (9021,1,0,0,0,0,0,0,0,0,102,4102,4244,17545,17547,17549,17551,17553,17555,17557,17559,18632,18632,18632,18632,1,1,1,1); #Iridal Staff Fenix

-- ----------------------------
-- Custom Drops http://Fenix-ffxi.wikia.com/wiki/Custom_Drops
-- ----------------------------

-- Item additions

INSERT INTO mob_droplist VALUES ('1607', '0', '15817', '450');
INSERT INTO mob_droplist VALUES ('1609', '0', '15917', '250');
INSERT INTO mob_droplist VALUES ('1609', '0', '19163', '250');
INSERT INTO mob_droplist VALUES ('1609', '0', '11354', '125');
INSERT INTO mob_droplist VALUES ('3387', '0', '13514', '200'); #Stroper Chyme Archers Ring
INSERT INTO mob_droplist VALUES ('837','0','2477','600'); #Ebony Pudding Soul Plate
INSERT INTO mob_droplist VALUES ('837','0','2477','350'); #Ebony Pudding Soul Plate 
INSERT INTO mob_droplist VALUES ('1554','0','2477','600'); #Greater Colibri Soul Plate
INSERT INTO mob_droplist VALUES ('1554','0','2477','350'); #Greater Colibri Soul Plate 

 
-- Rate and item change
 
update mob_droplist set rate = '350', itemid = '2435' where dropid = '4033' and itemid = '860' and rate = '380';
update mob_droplist set rate = '350', itemid = '18447' where dropid = '4033' and itemid = '658' and rate = '40';
update mob_droplist set rate = '350', itemid = '2430' where dropid = '4033' and itemid = '903' and rate = '20';
update mob_droplist set rate = '350', itemid = '14550' where dropid = '4033' and itemid = '1133' and rate = '10';
update mob_droplist set rate = '250', itemid = '14562' where dropid = '4033' and itemid = '1816' and rate = '80';
update mob_droplist set rate = '250', itemid = '14558' where dropid = '4033' and itemid = '4272' and rate = '30';
update mob_droplist set rate = '85', itemid = '17440' where dropid = '4033' and itemid = '1712' and rate = '1000';
update mob_droplist set rate = '250', itemid = '14554' where dropid = '4033' and itemid = '1712' and rate = '500';
update mob_droplist set rate = '250', itemid = '14568' where dropid = '4033' and itemid = '1713' and rate = '1000';
update mob_droplist set rate = '250', itemid = '14546' where dropid = '4033' and itemid = '1713' and rate = '500';
update mob_droplist set rate = '450', itemid = '11631' where dropid = '1852' and itemid = '647' and rate = '1000';
update mob_droplist set rate = '450', itemid = '15859' where dropid = '1852' and itemid = '658' and rate = '40';
update mob_droplist set rate = '450', itemid = '11632' where dropid = '1852' and itemid = '722' and rate = '10';
update mob_droplist set rate = '250', itemid = '16160' where dropid = '1852' and itemid = '836' and rate = '70';
update mob_droplist set rate = '95', itemid = '14577' where dropid = '1852' and itemid = '837' and rate = '70';
update mob_droplist set rate = '95', itemid = '16100' where dropid = '1852' and itemid = '860' and rate = '380';
update mob_droplist set rate = '45', itemid = '17440' where dropid = '1852' and itemid = '903' and rate = '20';
update mob_droplist set rate = '250', itemid = '11631' where dropid = '1852' and itemid = '1133' and rate = '10';
update mob_droplist set rate = '250', itemid = '15859' where dropid = '1852' and itemid = '1311' and rate = '20';
update mob_droplist set rate = '250', itemid = '11632' where dropid = '1852' and itemid = '1816' and rate = '80';
update mob_droplist set rate = '450', itemid = '11628' where dropid = '3522' and itemid = '722' and rate = '90';
update mob_droplist set rate = '450', itemid = '11633' where dropid = '3522' and itemid = '836' and rate = '30';
update mob_droplist set rate = '250', itemid = '16159' where dropid = '3522' and itemid = '655' and rate = '60';
update mob_droplist set rate = '125', itemid = '15629' where dropid = '3522' and itemid = '658' and rate = '30';
update mob_droplist set rate = '95', itemid = '16117' where dropid = '3522' and itemid = '837' and rate = '70';
update mob_droplist set rate = '45', itemid = '17440' where dropid = '3522' and itemid = '860' and rate = '130';
update mob_droplist set rate = '250', itemid = '11628' where dropid = '3522' and itemid = '903' and rate = '60';
update mob_droplist set rate = '250', itemid = '11633' where dropid = '3522' and itemid = '1110' and rate = '60';
update mob_droplist set rate = '250', itemid = '14977' where dropid = '3522' and itemid = '1133' and rate = '60';
update mob_droplist set rate = '150', itemid = '15719' where dropid = '3522' and itemid = '1313' and rate = '90';
update mob_droplist set rate = '750', itemid = '4146' where dropid = '24' and itemid = '646' and rate = '1060';
update mob_droplist set rate = '740', itemid = '4146' where dropid = '24' and itemid = '646' and rate = '530';
update mob_droplist set rate = '730', itemid = '4146' where dropid = '24' and itemid = '646' and rate = '350';
update mob_droplist set rate = '500', itemid = '4146' where dropid = '918' and itemid = '16555' and rate = '180';
update mob_droplist set rate = '490', itemid = '4146' where dropid = '918' and itemid = '4272' and rate = '30';
update mob_droplist set rate = '480', itemid = '4146' where dropid = '918' and itemid = '1133' and rate = '20';
update mob_droplist set rate = '470', itemid = '4146' where dropid = '918' and itemid = '867' and rate = '750';
update mob_droplist set rate = '95', itemid = '2431' where dropid = '918' and itemid = '903' and rate = '900';
update mob_droplist set rate = '350', itemid = '4146' where dropid = '195' and itemid = '646' and rate = '890';
update mob_droplist set rate = '345', itemid = '4146' where dropid = '195' and itemid = '646' and rate = '450';
update mob_droplist set rate = '340', itemid = '4146' where dropid = '195' and itemid = '646' and rate = '300';
update mob_droplist set rate = '335', itemid = '4146' where dropid = '195' and itemid = '646' and rate = '220';
update mob_droplist set rate = '200', itemid = '1337' where dropid = '2425' and itemid = '865' and rate = '350';
update mob_droplist set rate = '150', itemid = '2436' where dropid = '2425' and itemid = '865' and rate = '170';
update mob_droplist set rate = '95', itemid = '16096' where dropid = '2425' and itemid = '1133' and rate = '500';
update mob_droplist set rate = '50', itemid = '16555' where dropid = '2425' and itemid = '4272' and rate = '130';
update mob_droplist set rate = '25', itemid = '1454' where dropid = '824' and itemid = '1453' and rate = '180';
update mob_droplist set rate = '25', itemid = '1451' where dropid = '824' and itemid = '1450' and rate = '350';
update mob_droplist set rate = '25', itemid = '1457' where dropid = '824' and itemid = '1456' and rate = '130';
update mob_droplist set rate = '450', itemid = '18121' where dropid = '824' and itemid = '3429' and rate = '10';
update mob_droplist set rate = '200', itemid = '14808' where dropid = '1836' and itemid = '1911' and rate = '490';
update mob_droplist set rate = '200', itemid = '14809' where dropid = '1836' and itemid = '1912' and rate = '490';
update mob_droplist set rate = '550', itemid = '18398' where dropid = '4' and itemid = '1913' and rate = '300';
update mob_droplist set rate = '350', itemid = '15548' where dropid = '4' and itemid = '1914' and rate = '440';
update mob_droplist set rate = '350', itemid = '15549' where dropid = '4' and itemid = '1915' and rate = '130';
update mob_droplist set rate = '350', itemid = '15550' where dropid = '4' and itemid = '1916' and rate = '1000';
update mob_droplist set rate = '250', itemid = '18245' where dropid = '4' and itemid = '1917' and rate = '1000';
update mob_droplist set rate = '200', itemid = '17810' where dropid = '4' and itemid = '1918' and rate = '1000';
update mob_droplist set rate = '150', itemid = '15458' where dropid = '4' and itemid = '1919' and rate = '600';
update mob_droplist set rate = '750', itemid = '4146' where dropid = '1099' and itemid = '722' and rate = '50';
update mob_droplist set rate = '740', itemid = '4146' where dropid = '1099' and itemid = '901' and rate = '290';
update mob_droplist set rate = '750', itemid = '4146' where dropid = '440' and itemid = '722' and rate = '200';
update mob_droplist set rate = '740', itemid = '4146' where dropid = '440' and itemid = '837' and rate = '230';
update mob_droplist set rate = '750', itemid = '4146' where dropid = '3409' and itemid = '1110' and rate = '230';
update mob_droplist set rate = '740', itemid = '4146' where dropid = '3409' and itemid = '1313' and rate = '710';
update mob_droplist set rate = '750', itemid = '4146' where dropid = '3117' and itemid = '4272' and rate = '230';
update mob_droplist set rate = '740', itemid = '4146' where dropid = '3117' and itemid = '1133' and rate = '250';
update mob_droplist set rate = '750', itemid = '4146' where dropid = '4372' and itemid = '4748' and rate = '170';
update mob_droplist set rate = '740', itemid = '4146' where dropid = '4372' and itemid = '4748' and rate = '80';
update mob_droplist set rate = '450', itemid = '4146' where dropid = '4372' and itemid = '4818' and rate = '300';
update mob_droplist set rate = '440', itemid = '4146' where dropid = '4372' and itemid = '4818' and rate = '150';
update mob_droplist set rate = '300', itemid = '15833' where dropid = '502' and itemid = '2168' and rate = '1000';
update mob_droplist set rate = '200', itemid = '11544' where dropid = '502' and itemid = '2168' and rate = '500';
update mob_droplist set rate = '100', itemid = '19212' where dropid = '502' and itemid = '2169' and rate = '1000';
update mob_droplist set rate = '250', itemid = '11629' where dropid = '1893' and itemid = '2371' and rate = '1000';
update mob_droplist set rate = '135', itemid = '16001' where dropid = '1893' and itemid = '2372' and rate = '500';
update mob_droplist set rate = '450', itemid = '15948' where dropid = '2237' and itemid = '2357' and rate = '80';
update mob_droplist set rate = '450', itemid = '11635' where dropid = '2237' and itemid = '14959' and rate = '100';
update mob_droplist set rate = '450', itemid = '19048' where dropid = '1607' and itemid = '2355' and rate = '80';
update mob_droplist set rate = '350', itemid = '11634' where dropid = '1607' and itemid = '15791' and rate = '100';
update mob_droplist set rate = '1000', itemid = '3503' where dropid = '2741' and itemid = '2158' and rate = '1000';
update mob_droplist set rate = '450', itemid = '11288' where dropid = '2741' and itemid = '2168' and rate = '1000';
update mob_droplist set rate = '550', itemid = '19030' where dropid = '2741' and itemid = '2169' and rate = '1000';
update mob_droplist set rate = '200', itemid = '11289' where dropid = '2741' and itemid = '2172' and rate = '1000';
update mob_droplist set rate = '200', itemid = '16242' where dropid = '2741' and itemid = '3503' and rate = '1000';
update mob_droplist set rate = '155', itemid = '15918' where dropid = '2741' and itemid = '3503' and rate = '500';
update mob_droplist set rate = '85', itemid = '11501' where dropid = '2741' and itemid = '18447' and rate = '670';

 
-- Rate change only
 
update mob_droplist set rate = '450' where dropid = '1852' and itemid = '17586' and rate = '250';
update mob_droplist set rate = '450' where dropid = '3522' and itemid = '15322' and rate = '260';
update mob_droplist set rate = '550' where dropid = '3522' and itemid = '14869' and rate = '300';
update mob_droplist set rate = '550' where dropid = '4033' and itemid = '15175' and rate = '100';
update mob_droplist set rate = '450' where dropid = '1936' and itemid = '13415' and rate = '950';
update mob_droplist set rate = '450' where dropid = '1936' and itemid = '1527' and rate = '670';
update mob_droplist set rate = '250' where dropid = '1936' and itemid = '1322' and rate = '320';
update mob_droplist set rate = '100' where dropid = '1936' and itemid = '1322' and rate = '160';
update mob_droplist set rate = '350' where dropid = '1936' and itemid = '1328' and rate = '270';
update mob_droplist set rate = '100' where dropid = '1936' and itemid = '1328' and rate = '130';
update mob_droplist set rate = '350' where dropid = '1936' and itemid = '1334' and rate = '380';
update mob_droplist set rate = '100' where dropid = '1936' and itemid = '1334' and rate = '190';
update mob_droplist set rate = '250' where dropid = '1936' and itemid = '1332' and rate = '290';
update mob_droplist set rate = '75' where dropid = '1936' and itemid = '1332' and rate = '140';
update mob_droplist set rate = '150' where dropid = '918' and itemid = '1321' and rate = '240';
update mob_droplist set rate = '150' where dropid = '918' and itemid = '1326' and rate = '310';
update mob_droplist set rate = '150' where dropid = '918' and itemid = '1328' and rate = '240';
update mob_droplist set rate = '200' where dropid = '918' and itemid = '1339' and rate = '410';
update mob_droplist set rate = '350' where dropid = '195' and itemid = '1318' and rate = '340';
update mob_droplist set rate = '250' where dropid = '195' and itemid = '1333' and rate = '270';
update mob_droplist set rate = '150' where dropid = '195' and itemid = '1325' and rate = '350';
update mob_droplist set rate = '100' where dropid = '195' and itemid = '1318' and rate = '170';
update mob_droplist set rate = '100' where dropid = '195' and itemid = '1325' and rate = '180';
update mob_droplist set rate = '100' where dropid = '195' and itemid = '1333' and rate = '140';
update mob_droplist set rate = '100' where dropid = '195' and itemid = '1335' and rate = '130';
update mob_droplist set rate = '150' where dropid = '824' and itemid = '14646' and rate = '210';
update mob_droplist set rate = '250' where dropid = '824' and itemid = '13658' and rate = '520';
update mob_droplist set rate = '100' where dropid = '1099' and itemid = '1331' and rate = '290';
update mob_droplist set rate = '25' where dropid = '1099' and itemid = '1331' and rate = '140';
update mob_droplist set rate = '150' where dropid = '1099' and itemid = '1326' and rate = '220';
update mob_droplist set rate = '50' where dropid = '1099' and itemid = '1326' and rate = '110';
update mob_droplist set rate = '200' where dropid = '1099' and itemid = '1338' and rate = '310';
update mob_droplist set rate = '75' where dropid = '1099' and itemid = '1338' and rate = '150';
update mob_droplist set rate = '200' where dropid = '1099' and itemid = '1324' and rate = '240';
update mob_droplist set rate = '75' where dropid = '1099' and itemid = '1324' and rate = '120';
update mob_droplist set rate = '200' where dropid = '3117' and itemid = '1336' and rate = '340';
update mob_droplist set rate = '75' where dropid = '3117' and itemid = '1336' and rate = '170';
update mob_droplist set rate = '200' where dropid = '3117' and itemid = '1314' and rate = '260';
update mob_droplist set rate = '75' where dropid = '3117' and itemid = '1314' and rate = '130';
update mob_droplist set rate = '200' where dropid = '3117' and itemid = '1329' and rate = '340';
update mob_droplist set rate = '75' where dropid = '3117' and itemid = '1329' and rate = '170';
update mob_droplist set rate = '150' where dropid = '3117' and itemid = '1327' and rate = '260';
update mob_droplist set rate = '50' where dropid = '3117' and itemid = '1327' and rate = '130';
update mob_droplist set rate = '100' where dropid = '3117' and itemid = '12690' and rate = '450';
update mob_droplist set rate = '200' where dropid = '3409' and itemid = '1316' and rate = '350';
update mob_droplist set rate = '75' where dropid = '3409' and itemid = '1316' and rate = '180';
update mob_droplist set rate = '200' where dropid = '3409' and itemid = '1343' and rate = '360';
update mob_droplist set rate = '75' where dropid = '3409' and itemid = '1343' and rate = '180';
update mob_droplist set rate = '150' where dropid = '3409' and itemid = '1319' and rate = '300';
update mob_droplist set rate = '50' where dropid = '3409' and itemid = '1319' and rate = '150';
update mob_droplist set rate = '150' where dropid = '3409' and itemid = '1327' and rate = '320';
update mob_droplist set rate = '50' where dropid = '3409' and itemid = '1327' and rate = '160';
update mob_droplist set rate = '200' where dropid = '440' and itemid = '1324' and rate = '290';
update mob_droplist set rate = '75' where dropid = '440' and itemid = '1324' and rate = '150';
update mob_droplist set rate = '200' where dropid = '440' and itemid = '1341' and rate = '340';
update mob_droplist set rate = '75' where dropid = '440' and itemid = '1341' and rate = '170';
update mob_droplist set rate = '150' where dropid = '440' and itemid = '1323' and rate = '160';
update mob_droplist set rate = '50' where dropid = '440' and itemid = '1323' and rate = '130';
update mob_droplist set rate = '150' where dropid = '440' and itemid = '1317' and rate = '260';
update mob_droplist set rate = '50' where dropid = '440' and itemid = '1317' and rate = '130';
update mob_droplist set rate = '100' where dropid = '440' and itemid = '12818' and rate = '460';
update mob_droplist set rate = '250' where dropid = '4372' and itemid = '1340' and rate = '280';
update mob_droplist set rate = '75' where dropid = '4372' and itemid = '1340' and rate = '140';
update mob_droplist set rate = '250' where dropid = '4372' and itemid = '1315' and rate = '400';
update mob_droplist set rate = '75' where dropid = '4372' and itemid = '1315' and rate = '200';
update mob_droplist set rate = '150' where dropid = '4372' and itemid = '1337' and rate = '260';
update mob_droplist set rate = '50' where dropid = '4372' and itemid = '1337' and rate = '130';
update mob_droplist set rate = '150' where dropid = '4372' and itemid = '12562' and rate = '390';
update mob_droplist set rate = '450' where dropid = '2741' and itemid = '18594' and rate = '660';
update mob_droplist set rate = '250' where dropid = '2741' and itemid = '18759' and rate = '670';
update mob_droplist set rate = '125' where dropid = '2741' and itemid = '11281' and rate = '680';

-- ----------------------------
-- Reduced Mob Levels In Deep Dungeons
-- ----------------------------

-- FeiYin
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "51", maxLevel = "54" WHERE g.zoneid = 204 AND s.mobname = "Balayang";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "56", maxLevel = "58" WHERE g.zoneid = 204 AND s.mobname = "Sentient_Carafe";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "55", maxLevel = "57" WHERE g.zoneid = 204 AND s.mobname = "Wekufe";


-- Bostaunieux Oubliette
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "55", maxLevel = "59" WHERE g.zoneid = 167 AND s.mobname = "Blind_Bat";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "64", maxLevel = "66" WHERE g.zoneid = 167 AND s.mobname = "Dabilla";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "60", maxLevel = "68" WHERE g.zoneid = 167 AND s.mobname = "Panna_Cotta";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "68", maxLevel = "70" WHERE g.zoneid = 167 AND s.mobname = "Nachtmahr";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "69", maxLevel = "74" WHERE g.zoneid = 167 AND s.mobname = "Wurdalak";

-- Toraimarai Canal
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "58", maxLevel = "60" WHERE g.zoneid = 169 AND s.mobname = "Deviling_Bats";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "60", maxLevel = "62" WHERE g.zoneid = 169 AND s.mobname = "Plunderer_Crab";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "57", maxLevel = "59" WHERE g.zoneid = 169 AND s.mobname = "Blackwater_Pugil";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "65", maxLevel = "67" WHERE g.zoneid = 169 AND s.mobname = "Starborer";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "65", maxLevel = "67" WHERE g.zoneid = 169 AND s.mobname = "Sodden_Bones";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "65", maxLevel = "67" WHERE g.zoneid = 169 AND s.mobname = "Drowned_Bones";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "64", maxLevel = "67" WHERE g.zoneid = 169 AND s.mobname = "Flume_Toad";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "65", maxLevel = "67" WHERE g.zoneid = 169 AND s.mobname = "Rapier_Scorpion";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "66", maxLevel = "69" WHERE g.zoneid = 169 AND s.mobname = "Poroggo_Excavator";

-- Garlaige Citadel
UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "56", maxLevel = "58" WHERE g.zoneid = 200 AND s.mobname = "Warden_Beetle";
UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "53", maxLevel = "55" WHERE g.zoneid = 200 AND s.mobname = "Fortalice_Bats";
UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "40", maxLevel = "43" WHERE g.zoneid = 200 AND s.mobname = "Donjon_Bat";

-- Crawlers' Nest
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "50", maxLevel = "53" WHERE g.zoneid = 197 AND s.mobname = "Dancing_Jewel";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "47", maxLevel = "49" WHERE g.zoneid = 197 AND s.mobname = "King_Crawler";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "51", maxLevel = "54" WHERE g.zoneid = 197 AND s.mobname = "Olid_Funguar";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "55", maxLevel = "57" WHERE g.zoneid = 197 AND s.mobname = "Vespo";

-- The Eldieme Necropolis
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "53", maxLevel = "55" WHERE g.zoneid = 195 AND s.mobname = "Nekros_Hound";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "60", maxLevel = "63" WHERE g.zoneid = 195 AND s.mobname = "Hellbound_Warrior";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "60", maxLevel = "63" WHERE g.zoneid = 195 AND s.mobname = "Hellbound_Warlock";

-- Dangruf_Wadi
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Couloir_Leech";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Fume_Lizard";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Witchetty_Grub";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Prim_Pika";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "16", maxLevel = "20" WHERE g.zoneid = 191 AND s.mobname = "Trimmer";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Natty_Gibbon";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Goblin_Headsman";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Goblin_Conjurer";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Goblin_Bladesmith";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Goblin_Bushwhacker";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Goblin_Brigand";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "21", maxLevel = "23" WHERE g.zoneid = 191 AND s.mobname = "Goblin_Healer";

-- Rangemount Pass
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "26", maxLevel = "30" WHERE g.zoneid = 166 AND s.mobname = "Goblin_Artificer";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "26", maxLevel = "30" WHERE g.zoneid = 166 AND s.mobname = "Goblin_Hoodoo";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "26", maxLevel = "30" WHERE g.zoneid = 166 AND s.mobname = "Goblin_Tanner";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "26", maxLevel = "30" WHERE g.zoneid = 166 AND s.mobname = "Goblin_Chaser";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "25", maxLevel = "28" WHERE g.zoneid = 166 AND s.mobname = "Bilesucker";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "42", maxLevel = "44" WHERE g.zoneid = 166 AND s.mobname = "Hovering_Oculus";

-- Gusgen Mines
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "26", maxLevel = "30" WHERE g.zoneid = 196 AND s.mobname = "Accursed_Soldier";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "23", maxLevel = "27" WHERE g.zoneid = 196 AND s.mobname = "Accursed_Sorcerer";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "27", maxLevel = "30" WHERE g.zoneid = 196 AND s.mobname = "Madfly";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "23", maxLevel = "26" WHERE g.zoneid = 196 AND s.mobname = "Rockmill";

-- Maze_of_Shakhrami
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "26", maxLevel = "29" WHERE g.zoneid = 198 AND s.mobname = "Warren_Bat";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "23", maxLevel = "26" WHERE g.zoneid = 198 AND s.mobname = "Chaser_Bats";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "24", maxLevel = "28" WHERE g.zoneid = 198 AND s.mobname = "Bleeder_Leech";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "29", maxLevel = "31" WHERE g.zoneid = 198 AND s.mobname = "Crypterpillar";

-- Ordelles_Caves
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "23", maxLevel = "26" WHERE g.zoneid = 193 AND s.mobname = "Buds_Bunny";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "29", maxLevel = "31" WHERE g.zoneid = 193 AND s.mobname = "Targe_Beetle";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "27", maxLevel = "29" WHERE g.zoneid = 193 AND s.mobname = "Swagger_Spruce";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "25", maxLevel = "27" WHERE g.zoneid = 193 AND s.mobname = "Bilis_Leech";

-- Outer Horutoto Ruins
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "15", maxLevel = "18" WHERE g.zoneid = 194 AND s.mobname = "Fetor_Bats";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "20", maxLevel = "23" WHERE g.zoneid = 194 AND s.mobname = "Thorn_Bat";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "23", maxLevel = "25" WHERE g.zoneid = 194 AND s.mobname = "Fuligo";

 -- Inner_Horutoto_Ruins
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "17", maxLevel = "20" WHERE g.zoneid = 192 AND s.mobname = "Covin_Bat";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "11", maxLevel = "16" WHERE g.zoneid = 192 AND s.mobname = "Deathwatch_Beetle";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "20", maxLevel = "23" WHERE g.zoneid = 192 AND s.mobname = "Goblin_Flesher";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "20", maxLevel = "23" WHERE g.zoneid = 192 AND s.mobname = "Goblin_Lurcher";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "20", maxLevel = "23" WHERE g.zoneid = 192 AND s.mobname = "Goblin_Metallurgist";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "20", maxLevel = "23" WHERE g.zoneid = 192 AND s.mobname = "Goblin_Trailblazer";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "25", maxLevel = "28" WHERE g.zoneid = 192 AND s.mobname = "Skinnymalinks";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "25", maxLevel = "28" WHERE g.zoneid = 192 AND s.mobname = "Skinnymajinx";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "12", maxLevel = "15" WHERE g.zoneid = 192 AND s.mobname = "Troika_Bats";

-- King_Ranperres_Tomb
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "62", maxLevel = "64" WHERE g.zoneid = 190 AND s.mobname = "Ogre_Bat";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "58", maxLevel = "60" WHERE g.zoneid = 190 AND s.mobname = "Ossuary_Worm";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "64", maxLevel = "66" WHERE g.zoneid = 190 AND s.mobname = "Bonnet_Beetle";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "63", maxLevel = "65" WHERE g.zoneid = 190 AND s.mobname = "Barrow_Scorpion";

-- Zeruhn_Mines
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "2", maxLevel = "4" WHERE g.zoneid = 172 AND s.mobname = "Colliery_Bat";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "3", maxLevel = "5" WHERE g.zoneid = 172 AND s.mobname = "Soot_Crab";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "3", maxLevel = "6" WHERE g.zoneid = 172 AND s.mobname = "Veindigger_Leech";

-- Korroloka_Tunnel
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "28", maxLevel = "31" WHERE g.zoneid = 173 AND s.mobname = "Spool_Leech";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "29", maxLevel = "32" WHERE g.zoneid = 173 AND s.mobname = "Lacerator";

 -- Boyahda tree
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "72", maxLevel = "75" WHERE g.zoneid = 153 AND s.mobname = "Mourning_Crawler";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "40", maxLevel = "43" WHERE g.zoneid = 153 AND s.mobname = "Snaggletooth_Peapuk";
 UPDATE mob_groups g JOIN mob_spawn_points s ON (g.groupid = s.groupid) SET minLevel = "72", maxLevel = "74" WHERE g.zoneid = 153 AND s.mobname = "Viseclaw";