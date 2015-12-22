-----------------------------------
-- Area: Provenance
-- @pos -640 -19 -509 222
-----------------------------------

function onTrigger(player,npc)

player:PrintToPlayer("Trade the base item to me to have points deducted and Reward item given!");
player:PrintToPlayer("Use the EXACT item and check currency price. All info on wiki. NO REFUNDS!");
player:PrintToPlayer("http://exodus-ffxi.wikia.com/wiki/Points_%26_Rewards");
end;

function onTrade(player,npc,trade)
balance_bayld = 0;
balance_mweya_plasm = 0;
balance_dominion_note = 0;

-------------DECLARING VALUES FOR EACH ITEM-------------------------------------------------------------------------------------
defending_ring = 18000; Martial_Abjuration_Body	= 6500;Martial_Abjuration_Head = 2500;Martial_Abjuration_Hands	= 2500;
Martial_Abjuration_Legs	= 3500;Martial_Abjuration_Feet	= 2500;Aquarian_Abjuration_Body	= 6500;Aquarian_Abjuration_Head	= 2500;
Aquarian_Abjuration_Hands	= 2500;Aquarian_Abjuration_Legs	= 3500;Aquarian_Abjuration_Feet	= 2500;Dryadic_Abjuration_Body	= 6500;
Dryadic_Abjuration_Head	= 2500;Dryadic_Abjuration_Hands	= 2500;Dryadic_Abjuration_Legs	= 3500;Dryadic_Abjuration_Feet	= 2500;
Earthen_Abjuration_Body	= 6500;Earthen_Abjuration_Head	= 2500;Earthen_Abjuration_Hands	= 2500;Earthen_Abjuration_Legs	= 3500;
Earthen_Abjuration_Feet	= 2500;Neptunal_Abjuration_Body	= 6500;Neptunal_Abjuration_Head	= 2500;Neptunal_Abjuration_Hands	= 2500;
Neptunal_Abjuration_Legs	= 3500;Neptunal_Abjuration_Feet	= 2500;Wyrmal_Abjuration_Body	= 6500;Wyrmal_Abjuration_Head	= 2500;
Wyrmal_Abjuration_Hands	= 2500;Wyrmal_Abjuration_Legs	= 3500;Wyrmal_Abjuration_Feet	= 2500;Seiryu_Kote	= 2000;
Byakko_Haidate	= 4000;Genbus_Kabuto	= 2000;Suzaku_Suneate	= 1000;Kirin_Osode	= 7500;Pixie_Earring	= 1500;Sipar	= 500;
Aegishjalmr	= 1500;Andvaranauts	= 500;Ridill	= 10000;Kirin_Pole	= 500;Hrotti	= 500;Wyrm_Beard	= 2000;Behemoth_Tongue	= 2000;
Adamantoise_Egg	= 2000;Shadow_Mantle	= 8000;Shadow_Ring	= 8000;Hope_Torque	= 4000;Faith_Torque	= 4000;Fortitude_Torque	= 4000;
Temperance_Torque	= 4000;Love_Torque	= 4000;Justice_Torque	= 4000;Prudence_Torque	= 4000;Altruistic_Cape	= 1500;
Merciful_Cape	= 1500;Astute_Cape	= 3000;Ninurta_Sash	= 10000;Aureole	=10000;Futsuno_Mitama	=10000;Bellona_Ring	= 8000;
Mars_Ring	= 8000;Minerva_Ring	= 5000;Raphaels_Rod	= 5000;Faith_Baghnakhs	= 2000;Fortitude_Axe	= 2000;Prudence_Rod	= 2000;
Hope_Staff	= 1000;Justice_Sword	= 2000;Love_Halberd	= 3000;Novio_Earring	= 8000;Novia_earring	=3000;Temperance_Axe	= 1500;
Askar_Korazin	= 6500;Askar_Zucchetto	= 2500;Askar_Manopolas	= 2500;Askar_Dirs	= 3500;Askar_Gambieras	= 2500;
Denali_Jacket	= 6500;Denali_Bonnet	= 2500;Denali_Wristbands	= 2500;Denali_Kecks	= 3500;Denali_Gamashes	= 2500;
Goliard_Saio	= 6500;Goliard_Chapeau	= 2500;Goliard_Cuffs	= 2500;Goliard_Trews	= 3500;Goliard_Clogs	= 2500;
Usukane_Haramaki	= 15000;Usukane_Somen	= 6500;Usukane_Gote	= 6500;Usukane_Hizayoroi	= 8500;
Usukane_Suneate	= 6500;Ares_Cuirass	= 15000;Ares_Mask	= 6500;Ares_Gauntlets	= 6500;Ares_Flanchard	= 8500;
Ares_Sollerets	= 6500;Marduks_Jubbah	= 15000;Marduks_Tiara	= 6500;Marduks_Dastanas	= 6500;
Marduks_Shalwar	= 8500;Marduks_Crackows	= 6500;Morrigans_Robe	= 15000;Morrigans_Coronal	= 6500;
Morrigans_Cuffs	= 6500;Morrigans_Slops	= 8500;Morrigans_Pigaches	= 6500;Animator	= 3000;
Aslan_Cape	= 3000;Buccaneers_Belt	= 3000;Delta_Earring	= 3000;Gleemans_Cape	= 3000;Iota_Ring	= 3000;
Kubira_Bead_Necklace	= 3000;Morganas_Choker	= 3000;Omega_Ring	= 3000;Ritter_Gorget	= 3000;
Nethercant_Chain	= 500;Nethereye_Chain	= 500;Netherfield_Chain	= 500;Netherpact_Chain	= 500;
Netherspirit_Chain	= 500;Rubber_Cap	= 500;Rubber_Chausses	= 500;Rubber_Harness	=500;Rubber_Gloves	= 500;
Rubber_Soles	= 500;Balrahns_Eyepatch	= 20000;Phantasmal_Abjuration_Body	= 12000;Phantasmal_Abjuration_Head	= 5500;
Phantasmal_Abjuration_Hands = 5500;Phantasmal_Abjuration_Legs	= 7000;Phantasmal_Abjuration_Feet	= 5500;
Hadean_Abjuration_Body	= 12000;Hadean_Abjuration_Head	= 5500;Hadean_Abjuration_Hands	= 5500;Hadean_Abjuration_Legs	= 7000;
Hadean_Abjuration_Feet	= 5500;Valhalla_Helm	= 12000;Valhalla_Breastplate	= 12000;Valkyries_Fork	= 10000;Hofud	= 10000;
Hauteclaire	= 5000;Seveneyes	=2000;Algol	= 2500;Alkalurops	 =4000;Shusui	= 1500;Enkidus_Cap	= 2000;
Enkidus_Harness	= 3000;Hachiryu_Suneate	= 6000;Oracles_Cap	= 2000;Aurum_Armet	= 2000;Foolkiller	= 1500;
Hachiryu_Haidate	= 10000;Oracles_Robe	= 3000;Pachipachio	= 1500;Antares	= 1500;Enforcer	= 1500;
Aurum_Cuirass	= 3000;Hachiryu_Kote = 6000;Hachiryu_Haramaki	= 16000;Dorje	= 5000;Nanatsusaya	= 8000;
Shenlongs_Baghnakhs	= 10000; Perdu_crossbow = 2500; Perdu_wand = 2500; Perdu_blade = 2500; Perdu_staff = 2500; 
Perdu_voulge = 2500; Perdu_hanger = 2500; Perdu_sword = 2500; Perdu_sickle = 2500; Perdu_bow = 2500; Hagun = 1000; Blau_dolch = 1000; Genbus_Shield = 1000;
Byakkos_Axe = 1000;Seiryus_Sword = 1000;Suzakus_Scythe = 500;Skadis_Cuirie = 15000;Skadis_Bazubands = 6500;Skadis_Visor = 6500; Witch_Sash = 1500;
Skadis_Jambeaux = 6500;Skadis_Chausses = 8500;Yigit_Turban = 2500;Yigit_Gomlek = 6500;Yigit_Gages = 2500;Yigit_Seraweels = 3500;Yigit_Crackows = 2500;
Pahluwan_Qalansuwa = 2500;Pahluwan_Khazagand = 6500;Pahluwan_Dastanas = 2500;Pahluwan_Seraweels =3500 ;Pahluwan_Crackows =2500;Amir_Puggaree =2500;
Amir_Korazin =6500;Amir_Kolluks =2500;Amir_Dirs =3500;Amir_Boots =2500;Invigorating_Cape =500;Bushido_Cape =500;Intensifying_Cape =500;
Bullseye_Cape =500;Miraculous_Cape =500;Tempered_Chain =500;Enlightened_Chain =500;Chivalrous_Chain =500;Fortified_Chain =500;
Grandoise_Chain =500;Stoic_Earring =500;Antivenom_Earring =500;Insomnia_Earring =500;Vision_Earring =500;Velocity_Earring =500;Vivid_Strap = 2000;
Ancient_Torque =2000; Antares_Harness = 3000; Seismic_Axe =1000; Prester = 500; Nimues_Tights =2500; Fourth_Haube =1500; Fourth_Brunne =1500; Fourth_Schuhs =1500; 
Fourth_Hentzes = 1500; Fourth_Schoss =1500;Ruler =1000; Fragarach = 1500; ZhaGos_Barbut = 3000; Avalon_Breastplate = 3000; Stone_Mufflers =1000; Black_Tathlum = 2000; White_Tathlum =2000;
Headsmans_Ring =1000; Bull_Necklace =1000; Lex_Talionis =1000; Avalon_Shield = 1000; Gnadbhods_Helm =3000; Mercenary_Major_Charm =1000; Azoth =1500; Setantas_Ledesens = 1000; 
Arrestor_Mantle =1000; Fourth_Mantle =1000; Sonias_Plectrum =1000; Sturms_Report =1000; Earthy_Belt =1000; Shrewd_Pumps =1000; Bahram_Cuisses =1000; Brictas_Cuffs =1000; 
Brilliant_Earring =1000; Samudra =500; Rose_Strap =1500; Diverters_Ring =1000; Cougar_Pendant = 1000; Temple_Earring = 1000; Cobra_Unit_Robe =1000; Cobra_Unit_Cloche = 1000; 
Cobra_Unit_Gloves =1000; Cobra_Unit_Trews = 1000; Ixion_Cape =1500; Supremacy_Earring =1000; Bloodbead_Gorget =1000; Griffonclaw =1000; Ixion_Cloak = 2000; Paramount_Earring =1000;
Crocodile_Collar =1000; Fenian_Ring =1000; Royal_Knight_Sigil_Ring =1000; Fox_Earring =1000; Shield_Collar =1000; Zahaks_Mail =3000; Patronus_Ring =1000; Capricornian_Rope =1000; 
Cobra_Unit_Cap =1000; Cobra_Unit_Harness =1000; Cobra_Unit_Leggings =1000; Cobra_Unit_Mittens =1000; Cobra_Unit_Subligar =1000; Rees_Headgear=3000; Koschei_Crackows =1000; 
Ariesian_Grip =1000; Iron_Ram_Greaves =1000; Iron_Ram_Sallet =1000; Iron_Ram_Dastanas =1000; Iron_Ram_Hose =1000; Iron_Ram_Hauberk =1000; Crimson_Belt =1000;
Nocturnus_Mail=5000; Nocturnus_Helm=5000; Nightfall=3000; Roundel_Earring=2500; Brave_Grip=1500; Wise_Strap=1500; Cuchulains_Belt=2000;
Karasutengu_Kogake=1500; Cuchulains_Mantle=2000; Balestarius=2000; Airy_Buckler=1500; Crapaud_Earring=2000; Hecates_Cape=2500;
Tiercel_Necklace=2000; Reign_Grip=1500; Pipers_Torque=1500; Deae_Gratia=1200; Sangoma_Lappa=1000; Spurrer_Beret=1500; Ecphoria_Ring=1000;
Papilio_Kirpan=1500; Cradle_Horn=800; Poison_Tasters_Cape=800; Aoides_Pumps=800; Creve_coeur=800;M_Kris=750; M_Sword = 750;

