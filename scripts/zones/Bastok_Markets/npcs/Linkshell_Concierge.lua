-----------------------------------
-- Area: Bastok Markets
-- NPC: Linkshell Concierge 
-- Guild Merchant NPC: Linkshell_Concierge 
-- @pos G-10
-----------------------------------
package.loaded["scripts/zones/Bastok_Markets/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Bastok_Markets/TextIDs");



-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
--player:PrintToPlayer("I require 2500 Conquest Points, 1 Honor Sword and a Zvahl Coffer Key.");
--player:PrintToPlayer("Once you trade me the items I will deduct the CP of your nation!");

--local cpb = player:getCurrency("bastok_cp");
--local cps = player:getCurrency("sandoria_cp");
--local cpw = player:getCurrency("windurst_cp");
--balance = cpb + cps + cpw;  --variable to determine how much is needed if not enough
--player:PrintToPlayer( "You have "..balance.." of Conquest Points!");
--player:PrintToPlayer( "You have "cpb" of Conquest Points!");

stock = {0xB65,	1,	--	Bloodshot Hecteye	Trades to	Legionnaire's Scythe
0xB63,	1,	--	HQ Clionid Wing	Trades to	    Legionnaire's Staff
0xB64,	1,	--	HQ Limule Pincer	Trades to	    Legionnaire's Knuckles
0xB67,	1,	--	Bloody Fang	Trades to	    Legionnaire's Axe 
0xB66,	1,	--	Baleful Skull	Trades to	    Legionnaire's Crossbow
0xB69,	1,	--	Venomous Scorpion Stinger	Trades to	    Legionnaire's Cap
0xB68,	1,	--	Alkaline Humus	Trades to	    Legionnaire's Mittens
0xB6B,	1,	--	Cockatrice tailmeat	Trades to	    Legionnaire's Leggings 
0xB6A,	1,	--	Eft Egg	Trades to	    Decurion's Shield
0xB6D,	1,	--	Resilient Mane	Trades to	    Decurion's Dagger
0xB6C,	1,	--	Shocking Whisker	Trades to	    Decurion's Hammer 
0xB81,	1,	--	Shriveled Wing	Trades to	    Legionnaire's Harness
0xB82,	1,	--	Tarnished Pincer	Trades to	    Legionnaire's Subligar 
0xB83,	1,	--	Exorcised Skull	Trades to	    Legionnaire's Circlet
0xB84,	1,	--	Acidic Humus	Trades to	    Bastokan Ring
0xB85,	1,	--	Quivering Eft Egg	Trades to	    Centurion's Sword
0xB86,	1,	--	Smooth Whisker	Trades to	    Centurion's Axe
0xB4C,	1,	--	Raw Mutton Chop	Trades to	    Centurion's Visor 
0xB4D,	1,	--	Gargantuan Black tiger Fang	Trades to	    Centurion's Scale Mail
0xB4E,	1,	--	Trophy Shield	Trades to	    Centurion's Finger Gauntlets
0xB4F,	1,	--	Oversized sock	Trades to	    Centurion's Cuisses
0xB50,	1,	--	Massive Armband	Trades to	    Centurion's Greaves
0xB51,	1,	--	Transparent Insect Wing	Trades to	    Republican Bronze Medal 
0xB52,	1,	--	Piceous Scale	Trades to	    Junior Musketeer's Chakram
0xB60,	1,	--	Giant Bugard Tusk	Trades to	    Iron Musketeer's Gambison
0xB5E,	1,	--	Armored Dragonhorn	Trades to	    Junior Musketeer's Tuck 
0xB61,	1,	--	Clouded Lens	Trades to	    Iron Musketeer's Armet
0xB5B,	1,	--	Tiny Morbol Vine	Trades to	    Iron Musketeer's Gauntlets
0xC00,	1,	--	Withered Cocoon	Trades to	    Iron Musketeer's Sabatons 
0xC01,	1,	--	Eruca Egg	Trades to	    Musketeer Gun 
0xC03,	1,	--	Undying Ooze	Trades to	    Musketeer's Pole 
0xC04,	1,	--	Bone Chips	Trades to	    Musketeer's Sword 
0xC05,	1,	--	 Wailing Rags	Trades to	    Iron Musketeer's Cuirass
0xC02,	1,	--	Blached Silver	Trades to	    Iron Musketeer's Cuisses
0xC06,	1,	--	Cracked Dragonscale	Trades to	    Republican Iron Medal 
0xC0B,	1,	--	Mangled Cockatrice Skin	Trades to	 Musketeer Commanders Rod
0xC09,	1,	--	Coeurl Round	Trades to	Iron Musketeers Gorget
0xC07,	1,	--	Gory Pincer	Trades to	Musketeer Commanders Falchion
0xC0A,	1,	--	Withered Bud	Trades to	Musketeer Commanders Shields
0xC0C,	1,	--	Great Root	Trades to	Republican mythril Medal
0xC08,	1,	--	Extended Eyestalk	Trades to	Republican Army Mantle
0xC11,	1,	--	Orobon Cheekmeat	Trades to	    Gold Musketeer's Ring
0xC0F,	1,	--	Apkallu Down	Trades to	    Gold Musketeer's Uchigatana
0xC10,	1,	--	Avian Remex	Trades to	    Iron Musketeer's Bolt
0xC0D,	1,	--	Bewitching Tusk	Trades to	Republican Gold Medal
0xC0E,	1,	--	Molt Scraps	Trades to	    Presidential Hairpin
0xC12,	1,	--	Spheroid Plate	Trades to	    Praefectus's Gloves
0xC15,	1,	--	HQ Crab Meat	Trades to	    Senior Gold Musketeer's Scimitar
0xC16,	1,	--	HQ Rock Salt	Trades to	    Senior Gold Musketeer's Axe
0xC14,	1,	--	Mocking Beak	Trades to	    Senior Gold Musketeer's Scythe
0xC13,	1,	--	Hardened Raptor Skin	Trades to	    Senior Gold Musketeer's Rod
0xC19,	1,	--	Black rabbit tail	Trades to	    Republic Signet Staff
0xC1A,	1,	--	Gnarled Tarus horn	Trades to	Republic Aketon
0xC1E,  1, --Stiffened Tentacle Trades to Choco Whistle


 }	
 