-----------END OF DECLARE----------------------------------------------------------------------------------------------------------



local bayld = player:getCurrency("bayld");
local mweya_plasm = player:getCurrency("mweya_plasm")
local dominion_note = player:getCurrency("dominion_note")
local kinetic_unit = player:getCurrency("kinetic_unit")


if (trade:getItemCount() == 1) then
        if (trade:hasItemQty(11651,1)) and (bayld >= defending_ring)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 18000);
   player:tradeComplete();
   player:addItem(13566,1);
   player:messageSpecial(ITEM_OBTAINED,11651,1);
        
		elseif (trade:hasItemQty(12034,1)) and (bayld >= Martial_Abjuration_Body)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 6500);
   player:tradeComplete();
   player:addItem(1330,1);
   player:messageSpecial(ITEM_OBTAINED,1330,1);
        
		elseif (trade:hasItemQty(12014,1)) and (bayld >= Martial_Abjuration_Head)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1329,1);
   player:messageSpecial(ITEM_OBTAINED,1329,1);
        
		elseif (trade:hasItemQty(12014,1)) and (bayld >= Martial_Abjuration_Hands)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1331,1);
   player:messageSpecial(ITEM_OBTAINED,1331,1);

		elseif (trade:hasItemQty(12074,1)) and (bayld >= Martial_Abjuration_Legs)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 3500);
   player:tradeComplete();
   player:addItem(1332,1);
   player:messageSpecial(ITEM_OBTAINED,1332,1);  

		elseif (trade:hasItemQty(12094,1)) and (bayld >= Martial_Abjuration_Feet)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1333,1);
   player:messageSpecial(ITEM_OBTAINED,1333,1);   
   
 		elseif (trade:hasItemQty(12031,1)) and (bayld >= Aquarian_Abjuration_Body)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 6500);
   player:tradeComplete();
   player:addItem(1325,1);
   player:messageSpecial(ITEM_OBTAINED,1325,1);  
   
   		elseif (trade:hasItemQty(12011,1)) and (bayld >= Aquarian_Abjuration_Head)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1324,1);
   player:messageSpecial(ITEM_OBTAINED,1324,1);
   
   		elseif (trade:hasItemQty(12051,1)) and (bayld >= Aquarian_Abjuration_Hands)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1326,1);
   player:messageSpecial(ITEM_OBTAINED,1326,1);
   
   		elseif (trade:hasItemQty(12071,1)) and (bayld >= Aquarian_Abjuration_Legs)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 3500);
   player:tradeComplete();
   player:addItem(1327,1);
   player:messageSpecial(ITEM_OBTAINED,1327,1);
   
   		elseif (trade:hasItemQty(12091,1)) and (bayld >= Aquarian_Abjuration_Feet)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1328,1);
   player:messageSpecial(ITEM_OBTAINED,1328,1);
   
   		elseif (trade:hasItemQty(12040,1)) and (bayld >= Dryadic_Abjuration_Body)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 6500);
   player:tradeComplete();
   player:addItem(1315,1);
   player:messageSpecial(ITEM_OBTAINED,1315,1);
   
   		elseif (trade:hasItemQty(12020,1)) and (bayld >= Dryadic_Abjuration_Head)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1314,1);
   player:messageSpecial(ITEM_OBTAINED,1314,1);
   
   		elseif (trade:hasItemQty(12060,1)) and (bayld >= Dryadic_Abjuration_Hands)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1316,1);
   player:messageSpecial(ITEM_OBTAINED,1316,1);
   
   		elseif (trade:hasItemQty(12080,1)) and (bayld >= Martial_Abjuration_Legs)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 3500);
   player:tradeComplete();
   player:addItem(1317,1);
   player:messageSpecial(ITEM_OBTAINED,1317,1);
   
   		elseif (trade:hasItemQty(12100,1)) and (bayld >= Dryadic_Abjuration_Feet)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1318,1);
   player:messageSpecial(ITEM_OBTAINED,1318,1);
   
   		elseif (trade:hasItemQty(12036,1)) and (bayld >= Earthen_Abjuration_Body)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 6500);
   player:tradeComplete();
   player:addItem(1320,1);
   player:messageSpecial(ITEM_OBTAINED,1320,1);
   
   		elseif (trade:hasItemQty(12016,1)) and (bayld >= Earthen_Abjuration_Head)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1319,1);
   player:messageSpecial(ITEM_OBTAINED,1319,1);
   
   		elseif (trade:hasItemQty(12056,1)) and (bayld >= Earthen_Abjuration_Hands)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1321,1);
   player:messageSpecial(ITEM_OBTAINED,1321,1);
   
   		elseif (trade:hasItemQty(12076,1)) and (bayld >= Earthen_Abjuration_Legs)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 3500);
   player:tradeComplete();
   player:addItem(1322,1);
   player:messageSpecial(ITEM_OBTAINED,1322,1);
   
   		elseif (trade:hasItemQty(12096,1)) and (bayld >= Earthen_Abjuration_Feet)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1323,1);
   player:messageSpecial(ITEM_OBTAINED,1323,1);
   
   		elseif (trade:hasItemQty(12028,1)) and (bayld >= Neptunal_Abjuration_Body)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 6500);
   player:tradeComplete();
   player:addItem(1340,1);
   player:messageSpecial(ITEM_OBTAINED,1340,1);
   
   		elseif (trade:hasItemQty(12008,1)) and (bayld >= Neptunal_Abjuration_Head)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1339,1);
   player:messageSpecial(ITEM_OBTAINED,1339,1);
   
   		elseif (trade:hasItemQty(12048,1)) and (bayld >= Neptunal_Abjuration_Hands)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1341,1);
   player:messageSpecial(ITEM_OBTAINED,1341,1);
   
   		elseif (trade:hasItemQty(12068,1)) and (bayld >= Neptunal_Abjuration_Legs)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 3500);
   player:tradeComplete();
   player:addItem(1342,1);
   player:messageSpecial(ITEM_OBTAINED,1342,1);
   
   		elseif (trade:hasItemQty(12088,1)) and (bayld >= Neptunal_Abjuration_Feet)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1343,1);
   player:messageSpecial(ITEM_OBTAINED,1343,1);
   
   		elseif (trade:hasItemQty(12014,1)) and (bayld >= Wyrmal_Abjuration_Body)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 6500);
   player:tradeComplete();
   player:addItem(1335,1);
   player:messageSpecial(ITEM_OBTAINED,1335,1);
   
   		elseif (trade:hasItemQty(12038,1)) and (bayld >= Wyrmal_Abjuration_Head)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1334,1);
   player:messageSpecial(ITEM_OBTAINED,1334,1);
   
   		elseif (trade:hasItemQty(12058,1)) and (bayld >= Wyrmal_Abjuration_Hands)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1336,1);
   player:messageSpecial(ITEM_OBTAINED,1336,1);
   
   		elseif (trade:hasItemQty(12078,1)) and (bayld >= Wyrmal_Abjuration_Legs)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 3500);
   player:tradeComplete();
   player:addItem(1337,1);
   player:messageSpecial(ITEM_OBTAINED,1337,1);
   
   		elseif (trade:hasItemQty(12098,1)) and (bayld >= Wyrmal_Abjuration_Feet)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2500);
   player:tradeComplete();
   player:addItem(1338,1);
   player:messageSpecial(ITEM_OBTAINED,1338,1);
   
   		elseif (trade:hasItemQty(12049,1)) and (bayld >= Seiryu_Kote)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2000);
   player:tradeComplete();
   player:addItem(12690,1);
   player:messageSpecial(ITEM_OBTAINED,12690,1);
   
   		elseif (trade:hasItemQty(12069,1)) and (bayld >= Byakko_Haidate)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 4000);
   player:tradeComplete();
   player:addItem(12818,1);
   player:messageSpecial(ITEM_OBTAINED,12818,1);
   
   		elseif (trade:hasItemQty(12009,1)) and (bayld >= Genbus_Kabuto)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2000);
   player:tradeComplete();
   player:addItem(12434,1);
   player:messageSpecial(ITEM_OBTAINED,12434,1);
   
   		elseif (trade:hasItemQty(12089,1)) and (bayld >= Suzaku_Suneate)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 1000);
   player:tradeComplete();
   player:addItem(12946,1);
   player:messageSpecial(ITEM_OBTAINED,12946,1);
   
   		elseif (trade:hasItemQty(12029,1)) and (bayld >= Kirin_Osode)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 7500);
   player:tradeComplete();
   player:addItem(12562,1);
   player:messageSpecial(ITEM_OBTAINED,12532,1);
   
   		elseif (trade:hasItemQty(11711,1)) and (bayld >= Pixie_Earring)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 1500);
   player:tradeComplete();
   player:addItem(13415,1);
   player:messageSpecial(ITEM_OBTAINED,13415,1);
   
   		elseif (trade:hasItemQty(18896,1)) and (bayld >= Sipar)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 500);
   player:tradeComplete();
   player:addItem(12361,1);
   player:messageSpecial(ITEM_OBTAINED,12361,1);
   
   		elseif (trade:hasItemQty(11509,1)) and (bayld >= Aegishjalmr)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 1500);
   player:tradeComplete();
   player:addItem(13914,1);
   player:messageSpecial(ITEM_OBTAINED,13914,1);
   
   		elseif (trade:hasItemQty(14042,1)) and (bayld >= Andvaranauts)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 500);
   player:tradeComplete();
   player:addItem(13914,1);
   player:messageSpecial(ITEM_OBTAINED,13914,1);
   
   		elseif (trade:hasItemQty(18897,1)) and (bayld >= Ridill)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 10000);
   player:tradeComplete();
   player:addItem(16555,1);
   player:messageSpecial(ITEM_OBTAINED,16555,1);
   
   		elseif (trade:hasItemQty(18620,1)) and (bayld >= Kirin_Pole)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 500);
   player:tradeComplete();
   player:addItem(17567,1);
   player:messageSpecial(ITEM_OBTAINED,17567,1);
   
   		elseif (trade:hasItemQty(18892,1)) and (bayld >= Hrotti)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 500);
   player:tradeComplete();
   player:addItem(17653,1);
   player:messageSpecial(ITEM_OBTAINED,17653,1);
   
   		elseif (trade:hasItemQty(11735,1)) and (bayld >= Wyrm_Beard)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2000);
   player:tradeComplete();
   player:addItem(1526,1);
   player:messageSpecial(ITEM_OBTAINED,1526,1);
   
   		elseif (trade:hasItemQty(11731,1)) and (bayld >= Behemoth_Tongue)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2000);
   player:tradeComplete();
   player:addItem(1527,1);
   player:messageSpecial(ITEM_OBTAINED,1527,1);
   
   		elseif (trade:hasItemQty(11730,1)) and (bayld >= Adamantoise_Egg)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 2000);
   player:tradeComplete();
   player:addItem(1525,1);
   player:messageSpecial(ITEM_OBTAINED,1525,1);
   
   		elseif (trade:hasItemQty(16203,1)) and (bayld >= Shadow_Mantle)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 8000);
   player:tradeComplete();
   player:addItem(13658,1);
   player:messageSpecial(ITEM_OBTAINED,13658,1);
   
   		elseif (trade:hasItemQty(11653,1)) and (bayld >= Shadow_Ring)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 8000);
   player:tradeComplete();
   player:addItem(14646,1);
   player:messageSpecial(ITEM_OBTAINED,14646,1);
   
   elseif (trade:hasItemQty(18510,1)) and (bayld >= Byakkos_Axe) --base item is Vermeil Bhuj
			then --This is a check to see if the player has enough bayld
			  player:delCurrency("bayld", 1000);
	player:tradeComplete();
	player:addItem(18198,1);
	player:messageSpecial(ITEM_OBTAINED,18198,1);
	
	elseif (trade:hasItemQty(18898,1)) and (bayld >= Seiryus_Sword) --base item is Mageblade
			then --This is a check to see if the player has enough bayld
			  player:delCurrency("bayld", 2000);
	player:tradeComplete();
	player:addItem(17659,1);
	player:messageSpecial(ITEM_OBTAINED,17659,1);

	elseif (trade:hasItemQty(18551,1)) and (bayld >= Suzakus_Scythe) --base item is Crisis Scythe
			then --This is a check to see if the player has enough bayld
			  player:delCurrency("bayld", 500);
	player:tradeComplete();
	player:addItem(18043,1);
	player:messageSpecial(ITEM_OBTAINED,18043,1);
	
		
	elseif (trade:hasItemQty(19050,1)) and (bayld >= Vivid_Strap) --base item is Crisis Scythe
			then --This is a check to see if the player has enough bayld
			  player:delCurrency("bayld", 2000);
	player:tradeComplete();
	player:addItem(19049,1);
	player:messageSpecial(ITEM_OBTAINED,19049,1);

   		elseif (trade:hasItemQty(12345,1)) and (bayld >= Genbus_Shield)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 1000);
   player:tradeComplete();
   player:addItem(12296,1);
   player:messageSpecial(ITEM_OBTAINED,12296,1);  

   		elseif (trade:hasItemQty(19138,1)) and (bayld >= M_Kris)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 750);
   player:tradeComplete();
   player:addItem(18020,1);
   player:messageSpecial(ITEM_OBTAINED,18020,1);   
   
   		elseif (trade:hasItemQty(19172,1)) and (bayld >= M_Sword)
			 then    --This is a check to see if the player has enough bayld
              player:delCurrency("bayld", 750);
   player:tradeComplete();
   player:addItem(18377,1);
   player:messageSpecial(ITEM_OBTAINED,18377,1);      
   
   -------------------------------BEGIN TIER 2 ITEMS--------------------------------------------------------------
   
   		elseif (trade:hasItemQty(11626,1)) and (mweya_plasm >= Hope_Torque)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 4000);
   player:tradeComplete();
   player:addItem(15509,1);
   player:messageSpecial(ITEM_OBTAINED,15509,1);
   
  		elseif (trade:hasItemQty(11625,1)) and (mweya_plasm >= Faith_Torque)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 4000);
   player:tradeComplete();
   player:addItem(15512,1);
   player:messageSpecial(ITEM_OBTAINED,15512,1);
   
   		elseif (trade:hasItemQty(10933,1)) and (mweya_plasm >= Fortitude_Torque)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 4000);
   player:tradeComplete();
   player:addItem(15511,1);
   player:messageSpecial(ITEM_OBTAINED,15511,1);

   		elseif (trade:hasItemQty(10928,1)) and (mweya_plasm >= Temperance_Torque)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 4000);
   player:tradeComplete();
   player:addItem(15513,1);
   player:messageSpecial(ITEM_OBTAINED,15513,1);
   
   		elseif (trade:hasItemQty(10927,1)) and (mweya_plasm >= Love_Torque)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 4000);
   player:tradeComplete();
   player:addItem(15514,1);
   player:messageSpecial(ITEM_OBTAINED,15514,1);

   		elseif (trade:hasItemQty(11627,1)) and (mweya_plasm >= Justice_Torque)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 4000);
   player:tradeComplete();
   player:addItem(15508,1);
   player:messageSpecial(ITEM_OBTAINED,15508,1);

   		elseif (trade:hasItemQty(11620,1)) and (mweya_plasm >= Prudence_Torque)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 4000);
   player:tradeComplete();
   player:addItem(15510,1);
   player:messageSpecial(ITEM_OBTAINED,15510,1);

   		elseif (trade:hasItemQty(16259,1)) and (mweya_plasm >= Altruistic_Cape)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 3000);
   player:tradeComplete();
   player:addItem(15472,1);
   player:messageSpecial(ITEM_OBTAINED,15472,1);

   		elseif (trade:hasItemQty(16260,1)) and (mweya_plasm >= Merciful_Cape)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 1500);
   player:tradeComplete();
   player:addItem(15471,1);
   player:messageSpecial(ITEM_OBTAINED,15471,1);

   		elseif (trade:hasItemQty(16207,1)) and (mweya_plasm >= Astute_Cape)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 3000);
   player:tradeComplete();
   player:addItem(15473,1);
   player:messageSpecial(ITEM_OBTAINED,15473,1);

   		elseif (trade:hasItemQty(15959,1)) and (mweya_plasm >= Ninurta_Sash)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 10000);
   player:tradeComplete();
   player:addItem(15458,1);
   player:messageSpecial(ITEM_OBTAINED,15458,1);

   		elseif (trade:hasItemQty(19620,1)) and (mweya_plasm >= Aureole)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 10000);
   player:tradeComplete();
   player:addItem(18245,1);
   player:messageSpecial(ITEM_OBTAINED,18245,1);   
   
   		elseif (trade:hasItemQty(17801,1)) and (mweya_plasm >= Futsuno_Mitama)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 10000);
   player:tradeComplete();
   player:addItem(17810,1);
   player:messageSpecial(ITEM_OBTAINED,17810,1);

   		elseif (trade:hasItemQty(15858,1)) and (mweya_plasm >= Bellona_Ring)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 8000);
   player:tradeComplete();
   player:addItem(15549,1);
   player:messageSpecial(ITEM_OBTAINED,15549,1);

   		elseif (trade:hasItemQty(11638,1)) and (mweya_plasm >= Mars_Ring)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 8000);
   player:tradeComplete();
   player:addItem(15548,1);
   player:messageSpecial(ITEM_OBTAINED,15548,1);

   		elseif (trade:hasItemQty(15857,1)) and (mweya_plasm >= Minerva_Ring)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 10000);
   player:tradeComplete();
   player:addItem(15550,1);
   player:messageSpecial(ITEM_OBTAINED,15550,1);
   
   	elseif (trade:hasItemQty(17077,1)) and (mweya_plasm >= Raphaels_Rod)
			then    --This is a check to see if the player has enough plasmp
              player:delCurrency("mweya_plasm", 5000);
   player:tradeComplete();
   player:addItem(18398,1);
   player:messageSpecial(ITEM_OBTAINED,18398,1);

   		elseif (trade:hasItemQty(20548,1)) and (mweya_plasm >= Faith_Baghnakhs)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 2000);
   player:tradeComplete();
   player:addItem(18360,1);
   player:messageSpecial(ITEM_OBTAINED,18360,1);

   		elseif (trade:hasItemQty(18519,1)) and (mweya_plasm >= Fortitude_Axe)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 2000);
   player:tradeComplete();
   player:addItem(18222,1);
   player:messageSpecial(ITEM_OBTAINED,18222,1);

   		elseif (trade:hasItemQty(18875,1)) and (mweya_plasm >= Prudence_Rod)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 2000);
   player:tradeComplete();
   player:addItem(18397,1);
   player:messageSpecial(ITEM_OBTAINED,18397,1);

   		elseif (trade:hasItemQty(18625,1)) and (mweya_plasm >= Hope_Staff)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 1000);
   player:tradeComplete();
   player:addItem(17595,1);
   player:messageSpecial(ITEM_OBTAINED,17595,1);

   		elseif (trade:hasItemQty(18909,1)) and (mweya_plasm >= Justice_Sword)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 2000);
   player:tradeComplete();
   player:addItem(17710,1);
   player:messageSpecial(ITEM_OBTAINED,17710,1);

   		elseif (trade:hasItemQty(16843,1)) and (mweya_plasm >= Love_Halberd)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 3000);
   player:tradeComplete();
   player:addItem(18100,1);
   player:messageSpecial(ITEM_OBTAINED,18100,1);

   		elseif (trade:hasItemQty(11036,1)) and (mweya_plasm >= Novio_Earring)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 8000);
   player:tradeComplete();
   player:addItem(14808,1);
   player:messageSpecial(ITEM_OBTAINED,14808,1);

   		elseif (trade:hasItemQty(11033,1)) and (mweya_plasm >= Novia_earring)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 3000);
   player:tradeComplete();
   player:addItem(14809,1);
   player:messageSpecial(ITEM_OBTAINED,14809,1);

   		elseif (trade:hasItemQty(18536,1)) and (mweya_plasm >= Temperance_Axe)
			 then    --This is a check to see if the player has enough plasm
              player:delCurrency("mweya_plasm", 1500);
   player:tradeComplete();
   player:addItem(17948,1);
   player:messageSpecial(ITEM_OBTAINED,17948,1);
   
   
   		elseif (trade:hasItemQty(17806,1)) and (mweya_plasm >= Hagun)
			 then    --This is a check to see if the player has enough plasmp
              player:delCurrency("mweya_plasm", 1000);
   player:tradeComplete();
   player:addItem(17829,1);
   player:messageSpecial(ITEM_OBTAINED,17829,1);
   
      	elseif (trade:hasItemQty(16485,1)) and (mweya_plasm >= Blau_dolch)
			 then    --This is a check to see if the player has enough plasmp
              player:delCurrency("mweya_plasm", 1000);
   player:tradeComplete();
   player:addItem(18015,1);
   player:messageSpecial(ITEM_OBTAINED,18015,1);
   
 
   
 -----------------------BEGIN OF TIER 3 ITEMS--------------------------------------------------------------  

   		elseif (trade:hasItemQty(27807,1)) and (dominion_note >= Askar_Korazin)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14568,1);
   player:messageSpecial(ITEM_OBTAINED,14568,1);

   		elseif (trade:hasItemQty(27663,1)) and (dominion_note >= Askar_Zucchetto)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(16106,1);
   player:messageSpecial(ITEM_OBTAINED,16106,1);

   		elseif (trade:hasItemQty(27943,1)) and (dominion_note >= Askar_Manopolas)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(14983,1);
   player:messageSpecial(ITEM_OBTAINED,14983,1);

   		elseif (trade:hasItemQty(28090,1)) and (dominion_note >= Askar_Dirs)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3500);
   player:tradeComplete();
   player:addItem(15647,1);
   player:messageSpecial(ITEM_OBTAINED,15647,1);

   		elseif (trade:hasItemQty(28223,1)) and (dominion_note >= Askar_Gambieras)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(15733,1);
   player:messageSpecial(ITEM_OBTAINED,15733,1);

   		elseif (trade:hasItemQty(27812,1)) and (dominion_note >= Denali_Jacket)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14569,1);
   player:messageSpecial(ITEM_OBTAINED,14569,1);

   		elseif (trade:hasItemQty(27668,1)) and (dominion_note >= Denali_Bonnet)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(16107,1);
   player:messageSpecial(ITEM_OBTAINED,16107,1);

   		elseif (trade:hasItemQty(27948,1)) and (dominion_note >= Denali_Wristbands)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(14984,1);
   player:messageSpecial(ITEM_OBTAINED,14984,1);

   		elseif (trade:hasItemQty(28095,1)) and (dominion_note >= Denali_Kecks)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3500);
   player:tradeComplete();
   player:addItem(15648,1);
   player:messageSpecial(ITEM_OBTAINED,15648,1);

   		elseif (trade:hasItemQty(28228,1)) and (dominion_note >= Denali_Gamashes)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(15734,1);
   player:messageSpecial(ITEM_OBTAINED,15734,1);
   
   		elseif (trade:hasItemQty(27811,1)) and (dominion_note >= Goliard_Saio)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14570,1);
   player:messageSpecial(ITEM_OBTAINED,14570,1);

   		elseif (trade:hasItemQty(27667,1)) and (dominion_note >= Goliard_Chapeau)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(16108,1);
   player:messageSpecial(ITEM_OBTAINED,16108,1);

   		elseif (trade:hasItemQty(27947,1)) and (dominion_note >= Goliard_Cuffs)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(14985,1);
   player:messageSpecial(ITEM_OBTAINED,14985,1);

   		elseif (trade:hasItemQty(28094,1)) and (dominion_note >= Goliard_Trews)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3500);
   player:tradeComplete();
   player:addItem(15649,1);
   player:messageSpecial(ITEM_OBTAINED,15649,1);

   		elseif (trade:hasItemQty(28227,1)) and (dominion_note >= Goliard_Clogs)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(15735,1);
   player:messageSpecial(ITEM_OBTAINED,15735,1);
   
   		elseif (trade:hasItemQty(27818,1)) and (dominion_note >= Usukane_Haramaki)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 15000);
   player:tradeComplete();
   player:addItem(14554,1);
   player:messageSpecial(ITEM_OBTAINED,14554,1);
   
   		elseif (trade:hasItemQty(27674,1)) and (dominion_note >= Usukane_Somen)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(16092,1);
   player:messageSpecial(ITEM_OBTAINED,16092,1);

   		elseif (trade:hasItemQty(27954,1)) and (dominion_note >= Usukane_Gote)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14969,1);
   player:messageSpecial(ITEM_OBTAINED,14969,1);

   		elseif (trade:hasItemQty(28101,1)) and (dominion_note >= Usukane_Hizayoroi)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 8500);
   player:tradeComplete();
   player:addItem(15633,1);
   player:messageSpecial(ITEM_OBTAINED,15633,1);

   		elseif (trade:hasItemQty(28234,1)) and (dominion_note >= Usukane_Suneate)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(15719,1);
   player:messageSpecial(ITEM_OBTAINED,15719,1);

   		elseif (trade:hasItemQty(27813,1)) and (dominion_note >= Ares_Cuirass)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 15000);
   player:tradeComplete();
   player:addItem(14546,1);
   player:messageSpecial(ITEM_OBTAINED,14546,1);
   
   		elseif (trade:hasItemQty(27669,1)) and (dominion_note >= Ares_Mask)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(16084,1);
   player:messageSpecial(ITEM_OBTAINED,16084,1);     

   		elseif (trade:hasItemQty(27949,1)) and (dominion_note >= Ares_Gauntlets)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14961,1);
   player:messageSpecial(ITEM_OBTAINED,14961,1);

   		elseif (trade:hasItemQty(28096,1)) and (dominion_note >= Ares_Flanchard)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 8500);
   player:tradeComplete();
   player:addItem(15625,1);
   player:messageSpecial(ITEM_OBTAINED,15625,1);

   		elseif (trade:hasItemQty(28229,1)) and (dominion_note >= Ares_Sollerets)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(15711,1);
   player:messageSpecial(ITEM_OBTAINED,15711,1);

   		elseif (trade:hasItemQty(27816,1)) and (dominion_note >= Marduks_Jubbah)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 15000);
   player:tradeComplete();
   player:addItem(15711,1);
   player:messageSpecial(ITEM_OBTAINED,15711,1);

   		elseif (trade:hasItemQty(27672,1)) and (dominion_note >= Marduks_Tiara)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(16096,1);
   player:messageSpecial(ITEM_OBTAINED,16096,1);

   		elseif (trade:hasItemQty(27952,1)) and (dominion_note >= Marduks_Dastanas)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14973,1);
   player:messageSpecial(ITEM_OBTAINED,14973,1);

   		elseif (trade:hasItemQty(28099,1)) and (dominion_note >= Marduks_Shalwar)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 8500);
   player:tradeComplete();
   player:addItem(15637,1);
   player:messageSpecial(ITEM_OBTAINED,15637,1);

   		elseif (trade:hasItemQty(28232,1)) and (dominion_note >= Marduks_Crackows)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(15723,1);
   player:messageSpecial(ITEM_OBTAINED,15723,1);

   		elseif (trade:hasItemQty(27810,1)) and (dominion_note >= Morrigans_Robe)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 15000);
   player:tradeComplete();
   player:addItem(14562,1);
   player:messageSpecial(ITEM_OBTAINED,14562,1);
   
   		elseif (trade:hasItemQty(27666,1)) and (dominion_note >= Morrigans_Coronal)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(16100,1);
   player:messageSpecial(ITEM_OBTAINED,16100,1);

   		elseif (trade:hasItemQty(27946,1)) and (dominion_note >= Morrigans_Cuffs)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14977,1);
   player:messageSpecial(ITEM_OBTAINED,14977,1);

   		elseif (trade:hasItemQty(28093,1)) and (dominion_note >= Morrigans_Slops)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 8500);
   player:tradeComplete();
   player:addItem(15641,1);
   player:messageSpecial(ITEM_OBTAINED,15641,1);

   		elseif (trade:hasItemQty(28226,1)) and (dominion_note >= Morrigans_Pigaches)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(15727,1);
   player:messageSpecial(ITEM_OBTAINED,15727,1);

   		elseif (trade:hasItemQty(21375,1)) and (dominion_note >= Animator)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(17857,1);
   player:messageSpecial(ITEM_OBTAINED,17857,1);

   		elseif (trade:hasItemQty(11554,1)) and (dominion_note >= Aslan_Cape)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(16228,1);
   player:messageSpecial(ITEM_OBTAINED,16228,1);

   		elseif (trade:hasItemQty(11729,1)) and (dominion_note >= Buccaneers_Belt)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(15911,1);
   player:messageSpecial(ITEM_OBTAINED,15911,1);

   		elseif (trade:hasItemQty(11716,1)) and (dominion_note >= Delta_Earring)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(15990,1);
   player:messageSpecial(ITEM_OBTAINED,15990,1);

   		elseif (trade:hasItemQty(11707,1)) and (dominion_note >= Gleemans_Cape)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(16229,1);
   player:messageSpecial(ITEM_OBTAINED,16229,1);

   		elseif (trade:hasItemQty(11637,1)) and (dominion_note >= Iota_Ring)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(15799,1);
   player:messageSpecial(ITEM_OBTAINED,15799,1);

   		elseif (trade:hasItemQty(11604,1)) and (dominion_note >= Kubira_Bead_Necklace)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(16268,1);
   player:messageSpecial(ITEM_OBTAINED,16268,1);

   		elseif (trade:hasItemQty(16269,1)) and (dominion_note >= Morganas_Choker)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(16269,1);
   player:messageSpecial(ITEM_OBTAINED,16269,1);

   		elseif (trade:hasItemQty(11639,1)) and (dominion_note >= Omega_Ring)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(15800,1);
   player:messageSpecial(ITEM_OBTAINED,15800,1);

   		elseif (trade:hasItemQty(11595,1)) and (dominion_note >= Ritter_Gorget)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(16267,1);
   player:messageSpecial(ITEM_OBTAINED,16267,1);
   
      	elseif (trade:hasItemQty(11598,1)) and (dominion_note >= Nethercant_Chain)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(2473,1);
   player:messageSpecial(ITEM_OBTAINED,2473,1);

      	elseif (trade:hasItemQty(11599,1)) and (dominion_note >= Nethereye_Chain)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(2470,1);
   player:messageSpecial(ITEM_OBTAINED,2470,1);

      		elseif (trade:hasItemQty(11600,1)) and (dominion_note >= Netherfield_Chain)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(2471,1);
   player:messageSpecial(ITEM_OBTAINED,2471,1);

      		elseif (trade:hasItemQty(11601,1)) and (dominion_note >= Netherpact_Chain)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(2474,1);
   player:messageSpecial(ITEM_OBTAINED,2474,1);

      		elseif (trade:hasItemQty(11591,1)) and (dominion_note >= Netherspirit_Chain)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(2472,1);
   player:messageSpecial(ITEM_OBTAINED,2472,1);
   
      		elseif (trade:hasItemQty(12043,1)) and (dominion_note >= Rubber_Cap)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(2465,1);
   player:messageSpecial(ITEM_OBTAINED,2465,1);

      		elseif (trade:hasItemQty(12023,1)) and (dominion_note >= Rubber_Chausses)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(2468,1);
   player:messageSpecial(ITEM_OBTAINED,2468,1);

      		elseif (trade:hasItemQty(12063,1)) and (dominion_note >= Rubber_Harness)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(2466,1);
   player:messageSpecial(ITEM_OBTAINED,2466,1);

      		elseif (trade:hasItemQty(12083,1)) and (dominion_note >= Rubber_Gloves)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(2467,1);
   player:messageSpecial(ITEM_OBTAINED,2467,1);

      		elseif (trade:hasItemQty(12103,1)) and (dominion_note >= Rubber_Soles)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(2469,1);
   player:messageSpecial(ITEM_OBTAINED,2469,1);

      		elseif (trade:hasItemQty(11522,1)) and (dominion_note >= Balrahns_Eyepatch)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 20000);
   player:tradeComplete();
   player:addItem(2571,1);
   player:messageSpecial(ITEM_OBTAINED,2571,1);

      		elseif (trade:hasItemQty(27673,1)) and (dominion_note >= Phantasmal_Abjuration_Body)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 12000);
   player:tradeComplete();
   player:addItem(2430,1);
   player:messageSpecial(ITEM_OBTAINED,2430,1);

      		elseif (trade:hasItemQty(27817,1)) and (dominion_note >= Phantasmal_Abjuration_Head)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 5500);
   player:tradeComplete();
   player:addItem(2429,1);
   player:messageSpecial(ITEM_OBTAINED,2429,1);

      		elseif (trade:hasItemQty(27953,1)) and (dominion_note >= Phantasmal_Abjuration_Hands)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 5500);
   player:tradeComplete();
   player:addItem(2431,1);
   player:messageSpecial(ITEM_OBTAINED,2431,1);

      		elseif (trade:hasItemQty(28100,1)) and (dominion_note >= Phantasmal_Abjuration_Legs)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 7000);
   player:tradeComplete();
   player:addItem(2432,1);
   player:messageSpecial(ITEM_OBTAINED,2432,1);

      		elseif (trade:hasItemQty(28233,1)) and (dominion_note >= Phantasmal_Abjuration_Feet)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 5500);
   player:tradeComplete();
   player:addItem(2433,1);
   player:messageSpecial(ITEM_OBTAINED,2433,1);

      		elseif (trade:hasItemQty(27820,1)) and (dominion_note >= Hadean_Abjuration_Body)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 12000);
   player:tradeComplete();
   player:addItem(2435,1);
   player:messageSpecial(ITEM_OBTAINED,2435,1);

      		elseif (trade:hasItemQty(27676,1)) and (dominion_note >= Hadean_Abjuration_Head)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 5500);
   player:tradeComplete();
   player:addItem(2434,1);
   player:messageSpecial(ITEM_OBTAINED,2434,1);

      		elseif (trade:hasItemQty(27956,1)) and (dominion_note >= Hadean_Abjuration_Hands)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 5500);
   player:tradeComplete();
   player:addItem(2436,1);
   player:messageSpecial(ITEM_OBTAINED,2436,1);

      		elseif (trade:hasItemQty(28103,1)) and (dominion_note >= Hadean_Abjuration_Legs)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 7000);
   player:tradeComplete();
   player:addItem(2437,1);
   player:messageSpecial(ITEM_OBTAINED,2437,1);

      		elseif (trade:hasItemQty(28236,1)) and (dominion_note >= Hadean_Abjuration_Feet)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 5500);
   player:tradeComplete();
   player:addItem(2438,1);
   player:messageSpecial(ITEM_OBTAINED,2438,1);

      		elseif (trade:hasItemQty(12020,1)) and (dominion_note >= Valhalla_Helm)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 12000);
   player:tradeComplete();
   player:addItem(16117,1);
   player:messageSpecial(ITEM_OBTAINED,16117,1);

      		elseif (trade:hasItemQty(12040,1)) and (dominion_note >= Valhalla_Breastplate)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 12000);
   player:tradeComplete();
   player:addItem(14577,1);
   player:messageSpecial(ITEM_OBTAINED,14577,1);

      		elseif (trade:hasItemQty(19312,1)) and (dominion_note >= Valkyries_Fork)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 10000);
   player:tradeComplete();
   player:addItem(18121,1);
   player:messageSpecial(ITEM_OBTAINED,18121,1);

      		elseif (trade:hasItemQty(18891,1)) and (dominion_note >= Hofud)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 10000);
   player:tradeComplete();
   player:addItem(17745,1);
   player:messageSpecial(ITEM_OBTAINED,17745,1);

      		elseif (trade:hasItemQty(18903,1)) and (dominion_note >= Hauteclaire)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 5000);
   player:tradeComplete();
   player:addItem(17738,1);
   player:messageSpecial(ITEM_OBTAINED,17738,1);

      		elseif (trade:hasItemQty(18847,1)) and (dominion_note >= Seveneyes)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2000);
   player:tradeComplete();
   player:addItem(18847,1);
   player:messageSpecial(ITEM_OBTAINED,18847,1);

      		elseif (trade:hasItemQty(28100,1)) and (dominion_note >= Algol)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(18385,1);
   player:messageSpecial(ITEM_OBTAINED,18385,1);

      		elseif (trade:hasItemQty(21186,1)) and (dominion_note >= Alkalurops)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 4000);
   player:tradeComplete();
   player:addItem(18593,1);
   player:messageSpecial(ITEM_OBTAINED,18593,1);

      		elseif (trade:hasItemQty(19282,1)) and (dominion_note >=Shusui)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 1500);
   player:tradeComplete();
   player:addItem(18429,1);
   player:messageSpecial(ITEM_OBTAINED,18429,1);

      		elseif (trade:hasItemQty(10906,1)) and (dominion_note >= Enkidus_Cap)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2000);
   player:tradeComplete();
   player:addItem(16157,1);
   player:messageSpecial(ITEM_OBTAINED,16157,1);

      		elseif (trade:hasItemQty(10479,1)) and (dominion_note >= Enkidus_Harness)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(11284,1);
   player:messageSpecial(ITEM_OBTAINED,11284,1);

      		elseif (trade:hasItemQty(10625,1)) and (dominion_note >= Hachiryu_Suneate)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6000);
   player:tradeComplete();
   player:addItem(11364,1);
   player:messageSpecial(ITEM_OBTAINED,11364,1);

      		elseif (trade:hasItemQty(10911,1)) and (dominion_note >= Oracles_Cap)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2000);
   player:tradeComplete();
   player:addItem(16156,1);
   player:messageSpecial(ITEM_OBTAINED,16156,1);

      		elseif (trade:hasItemQty(10901,1)) and (dominion_note >= Aurum_Armet)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2000);
   player:tradeComplete();
   player:addItem(16155,1);
   player:messageSpecial(ITEM_OBTAINED,16155,1);

      		elseif (trade:hasItemQty(20872,1)) and (dominion_note >= Foolkiller)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 1500);
   player:tradeComplete();
   player:addItem(18497,1);
   player:messageSpecial(ITEM_OBTAINED,18497,1);

      		elseif (trade:hasItemQty(10559,1)) and (dominion_note >= Hachiryu_Haidate)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 10000);
   player:tradeComplete();
   player:addItem(16337,1);
   player:messageSpecial(ITEM_OBTAINED,16337,1);

      		elseif (trade:hasItemQty(10484,1)) and (dominion_note >= Oracles_Robe)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(11283,1);
   player:messageSpecial(ITEM_OBTAINED,11283,1);

      		elseif (trade:hasItemQty(18463,1)) and (dominion_note >= Pachipachio)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 1500);
   player:tradeComplete();
   player:addItem(18446,1);
   player:messageSpecial(ITEM_OBTAINED,18446,1);

      		elseif (trade:hasItemQty(17066,1)) and (dominion_note >= Antares)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 1500);
   player:tradeComplete();
   player:addItem(18857,1);
   player:messageSpecial(ITEM_OBTAINED,18857,1);

      		elseif (trade:hasItemQty(20913,1)) and (dominion_note >= Enforcer)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 1500);
   player:tradeComplete();
   player:addItem(18948,1);
   player:messageSpecial(ITEM_OBTAINED,18948,1);

      		elseif (trade:hasItemQty(10474,1)) and (dominion_note >= Aurum_Cuirass)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3000);
   player:tradeComplete();
   player:addItem(11282,1);
   player:messageSpecial(ITEM_OBTAINED,11282,1);

      		elseif (trade:hasItemQty(10503,1)) and (dominion_note >= Hachiryu_Kote)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6000);
   player:tradeComplete();
   player:addItem(15015,1);
   player:messageSpecial(ITEM_OBTAINED,15015,1);

      		elseif (trade:hasItemQty(14336,1)) and (dominion_note >= Hachiryu_Haramaki)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 16000);
   player:tradeComplete();
   player:addItem(11281,1);
   player:messageSpecial(ITEM_OBTAINED,11281,1);

      		elseif (trade:hasItemQty(18626,1)) and (dominion_note >= Dorje)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 5000);
   player:tradeComplete();
   player:addItem(18594,1);
   player:messageSpecial(ITEM_OBTAINED,18594,1);

      		elseif (trade:hasItemQty(18455,1)) and (dominion_note >= Nanatsusaya)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 8000);
   player:tradeComplete();
   player:addItem(18447,1);
   player:messageSpecial(ITEM_OBTAINED,18447,1);

      		elseif (trade:hasItemQty(18776,1)) and (dominion_note >= Shenlongs_Baghnakhs)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 10000);
   player:tradeComplete();
   player:addItem(18759,1);
   player:messageSpecial(ITEM_OBTAINED,18759,1); 
   
         		elseif (trade:hasItemQty(19192,1)) and (dominion_note >= Perdu_crossbow)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(18718,1);
   player:messageSpecial(ITEM_OBTAINED,18718,1);
   
            		elseif (trade:hasItemQty(17079,1)) and (dominion_note >= Perdu_wand)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(18850,1);
   player:messageSpecial(ITEM_OBTAINED,18850,1);
   
            		elseif (trade:hasItemQty(19286,1)) and (dominion_note >= Perdu_blade)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(18425,1);
   player:messageSpecial(ITEM_OBTAINED,18425,1);
   
            		elseif (trade:hasItemQty(18624,1)) and (dominion_note >= Perdu_staff)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(18588,1);
   player:messageSpecial(ITEM_OBTAINED,18588,1);
   
            		elseif (trade:hasItemQty(19432,1)) and (dominion_note >= Perdu_voulge)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(18491,1);
   player:messageSpecial(ITEM_OBTAINED,18491,1);
   
            		elseif (trade:hasItemQty(16540,1)) and (dominion_note >= Perdu_hanger)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(17741,1);
   player:messageSpecial(ITEM_OBTAINED,17741,1);
   
            		elseif (trade:hasItemQty(19175,1)) and (dominion_note >= Perdu_sword)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(16602,1);
   player:messageSpecial(ITEM_OBTAINED,16602,1);
   
            		elseif (trade:hasItemQty(18966,1)) and (dominion_note >= Perdu_sickle)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(18943,1);
   player:messageSpecial(ITEM_OBTAINED,18943,1);
   
            		elseif (trade:hasItemQty(19730,1)) and (dominion_note >= Perdu_bow)
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(18717,1);
   player:messageSpecial(ITEM_OBTAINED,18717,1);
   
               		elseif (trade:hasItemQty(12033,1)) and (dominion_note >= Skadis_Cuirie) --Base item = Raider's Vest
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 15000);
   player:tradeComplete();
   player:addItem(14550,1);
   player:messageSpecial(ITEM_OBTAINED,14550,1);

            		elseif (trade:hasItemQty(12053,1)) and (dominion_note >= Skadis_Bazubands) --Base item = Raider's Armlets
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14965,1);
   player:messageSpecial(ITEM_OBTAINED,14965,1);

            		elseif (trade:hasItemQty(12013,1)) and (dominion_note >= Skadis_Visor) --Base item = Raider's Bonnet
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(16088,1);
   player:messageSpecial(ITEM_OBTAINED,16088,1);

            		elseif (trade:hasItemQty(12093,1)) and (dominion_note >= Skadis_Jambeaux) --Base item = Raider's Poulaines
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(15715,1);
   player:messageSpecial(ITEM_OBTAINED,15715,1);

            		elseif (trade:hasItemQty(12073,1)) and (dominion_note >= Skadis_Chausses) --Base item = Raider's Culottes
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 8500);
   player:tradeComplete();
   player:addItem(15629,1);
   player:messageSpecial(ITEM_OBTAINED,15629,1);

            		elseif (trade:hasItemQty(11802,1)) and (dominion_note >= Yigit_turban) 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(16064,1);
   player:messageSpecial(ITEM_OBTAINED,16064,1);
   
            		elseif (trade:hasItemQty(11844,1)) and (dominion_note >= Yigit_Gomlek) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14527,1);
   player:messageSpecial(ITEM_OBTAINED,14527,1); 

            		elseif (trade:hasItemQty(11911,1)) and (dominion_note >= Yigit_Gages) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(14935,1);
   player:messageSpecial(ITEM_OBTAINED,14935,1);   
   
               		elseif (trade:hasItemQty(11950,1)) and (dominion_note >= Yigit_Seraweels) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3500);
   player:tradeComplete();
   player:addItem(15606,1);
   player:messageSpecial(ITEM_OBTAINED,15606,1);
   
               		elseif (trade:hasItemQty(11447,1)) and (dominion_note >= Yigit_Crackows) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(15690,1);
   player:messageSpecial(ITEM_OBTAINED,15690,1);
   
               		elseif (trade:hasItemQty(11789,1)) and (dominion_note >= Pahluwan_Qalansuwa) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(16069,1);
   player:messageSpecial(ITEM_OBTAINED,16069,1);
   
               		elseif (trade:hasItemQty(11834,1)) and (dominion_note >= Pahluwan_Khazagand) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14530,1);
   player:messageSpecial(ITEM_OBTAINED,14530,1);
   
               		elseif (trade:hasItemQty(11887,1)) and (dominion_note >= Pahluwan_Dastanas) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(14940,1);
   player:messageSpecial(ITEM_OBTAINED,14940,1);
   
               		elseif (trade:hasItemQty(11938,1)) and (dominion_note >= Pahluwan_Seraweels) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3500);
   player:tradeComplete();
   player:addItem(15609,1);
   player:messageSpecial(ITEM_OBTAINED,15609,1);
   
               		elseif (trade:hasItemQty(11435,1)) and (dominion_note >= Pahluwan_Crackows) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(15695,1);
   player:messageSpecial(ITEM_OBTAINED,15695,1);
   
               		elseif (trade:hasItemQty(11794,1)) and (dominion_note >= Amir_Puggaree) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(16062,1);
   player:messageSpecial(ITEM_OBTAINED,16062,1);
   
               		elseif (trade:hasItemQty(11839,1)) and (dominion_note >= Amir_Korazin) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 6500);
   player:tradeComplete();
   player:addItem(14525,1);
   player:messageSpecial(ITEM_OBTAINED,14525,1);
   
               		elseif (trade:hasItemQty(11892,1)) and (dominion_note >= Amir_Kolluks) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(14933,1);
   player:messageSpecial(ITEM_OBTAINED,14933,1);
   
               		elseif (trade:hasItemQty(11943,1)) and (dominion_note >= Amir_Dirs) --Base item = 
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 3500);
   player:tradeComplete();
   player:addItem(15604,1);
   player:messageSpecial(ITEM_OBTAINED,15604,1);
   
               		elseif (trade:hasItemQty(11440,1)) and (dominion_note >= Amir_Boots) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 2500);
   player:tradeComplete();
   player:addItem(15688,1);
   player:messageSpecial(ITEM_OBTAINED,15688,1);
   
               		elseif (trade:hasItemQty(11575,1)) and (dominion_note >= Invigorating_Cape) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15494,1);
   player:messageSpecial(ITEM_OBTAINED,15494,1);
   
                  		elseif (trade:hasItemQty(11572,1)) and (dominion_note >= Bushido_Cape) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15493,1);
   player:messageSpecial(ITEM_OBTAINED,16493,1);
   
                  		elseif (trade:hasItemQty(11573,1)) and (dominion_note >= Intensifying_Cape) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15492,1);
   player:messageSpecial(ITEM_OBTAINED,15492,1);
   
                  		elseif (trade:hasItemQty(10974,1)) and (dominion_note >= Bullseye_Cape) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15491,1);
   player:messageSpecial(ITEM_OBTAINED,15491,1);
   
                  		elseif (trade:hasItemQty(10973,1)) and (dominion_note >= Miraculous_Cape) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15490,1);
   player:messageSpecial(ITEM_OBTAINED,15490,1);
   
                  		elseif (trade:hasItemQty(10924,1)) and (dominion_note >= Tempered_Chain) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15521,1);
   player:messageSpecial(ITEM_OBTAINED,15521,1);
   
                  		elseif (trade:hasItemQty(10926,1)) and (dominion_note >= Enlightened_Chain) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15522,1);
   player:messageSpecial(ITEM_OBTAINED,15522,1);
   
                  		elseif (trade:hasItemQty(10925,1)) and (dominion_note >= Chivalrous_Chain) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15523,1);
   player:messageSpecial(ITEM_OBTAINED,15523,1);
   
                  		elseif (trade:hasItemQty(11623,1)) and (dominion_note >= Fortified_Chain) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 1000);
   player:tradeComplete();
   player:addItem(15524,1);
   player:messageSpecial(ITEM_OBTAINED,15524,1);
   
                  		elseif (trade:hasItemQty(11616,1)) and (dominion_note >= Grandoise_Chain) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15525,1);
   player:messageSpecial(ITEM_OBTAINED,15525,1);
   
                  		elseif (trade:hasItemQty(11701,1)) and (dominion_note >= Stoic_Earring) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15970,1);
   player:messageSpecial(ITEM_OBTAINED,15970,1);
   
                  		elseif (trade:hasItemQty(11720,1)) and (dominion_note >= Antivenom_Earring) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15971,1);
   player:messageSpecial(ITEM_OBTAINED,15971,1);
   
                  		elseif (trade:hasItemQty(11721,1)) and (dominion_note >= Insomnia_Earring) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15972,1);
   player:messageSpecial(ITEM_OBTAINED,15972,1);
   
                  		elseif (trade:hasItemQty(11705,1)) and (dominion_note >= Vision_Earring) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15973,1);
   player:messageSpecial(ITEM_OBTAINED,15973,1);
   
                  		elseif (trade:hasItemQty(11706,1)) and (dominion_note >= Velocity_Earring) --Base item =
			 then    --This is a check to see if the player has enough notes
              player:delCurrency("dominion_note", 500);
   player:tradeComplete();
   player:addItem(15974,1);
   player:messageSpecial(ITEM_OBTAINED,15974,1);
   
   -----------------------BEGIN OF TIER 4 ITEMS--------------------------------------------------------------  
				
				
				elseif (trade:hasItemQty(28369,1)) and (kinetic_unit >= ancient_torque)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2000);
   player:tradeComplete();
   player:addItem(16275,1);
   player:messageSpecial(ITEM_OBTAINED,16275,1);
   
  				elseif (trade:hasItemQty(11359,1)) and (kinetic_unit >= Antares_Harness) --Base item = Velox Harness
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 3000);
   player:tradeComplete();
   player:addItem(11287,1);
   player:messageSpecial(ITEM_OBTAINED,11287,1); 
   
   				elseif (trade:hasItemQty(20831,1)) and (kinetic_unit >= Seismic_Axe)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(19042,1);
   player:messageSpecial(ITEM_OBTAINED,19042,1);
   
   				elseif (trade:hasItemQty(21165,1)) and (kinetic_unit >= Prester)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 500);
   player:tradeComplete();
   player:addItem(18598,1);
   player:messageSpecial(ITEM_OBTAINED,18598,1);
   
   				elseif (trade:hasItemQty(28068,1)) and (kinetic_unit >= Nimues_Tights)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2500);
   player:tradeComplete();
   player:addItem(16356,1);
   player:messageSpecial(ITEM_OBTAINED,16356,1);
   
   				elseif (trade:hasItemQty(10657,1)) and (kinetic_unit >= Fourth_Haube)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(16147,1);
   player:messageSpecial(ITEM_OBTAINED,16147,1);
   
   				elseif (trade:hasItemQty(10677,1)) and (kinetic_unit >= Fourth_Brunne)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(14589,1);
   player:messageSpecial(ITEM_OBTAINED,14589,1);
   
   				elseif (trade:hasItemQty(10717,1)) and (kinetic_unit >= Fourth_Schuhs)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(15756,1);
   player:messageSpecial(ITEM_OBTAINED,15756,1);
   
      				elseif (trade:hasItemQty(10697,1)) and (kinetic_unit >= Fourth_Hentzes)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(15010,1);
   player:messageSpecial(ITEM_OBTAINED,15010,1);
   
      				elseif (trade:hasItemQty(10737,1)) and (kinetic_unit >= Fourth_Schoss)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(16316,1);
   player:messageSpecial(ITEM_OBTAINED,16136,1);
   
      				elseif (trade:hasItemQty(20715,1)) and (kinetic_unit >= Ruler)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(17758,1);
   player:messageSpecial(ITEM_OBTAINED,17758,1);
   
      				elseif (trade:hasItemQty(20986,1)) and (kinetic_unit >= Fragarach)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(17751,1);
   player:messageSpecial(ITEM_OBTAINED,17751,1);
   
      				elseif (trade:hasItemQty(11506,1)) and (kinetic_unit >= ZhaGos_Barbut) --Base item = Varangian Helm
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 3000);
   player:tradeComplete();
   player:addItem(16159,1);
   player:messageSpecial(ITEM_OBTAINED,16159,1);
   
      				elseif (trade:hasItemQty(13791,1)) and (kinetic_unit >= Avalon_Breastplate) --Base item = Timarli Jawshan
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 3000);
   player:tradeComplete();
   player:addItem(11286,1);
   player:messageSpecial(ITEM_OBTAINED,11286,1);
   
      				elseif (trade:hasItemQty(11886,1)) and (kinetic_unit >= Stone_Mufflers) -- Base item = Ample Gloves
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15034,1);
   player:messageSpecial(ITEM_OBTAINED,15034,1);
   
      				elseif (trade:hasItemQty(21320,1)) and (kinetic_unit >= Black_Tathlum)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2000);
   player:tradeComplete();
   player:addItem(19212,1);
   player:messageSpecial(ITEM_OBTAINED,19212,1);
   
      				elseif (trade:hasItemQty(21336,1)) and (kinetic_unit >= White_Tathlum)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2000);
   player:tradeComplete();
   player:addItem(19213,1);
   player:messageSpecial(ITEM_OBTAINED,19213,1);
   
      				elseif (trade:hasItemQty(27580,1)) and (kinetic_unit >= Headsmans_Ring)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15832,1);
   player:messageSpecial(ITEM_OBTAINED,15832,1);
   
      				elseif (trade:hasItemQty(28367,1)) and (kinetic_unit >= Bull_Necklace)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16292,1);
   player:messageSpecial(ITEM_OBTAINED,16292,1);
   
      				elseif (trade:hasItemQty(19084,1)) and (kinetic_unit >= Lex_Talionis ) --Base item = Murgleis
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(17685,1);
   player:messageSpecial(ITEM_OBTAINED,17865,1);
   
      				elseif (trade:hasItemQty(27639,1)) and (kinetic_unit >= Avalon_Shield)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16178,1);
   player:messageSpecial(ITEM_OBTAINED,17678,1);
   
      				elseif (trade:hasItemQty(26787,1)) and (kinetic_unit >= Gnadbhods_Helm)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 3000);
   player:tradeComplete();
   player:addItem(16158,1);
   player:messageSpecial(ITEM_OBTAINED,16158,1);
   
      				elseif (trade:hasItemQty(18805,1)) and (kinetic_unit >= Mercenary_Major_Charm)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(11588,1);
   player:messageSpecial(ITEM_OBTAINED,11588,1);
   
      				elseif (trade:hasItemQty(20606,1)) and (kinetic_unit >= Azoth)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(19107,1);
   player:messageSpecial(ITEM_OBTAINED,19107,1);
   
      				elseif (trade:hasItemQty(14085,1)) and (kinetic_unit >= Setantas_Ledesens) --Base Item = Serpentes Sabots
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(11410,1);
   player:messageSpecial(ITEM_OBTAINED,11410,1);
   
    				elseif (trade:hasItemQty(27604,1)) and (kinetic_unit >= Arrestor_Mantle)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16258,1);
   player:messageSpecial(ITEM_OBTAINED,16258,1); 

   				elseif (trade:hasItemQty(28606,1)) and (kinetic_unit >= Fourth_Mantle)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(11545,1);
   player:messageSpecial(ITEM_OBTAINED,11545,1); 

   				elseif (trade:hasItemQty(21385,1)) and (kinetic_unit >= Sonias_Plectrum)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(18735,1);
   player:messageSpecial(ITEM_OBTAINED,18735,1);   
   
   				elseif (trade:hasItemQty(18479,1)) and (kinetic_unit >= Sturms_Report)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(18734,1);
   player:messageSpecial(ITEM_OBTAINED,18734,1); 

   				elseif (trade:hasItemQty(10829,1)) and (kinetic_unit >= Earthy_Belt)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15936,1);
   player:messageSpecial(ITEM_OBTAINED,15936,1);

   				elseif (trade:hasItemQty(13001,1)) and (kinetic_unit >= Shrewd_Pumps) --Base item = Augur's Gaiters
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(11411,1);
   player:messageSpecial(ITEM_OBTAINED,11411,1);

   				elseif (trade:hasItemQty(10568,1)) and (kinetic_unit >= Bahram_Cuisses)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16376,1);
   player:messageSpecial(ITEM_OBTAINED,16376,1);

   				elseif (trade:hasItemQty(10518,1)) and (kinetic_unit >= Brictas_Cuffs)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15057,1);
   player:messageSpecial(ITEM_OBTAINED,15057,1);

   				elseif (trade:hasItemQty(27526,1)) and (kinetic_unit >= Brilliant_Earring)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16006,1);
   player:messageSpecial(ITEM_OBTAINED,16006,1);

   				elseif (trade:hasItemQty(18627,1)) and (kinetic_unit >= Samudra)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 500);
   player:tradeComplete();
   player:addItem(18618,1);
   player:messageSpecial(ITEM_OBTAINED,18618,1);

   				elseif (trade:hasItemQty(18810,1)) and (kinetic_unit >= Rose_Strap)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(19041,1);
   player:messageSpecial(ITEM_OBTAINED,19041,1);

   				elseif (trade:hasItemQty(27476,1)) and (kinetic_unit >= Diverters_Ring)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15833,1);
   player:messageSpecial(ITEM_OBTAINED,15833,1);

   				elseif (trade:hasItemQty(26005,1)) and (kinetic_unit >= Cougar_Pendant)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16293,1);
   player:messageSpecial(ITEM_OBTAINED,16293,1);

   				elseif (trade:hasItemQty(10296,1)) and (kinetic_unit >= Temple_Earring)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15967,1);
   player:messageSpecial(ITEM_OBTAINED,15967,1); 

   				elseif (trade:hasItemQty(10674,1)) and (kinetic_unit >= Cobra_Unit_Robe)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(14591,1);
   player:messageSpecial(ITEM_OBTAINED,14591,1);

   				elseif (trade:hasItemQty(10652,1)) and (kinetic_unit >= Cobra_Unit_Cloche)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16149,1);
   player:messageSpecial(ITEM_OBTAINED,16149,1);

   				elseif (trade:hasItemQty(10692,1)) and (kinetic_unit >= Cobra_Unit_Gloves)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15012,1);
   player:messageSpecial(ITEM_OBTAINED,15012,1);

   				elseif (trade:hasItemQty(10712,1)) and (kinetic_unit >= Cobra_Unit_Trews)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16318,1);
   player:messageSpecial(ITEM_OBTAINED,16318,1);

   				elseif (trade:hasItemQty(28632,1)) and (kinetic_unit >= Ixion_Cape)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(16242,1);
   player:messageSpecial(ITEM_OBTAINED,16242,1);

   				elseif (trade:hasItemQty(27531,1)) and (kinetic_unit >= Supremacy_Earring)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16004,1);
   player:messageSpecial(ITEM_OBTAINED,16004,1);

   				elseif (trade:hasItemQty(26014,1)) and (kinetic_unit >= Bloodbead_Gorget)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16302,1);
   player:messageSpecial(ITEM_OBTAINED,16302,1);

   				elseif (trade:hasItemQty(18908,1)) and (kinetic_unit >= Griffonclaw)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(17684,1);
   player:messageSpecial(ITEM_OBTAINED,17684,1);

   				elseif (trade:hasItemQty(27606,1)) and (kinetic_unit >= Ixion_Cloak)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2000);
   player:tradeComplete();
   player:addItem(11289,1);
   player:messageSpecial(ITEM_OBTAINED,11289,1);

   				elseif (trade:hasItemQty(28522,1)) and (kinetic_unit >= Paramount_Earring)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16005,1);
   player:messageSpecial(ITEM_OBTAINED,16005,1);

   				elseif (trade:hasItemQty(11612,1)) and (kinetic_unit >= Crocodile_Collar)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16294,1);
   player:messageSpecial(ITEM_OBTAINED,16294,1);

   				elseif (trade:hasItemQty(26160,1)) and (kinetic_unit >= Fenian_Ring)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15831,1);
   player:messageSpecial(ITEM_OBTAINED,15831,1);

   				elseif (trade:hasItemQty(10769,1)) and (kinetic_unit >= Royal_Knight_Sigil_Ring)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(11636,1);
   player:messageSpecial(ITEM_OBTAINED,11636,1);

   				elseif (trade:hasItemQty(10295,1)) and (kinetic_unit >= Fox_Earring)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15966,1);
   player:messageSpecial(ITEM_OBTAINED,15966,1);

   				elseif (trade:hasItemQty(11610,1)) and (kinetic_unit >= Shield_Collar)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16291,1);
   player:messageSpecial(ITEM_OBTAINED,16291,1);

   				elseif (trade:hasItemQty(14337,1)) and (kinetic_unit >= Zahaks_Mail)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 3000);
   player:tradeComplete();
   player:addItem(11288,1);
   player:messageSpecial(ITEM_OBTAINED,11288,1);

   				elseif (trade:hasItemQty(10766,1)) and (kinetic_unit >= Patronus_Ring)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15844,1);
   player:messageSpecial(ITEM_OBTAINED,15844,1);

   				elseif (trade:hasItemQty(10833,1)) and (kinetic_unit >= Capricornian_Rope)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15638,1);
   player:messageSpecial(ITEM_OBTAINED,15638,1);

   				elseif (trade:hasItemQty(10651,1)) and (kinetic_unit >= Cobra_Unit_Cap)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16148,1);
   player:messageSpecial(ITEM_OBTAINED,16148,1);

   				elseif (trade:hasItemQty(10671,1)) and (kinetic_unit >= Cobra_Unit_Harness)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(14590,1);
   player:messageSpecial(ITEM_OBTAINED,14590,1);

   				elseif (trade:hasItemQty(10731,1)) and (kinetic_unit >= Cobra_Unit_Leggings)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15757,1);
   player:messageSpecial(ITEM_OBTAINED,15757,1);

   				elseif (trade:hasItemQty(10691,1)) and (kinetic_unit >= Cobra_Unit_Mittens)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15011,1);
   player:messageSpecial(ITEM_OBTAINED,15011,1);

   				elseif (trade:hasItemQty(10717,1)) and (kinetic_unit >= Cobra_Unit_Subligar)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16317,1);
   player:messageSpecial(ITEM_OBTAINED,16137,1);

   				elseif (trade:hasItemQty(10653,1)) and (kinetic_unit >= Rees_Headgear)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 3000);
   player:tradeComplete();
   player:addItem(16160,1);
   player:messageSpecial(ITEM_OBTAINED,16160,1);

   				elseif (trade:hasItemQty(10744,1)) and (kinetic_unit >= Koschei_Crackows)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(11392,1);
   player:messageSpecial(ITEM_OBTAINED,11392,1);

   				elseif (trade:hasItemQty(18804,1)) and (kinetic_unit >= Ariesian_Grip)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(19042,1);
   player:messageSpecial(ITEM_OBTAINED,19042,1);

   				elseif (trade:hasItemQty(10716,1)) and (kinetic_unit >= Iron_Ram_Greaves)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(18734,1);
   player:messageSpecial(ITEM_OBTAINED,18734,1);

   				elseif (trade:hasItemQty(10676,1)) and (kinetic_unit >= Iron_Ram_Sallet)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16146,1);
   player:messageSpecial(ITEM_OBTAINED,16146,1);

   				elseif (trade:hasItemQty(10696,1)) and (kinetic_unit >= Iron_Ram_Dastanas)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15009,1);
   player:messageSpecial(ITEM_OBTAINED,15009,1);

   				elseif (trade:hasItemQty(10736,1)) and (kinetic_unit >= Iron_Ram_Hose)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16315,1);
   player:messageSpecial(ITEM_OBTAINED,16135,1);

   				elseif (trade:hasItemQty(10676,1)) and (kinetic_unit >= Iron_Ram_Hauberk)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(14588,1);
   player:messageSpecial(ITEM_OBTAINED,14588,1);

   				elseif (trade:hasItemQty(10834,1)) and (kinetic_unit >= Crimson_Belt)
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(15934,1);
   player:messageSpecial(ITEM_OBTAINED,15934,1);   
   
      				elseif (trade:hasItemQty(11362,1)) and (kinetic_unit >= Nocturnus_Mail) --Base item = Twilight Mail
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 5000);
   player:tradeComplete();
   player:addItem(11354,1);
   player:messageSpecial(ITEM_OBTAINED,11354,1);
   
      				elseif (trade:hasItemQty(11798,1)) and (kinetic_unit >= Nocturnus_Helm) -- Base item = Twilight Helm
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 5000);
   player:tradeComplete();
   player:addItem(11051,1);
   player:messageSpecial(ITEM_OBTAINED,11051,1);      
   
       				elseif (trade:hasItemQty(16582,1)) and (kinetic_unit >= Nightfall) -- Base item = Vetala Sword
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 3000);
   player:tradeComplete();
   player:addItem(19163,1);
   player:messageSpecial(ITEM_OBTAINED,19163,1);    
   
       				elseif (trade:hasItemQty(11054,1)) and (kinetic_unit >= Roundel_Earring) -- Base item = Pensee Earring
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2500);
   player:tradeComplete();
   player:addItem(16002,1);
   player:messageSpecial(ITEM_OBTAINED,16002,1);    
   
       				elseif (trade:hasItemQty(18811,1)) and (kinetic_unit >= Brave_Grip) -- Base item = Oneiros Grip
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(18811,1);
   player:messageSpecial(ITEM_OBTAINED,18811,1);    
   
       				elseif (trade:hasItemQty(18826,1)) and (kinetic_unit >= Wise_Strap) -- Base item = Umbra Strap
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(19030,1);
   player:messageSpecial(ITEM_OBTAINED,19030,1);    
   
       				elseif (trade:hasItemQty(10815,1)) and (kinetic_unit >= Cuchulains_Belt) -- Base item = Phasmida Belt
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2000);
   player:tradeComplete();
   player:addItem(15917,1);
   player:messageSpecial(ITEM_OBTAINED,15917,1);     
   
       				elseif (trade:hasItemQty(10352,1)) and (kinetic_unit >= Karasutengu_Kogake) -- Base item = Ghadhab Nails
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(11365,1);
   player:messageSpecial(ITEM_OBTAINED,11365,1); 
   
       				elseif (trade:hasItemQty(11007,1)) and (kinetic_unit >= Cuchulains_Mantle) -- Base item = Letalis Mantle
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2000);
   player:tradeComplete();
   player:addItem(16241,1);
   player:messageSpecial(ITEM_OBTAINED,16241,1);    
   
       				elseif (trade:hasItemQty(16654,1)) and (kinetic_unit >= Balestarius) -- Base item = Glyph Axe
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2000);
   player:tradeComplete();
   player:addItem(18498,1);
   player:messageSpecial(ITEM_OBTAINED,18498,1);     
   
       				elseif (trade:hasItemQty(12320,1)) and (kinetic_unit >= Airy_Buckler) -- Base item = Seigneur Shield
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(16179,1);
   player:messageSpecial(ITEM_OBTAINED,16179,1);        
   
       				elseif (trade:hasItemQty(11698,1)) and (kinetic_unit >= Crapaud_Earring) -- Base item = Hecate's Earring
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2000);
   player:tradeComplete();
   player:addItem(16001,1);
   player:messageSpecial(ITEM_OBTAINED,16001,1); 

       				elseif (trade:hasItemQty(11013,1)) and (kinetic_unit >= Hecates_Cape) -- Base item = Taubran Cape
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2500);
   player:tradeComplete();
   player:addItem(11543,1);
   player:messageSpecial(ITEM_OBTAINED,11543,1); 

       				elseif (trade:hasItemQty(10396,1)) and (kinetic_unit >= Tiercel_Necklace) -- Base item = Rioter's Collar
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 2000);
   player:tradeComplete();
   player:addItem(11578,1);
   player:messageSpecial(ITEM_OBTAINED,11578,1); 
   
       				elseif (trade:hasItemQty(18815,1)) and (kinetic_unit >= Reign_Grip) -- Base item = Arbuda Grip
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(19048,1);
   player:messageSpecial(ITEM_OBTAINED,19048,1); 
   
       				elseif (trade:hasItemQty(27521,1)) and (kinetic_unit >= Pipers_Torque) -- Base item = Reti Pendant
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(16278,1);
   player:messageSpecial(ITEM_OBTAINED,16278,1);    
   
       				elseif (trade:hasItemQty(17069,1)) and (kinetic_unit >= Deae_Gratia) -- Base item = Moepapa Mace
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1200);
   player:tradeComplete();
   player:addItem(18856,1);
   player:messageSpecial(ITEM_OBTAINED,18856,1);    
   
       				elseif (trade:hasItemQty(11954,1)) and (kinetic_unit >= Sangoma_Lappa) -- Base item = Nebula Slops
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(16319,1);
   player:messageSpecial(ITEM_OBTAINED,16319,1);   
   
       				elseif (trade:hasItemQty(10445,1)) and (kinetic_unit >= Spurrer_Beret) -- Base item = Nemetona Cap
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(11497,1);
   player:messageSpecial(ITEM_OBTAINED,11497,1);    
   
       				elseif (trade:hasItemQty(10767,1)) and (kinetic_unit >= Ecphoria_Ring) -- Base item = Pernicious Ring
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1000);
   player:tradeComplete();
   player:addItem(15817,1);
   player:messageSpecial(ITEM_OBTAINED,15817,1);       
   
       				elseif (trade:hasItemQty(16756,1)) and (kinetic_unit >= Papilio_Kirpan) -- Base item = Leste Jambiya
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 1500);
   player:tradeComplete();
   player:addItem(19126,1);
   player:messageSpecial(ITEM_OBTAINED,19126,1);     
   
       				elseif (trade:hasItemQty(18833,1)) and (kinetic_unit >= Cradle_Horn) -- Base item = Cantabank's Horn
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 800);
   player:tradeComplete();
   player:addItem(17854,1);
   player:messageSpecial(ITEM_OBTAINED,17854,1);   
   
            				elseif (trade:hasItemQty(10975,1)) and (kinetic_unit >= Poison_Tasters_Cape) -- Base item = Archon Cape
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 800);
   player:tradeComplete();
   player:addItem(16238,1);
   player:messageSpecial(ITEM_OBTAINED,16238,1);
   
       				elseif (trade:hasItemQty(12097,1)) and (kinetic_unit >= Aoides_Pumps) -- Base item = Aoidos' Cothurnes
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 800);
   player:tradeComplete();
   player:addItem(11409,1);
   player:messageSpecial(ITEM_OBTAINED,11409,1);   
   
       				elseif (trade:hasItemQty(17626,1)) and (kinetic_unit >= Creve_coeur) -- Base item = Auric Dagger
			 then    --This is a check to see if the player has enough units
              player:delCurrency("kinetic_unit", 800);
   player:tradeComplete();
   player:addItem(19124,1);
   player:messageSpecial(ITEM_OBTAINED,19124,1);  

	elseif (trade:hasItemQty(11771,1)) and (kinetic_unit >= Witch_Sash) --base item is Pipilaka Belt
			then --This is a check to see if the player has enough bayld
			  player:delCurrency("kinetic_unit", 1500);
	player:tradeComplete();
	player:addItem(15918,1);
	player:messageSpecial(ITEM_OBTAINED,15918,1);   
   
		end
     end 
 
 


end; 