showShop(player, STATIC, stock);


end;
  
  -----------------------------------
-- onTrade Action
-----------------------------------
  
function onTrade(player,npc,trade)
local cpb = player:getCurrency("bastok_cp");
local cps = player:getCurrency("sandoria_cp");
local cpw = player:getCurrency("windurst_cp");
local balance = 0;
balance = cpb + cps + cpw;  --variable to determine how much is needed if not enough
-------------DECLARING VALUES FOR EACH ITEM-------------------------------------------------------------------------------------
Chocobo_Whistle	=	5000	;Legionnaires_Scythe	=	2000	;    Legionnaires_Staff	=	2000	;
    Legionnaires_Knuckles	=	2000	;    Legionnaires_Axe 	=	2000	;    Legionnaires_Crossbow	=	2000	;    Legionnaires_Cap	=	2000	;
    Legionnaires_Mittens	=	2000	;    Legionnaires_Leggings 	=	2000	;    Decurions_Shield	=	4000	;    Decurions_Dagger	=	4000	;
    Decurions_Hammer 	=	4000	;    Legionnaires_Harness	=	4000	;    Legionnaires_Subligar 	=	4000	;    Legionnaires_Circlet	=	8000	;
    Bastokan_Ring	=	8000	;    Centurions_Sword	=	8000	;    Centurions_Axe	=	8000	;    Centurions_Visor 	=	8000	;
    Centurions_Scale_Mail	=	8000	;    Centurions_Finger_Gauntlets	=	8000	;    Centurions_Cuisses	=	8000	;    Centurions_Greaves	=	8000	;
    Republican_Bronze_Medal 	=	8000	;    Junior_Musketeers_Chakram	=	16000	;    Iron_Musketeers_Gambison	=	16000	;    Junior_Musketeers_Tuck 	=	16000	;
    Iron_Musketeers_Armet	=	16000	;    Iron_Musketeers_Gauntlets	=	16000	;    Iron_Musketeers_Sabatons 	=	16000	;    Musketeer_Gun 	=	24000	;
    Musketeers_Pole 	=	24000	;    Musketeers_Sword 	=	24000	;    Iron_Musketeers_Cuirass	=	24000	;    Iron_Musketeers_Cuisses	=	24000	;
    Republican_Iron_Medal 	=	24000	; Musketeer_Commanders_Rod	=	32000	;Iron_Musketeers_Gorget	=	32000	;Musketeer_Commanders_Falchion	=	32000	;
Musketeer_Commanders_Shields	=	32000	;Republican_mythril_Medal	=	32000	;Republican_Army_Mantle	=	32000	;    Gold_Musketeers_Ring	=	40000	;
    Gold_Musketeers_Uchigatana	=	40000	;    Iron_Musketeers_Bolt	=	40000	;Republican_Gold_Medal	=	48000	;    Presidential_Hairpin	=	48000	;
    Praefectuss_Gloves	=	48000	;    Senior_Gold_Musketeers_Scimitar	=	56000	;    Senior_Gold_Musketeers_Axe	=	56000	;    Senior_Gold_Musketeers_Scythe	=	56000	;
    Senior_Gold_Musketeers_Rod	=	56000	;    Republic_Aketon	=	60000	;    Republic_Signet_Staff	=	60000	;

-------------Finished Delcaring------------

-------Trade function -------------

if (trade:getItemCount() == 1) then
        if (trade:hasItemQty(2917,1)) and (balance >= Legionnaires_Scythe)
			 then   
			player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(16780,1);
   player:messageSpecial(ITEM_OBTAINED,16780,1);
        
		elseif (trade:hasItemQty(2915,1)) and (balance >= Legionnaires_Staff)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(17128,1);
   player:messageSpecial(ITEM_OBTAINED,17128,1);
   
		elseif (trade:hasItemQty(2916,1)) and (balance >= Legionnaires_Knuckles)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(16433,1);
   player:messageSpecial(ITEM_OBTAINED,16433,1); 

		elseif (trade:hasItemQty(2919,1)) and (balance >= Legionnaires_Axe)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(16648,1);
   player:messageSpecial(ITEM_OBTAINED,16648,1);

		elseif (trade:hasItemQty(2918,1)) and (balance >= Legionnaires_Crossbow)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(17223,1);
   player:messageSpecial(ITEM_OBTAINED,17223,1); 

		elseif (trade:hasItemQty(2921,1)) and (balance >= Legionnaires_Cap)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(12509,1);
   player:messageSpecial(ITEM_OBTAINED,12509,1);

		elseif (trade:hasItemQty(2920,1)) and (balance >= Legionnaires_Mittens)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(12752,1);
   player:messageSpecial(ITEM_OBTAINED,12752,1); 

		elseif (trade:hasItemQty(2923,1)) and (balance >= Legionnaires_Leggings)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(13003,1);
   player:messageSpecial(ITEM_OBTAINED,13003,1);  

		elseif (trade:hasItemQty(2922,1)) and (balance >= Decurions_Shield)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(12337,1);
   player:messageSpecial(ITEM_OBTAINED,12337,1);    
   
 		elseif (trade:hasItemQty(2925,1)) and (balance >= Decurions_Dagger)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(16745,1);
   player:messageSpecial(ITEM_OBTAINED,16745,1); 

		elseif (trade:hasItemQty(2924,1)) and (balance >= Decurions_Hammer)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(17048,1);
   player:messageSpecial(ITEM_OBTAINED,17048,1); 

		elseif (trade:hasItemQty(2945,1)) and (balance >= Legionnaires_Harness)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(12629,1);
   player:messageSpecial(ITEM_OBTAINED,12629,1);

		elseif (trade:hasItemQty(2922,1)) and (balance >= Legionnaires_Subligar)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(12881,1);
   player:messageSpecial(ITEM_OBTAINED,12881,1);    
   
 		elseif (trade:hasItemQty(2947,1)) and (balance >= Bastokan_Ring)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(13497,1);
   player:messageSpecial(ITEM_OBTAINED,13497,1);

		elseif (trade:hasItemQty(2948,1)) and (balance >= Legionnaires_Circlet)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(13830,1);
   player:messageSpecial(ITEM_OBTAINED,13830,1);

		elseif (trade:hasItemQty(2949,1)) and (balance >= Centurions_Sword)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(16806,1);
   player:messageSpecial(ITEM_OBTAINED,16806,1);

		elseif (trade:hasItemQty(2950,1)) and (balance >= Centurions_Axe)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(16712,1);
   player:messageSpecial(ITEM_OBTAINED,16712,1); 

		elseif (trade:hasItemQty(2892,1)) and (balance >= Centurions_Visor)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12438,1);
   player:messageSpecial(ITEM_OBTAINED,12438,1);

		elseif (trade:hasItemQty(2893,1)) and (balance >= Centurions_Scale_Mail)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12566,1);
   player:messageSpecial(ITEM_OBTAINED,12566,1);

		elseif (trade:hasItemQty(2894,1)) and (balance >= Centurions_Finger_Gauntlets)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12694,1);
   player:messageSpecial(ITEM_OBTAINED,12694,1);

 		elseif (trade:hasItemQty(2895,1)) and (balance >= Centurions_Cuisses)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12822,1);
   player:messageSpecial(ITEM_OBTAINED,12822,1);  
   
  		elseif (trade:hasItemQty(2896,1)) and (balance >= Centurions_Greaves)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12950,1);
   player:messageSpecial(ITEM_OBTAINED,12950,1);

 		elseif (trade:hasItemQty(2897,1)) and (balance >= Republican_Bronze_Medal)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(13098,1);
   player:messageSpecial(ITEM_OBTAINED,13098,1); 

 		elseif (trade:hasItemQty(2898,1)) and (balance >= Junior_Musketeers_Chakram)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(17283,1);
   player:messageSpecial(ITEM_OBTAINED,17283,1);

 		elseif (trade:hasItemQty(2912,1)) and (balance >= Iron_Musketeers_Gambison)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(13721,1);
   player:messageSpecial(ITEM_OBTAINED,13721,1);

 		elseif (trade:hasItemQty(2910,1)) and (balance >= Junior_Musketeers_Tuck)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(16516,1);
   player:messageSpecial(ITEM_OBTAINED,16516,1); 

 		elseif (trade:hasItemQty(2913,1)) and (balance >= Iron_Musketeers_Armet)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(12422,1);
   player:messageSpecial(ITEM_OBTAINED,12422,1);

 		elseif (trade:hasItemQty(2907,1)) and (balance >= Iron_Musketeers_Gauntlets)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(12678,1);
   player:messageSpecial(ITEM_OBTAINED,12678,1);

 		elseif (trade:hasItemQty(3072,1)) and (balance >= Iron_Musketeers_Sabatons)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(12934,1);
   player:messageSpecial(ITEM_OBTAINED,12934,1); 

 		elseif (trade:hasItemQty(3073,1)) and (balance >= Musketeer_Gun)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(17253,1);
   player:messageSpecial(ITEM_OBTAINED,17253,1);

 		elseif (trade:hasItemQty(3075,1)) and (balance >= Musketeers_Pole)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(17129,1);
   player:messageSpecial(ITEM_OBTAINED,17129,1);

 		elseif (trade:hasItemQty(3076,1)) and (balance >= Musketeers_Sword)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(16529,1);
   player:messageSpecial(ITEM_OBTAINED,16529,1);

 		elseif (trade:hasItemQty(3077,1)) and (balance >= Iron_Musketeers_Cuirass)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12550,1);
   player:messageSpecial(ITEM_OBTAINED,12550,1); 

 		elseif (trade:hasItemQty(3074,1)) and (balance >= Iron_Musketeers_Cuisses)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12806,1);
   player:messageSpecial(ITEM_OBTAINED,12806,1);

 		elseif (trade:hasItemQty(3078,1)) and (balance >= Republican_Iron_Medal)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(13099,1);
   player:messageSpecial(ITEM_OBTAINED,13099,1);  

 		elseif (trade:hasItemQty(3083,1)) and (balance >= Musketeer_Commanders_Rod)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(17151,1);
   player:messageSpecial(ITEM_OBTAINED,17151,1);

 		elseif (trade:hasItemQty(3081,1)) and (balance >= Iron_Musketeers_Gorget)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(13064,1);
   player:messageSpecial(ITEM_OBTAINED,13064,1);

  		elseif (trade:hasItemQty(3079,1)) and (balance >= Musketeer_Commanders_Falchion)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(16557,1);
   player:messageSpecial(ITEM_OBTAINED,16557,1);

 		elseif (trade:hasItemQty(3084,1)) and (balance >= Republican_mythril_Medal)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(13100,1);
   player:messageSpecial(ITEM_OBTAINED,13100,1);

 		elseif (trade:hasItemQty(3082,1)) and (balance >= Musketeer_Commanders_Shields)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(12304,1);
   player:messageSpecial(ITEM_OBTAINED,12304,1);

    	elseif (trade:hasItemQty(3080,1)) and (balance >= Republican_Army_Mantle)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(13582,1);
   player:messageSpecial(ITEM_OBTAINED,13582,1);   
   
 		elseif (trade:hasItemQty(3089,1)) and (balance >= Gold_Musketeers_Ring)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(13558,1);
   player:messageSpecial(ITEM_OBTAINED,13558,1);
 
 		elseif (trade:hasItemQty(3087,1)) and (balance >= Gold_Musketeers_Uchigatana)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(17807,1);
   player:messageSpecial(ITEM_OBTAINED,17807,1);

 		elseif (trade:hasItemQty(3088,1)) and (balance >= Iron_Musketeers_Bolt)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(18739,1);
   player:messageSpecial(ITEM_OBTAINED,18739,1);

 		elseif (trade:hasItemQty(3085,1)) and (balance >= Republican_Gold_Medal)
			 then    
            player:delCurrency("bastok_cp", 48000);
			player:delCurrency("sandoria_cp", 48000);
			player:delCurrency("windurst_cp", 48000);
   player:tradeComplete();
   player:addItem(13141,1);
   player:messageSpecial(ITEM_OBTAINED,13141,1);

 		elseif (trade:hasItemQty(3086,1)) and (balance >= Presidential_Hairpin)
			 then    
            player:delCurrency("bastok_cp", 48000);
			player:delCurrency("sandoria_cp", 48000);
			player:delCurrency("windurst_cp", 48000);
   player:tradeComplete();
   player:addItem(13880,1);
   player:messageSpecial(ITEM_OBTAINED,13880,1);

 		elseif (trade:hasItemQty(3090,1)) and (balance >= Praefectuss_Gloves)
			 then    
            player:delCurrency("bastok_cp", 48000);
			player:delCurrency("sandoria_cp", 48000);
			player:delCurrency("windurst_cp", 48000);
   player:tradeComplete();
   player:addItem(14015,1);
   player:messageSpecial(ITEM_OBTAINED,14015,1);

 		elseif (trade:hasItemQty(3093,1)) and (balance >= Senior_Gold_Musketeers_Scimitar)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(17655,1);
   player:messageSpecial(ITEM_OBTAINED,17655,1);

 		elseif (trade:hasItemQty(3094,1)) and (balance >= Senior_Gold_Musketeers_Axe)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(18196,1);
   player:messageSpecial(ITEM_OBTAINED,18196,1);

 		elseif (trade:hasItemQty(3090,1)) and (balance >= Grand_Knights_Lance)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(16886,1);
   player:messageSpecial(ITEM_OBTAINED,16886,1); 

 		elseif (trade:hasItemQty(3092,1)) and (balance >= Senior_Gold_Musketeers_Scythe)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(16799,1);
   player:messageSpecial(ITEM_OBTAINED,16799,1);

 		elseif (trade:hasItemQty(3091,1)) and (balance >= Senior_Gold_Musketeers_Rod)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(17457,1);
   player:messageSpecial(ITEM_OBTAINED,17457,1);

 		elseif (trade:hasItemQty(3098,1)) and (balance >= Republic_Aketon)
			 then    
            player:delCurrency("bastok_cp", 60000);
			player:delCurrency("sandoria_cp", 60000);
			player:delCurrency("windurst_cp", 60000);
   player:tradeComplete();
   player:addItem(14429,1);
   player:messageSpecial(ITEM_OBTAINED,14429,1);

   		elseif (trade:hasItemQty(3097,1)) and (balance >= Republic_Signet_Staff)
			 then    
            player:delCurrency("bastok_cp", 60000);
			player:delCurrency("sandoria_cp", 60000);
			player:delCurrency("windurst_cp", 60000);
   player:tradeComplete();
   player:addItem(17584,1);
   player:messageSpecial(ITEM_OBTAINED,17584,1);

 		elseif (trade:hasItemQty(3102,1)) and (balance >= Chocobo_Whistle)
			 then    
            player:delCurrency("bastok_cp", 5000);
			player:delCurrency("sandoria_cp", 5000);
			player:delCurrency("windurst_cp", 5000);
   player:tradeComplete();
   player:addItem(15533,1);
   player:messageSpecial(ITEM_OBTAINED,15533,1);
 

   
   
end
end
end;
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

