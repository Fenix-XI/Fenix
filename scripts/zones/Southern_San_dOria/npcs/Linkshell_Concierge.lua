-----------------------------------
-- Area: Souther San dOria
-- NPC: Linkshell Concierge 
-- Guild Merchant NPC: Linkshell_Concierge 
-- @pos G-10
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Southern_San_dOria/TextIDs");



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

stock = {0xB65,	1,	--	Bloodshot Hecteye	Trades to 	Royal Footmans Tunic
0xB63,	1,	--	HQ Clionid Wing	Trades to 	Royal Archers Cesti
0xB64,	1,	--	HQ Limule Pincer	Trades to 	Royal Archers Sword
0xB67,	1,	--	Bloody Fang	Trades to 	Royal Footmans Bandana
0xB66,	1,	--	Baleful Skull	Trades to 	Royal Archers Longbow
0xB69,	1,	--	Venomous Scorpion Stinger	Trades to 	Royal Footmans Gloves
0xB68,	1,	--	Alkaline Humus	Trades to 	Royal Footmans Boots
0xB6B,	1,	--	Cockatrice tailmeat	Trades to 	Royal Footmans Clogs
0xB6A,	1,	--	Eft Egg	Trades to 	Royal Spearmans Horn
0xB6D,	1,	--	Resilient Mane	Trades to 	Royal Spearmans Spear
0xB6C,	1,	--	Shocking Whisker	Trades to 	Royal Footmans Vest
0xB81,	1,	--	Shriveled Wing	Trades to 	Royal Footmans Trousers
0xB82,	1,	--	Tarnished Pincer	Trades to 	Royal Squires Mace
0xB83,	1,	--	Exorcised Skull	Trades to 	San dOrian Ring
0xB84,	1,	--	Acidic Humus	Trades to 	Royal Squires Dagger
0xB85,	1,	--	Quivering Eft Egg	Trades to 	Royal Squires Halberd
0xB86,	1,	--	Smooth Whisker	Trades to 	Royal Squires Helm
0xB4C,	1,	--	Raw Mutton Chop	Trades to 	Royal Squires Mufflers
0xB4D,	1,	--	Gargantuan Black tiger Fang	Trades to 	Royal Squires Sollerets
0xB4E,	1,	--	Trophy Shield	Trades to 	Royal Squires Collar
0xB4F,	1,	--	Oversized sock	Trades to 	Royal Squires Shield
0xB50,	1,	--	Massive Armband	Trades to 	Royal Squires Robe
0xB51,	1,	--	Transparent Insect Wing	Trades to 	Royal Swordsmans Blade
0xB52,	1,	--	Piceous Scale	Trades to 	Royal Squires Chainmail
0xB60,	1,	--	Giant Bugard Tusk	Trades to 	Royal Squires Breeches
0xB5E,	1,	--	Armored Dragonhorn	Trades to 	Royal Knights Cloak
0xB61,	1,	--	Clouded Lens	Trades to 	Royal Knights Belt
0xB5B,	1,	--	Tiny Morbol Vine	Trades to 	Temple Knight Army Sword
0xC00,	1,	--	Withered Cocoon	Trades to 	Royal Knight Army Lance
0xC01,	1,	--	Eruca Egg	Trades to 	Royal Knights Mufflers
0xC03,	1,	--	Undying Ooze	Trades to 	Royal Knights Sollerets
0xC04,	1,	--	Bone Chips	Trades to 	Royal Knight Army Shield
0xC05,	1,	--	 Wailing Rags	Trades to 	Temple Knight Army Shield
0xC02,	1,	--	Blached Silver	Trades to 	Temple Knight Army Collar
0xC06,	1,	--	Cracked Dragonscale	Trades to 	Royal Knight Army Collar
0xC0B,	1,	--	Mangled Cockatrice Skin	Trades to 	Royal Guards Fleuret
0xC09,	1,	--	Coeurl Round	Trades to 	Royal Guards Sword
0xC07,	1,	--	Gory Pincer	Trades to 	Royal Guards Rod
0xC0A,	1,	--	Withered Bud	Trades to 	Royal Knights Breeches
0xC0C,	1,	--	Great Root	Trades to 	Royal Knights Chainmail
0xC08,	1,	--	Extended Eyestalk	Trades to 	Royal Guards Shield
0xC11,	1,	--	Orobon Cheekmeat	Trades to 	Royal Knights Aketon
0xC0F,	1,	--	Apkallu Down	Trades to 	Royal Knights Bascinet
0xC10,	1,	--	Avian Remex	Trades to 	Royal Guards Collar
0xC0D,	1,	--	Bewitching Tusk	Trades to 	Royal Army Mantle
0xC0E,	1,	--	Molt Scraps	Trades to 	Grand Knights Ring
0xC12,	1,	--	Spheroid Plate	Trades to 	Grand Knights Lance
0xC15,	1,	--	HQ Crab Meat	Trades to 	Temple Knights Arrow
0xC16,	1,	--	HQ Rock Salt	Trades to 	Grand Temple Knights Collar
0xC14,	1,	--	Mocking Beak	Trades to 	Grand Temple Knights Bangles
0xC13,	1,	--	Hardened Raptor Skin	Trades to 	Grand Temple Knights Gauntlets
0xC17,	1,	--	Worm Eaten Bud	Trades to 	Reserve Captains Lance
0xC19,	1,	--	Black Rabbit Tail	Trades to 	Reserve Captains Mace
0xC18,	1,	--	Spooted flyfrond	Trades to 	Reserve Captains Greatsword
0xC1B,	1,	--	Gargouille Stone	Trades to 	Reserve Captains Pick
0xC1A,	1,	--	Gnarled Taurus Horn	Trades to 	Kingdom Aketon
0xC1D,	1,	--	Dented Skull	Trades to 	Kingdom Signet Staff
0xC1E,	1	--	Stiffened Tentacle	Trades to 	Chocobo Whistle
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
Royal_Footmans_Tunic =2000;Royal_Archer_s_Cesti =2000;Royal_Archers_Sword =2000;Royal_Footmans_Bandana	=2000;
Royal_Archers_Longbow=2000;Royal_Footmans_Gloves	=2000;Royal_Footmans_Boots=2000;Royal_Footmans_Clogs=4000;
Royal_Spearmans_Horn=4000;Royal_Spearmans_Spear	=4000;Royal_Footmans_Vest=4000;Royal_Footmans_Trousers=4000;
Royal_Squires_Mace=8000;San_dOrian_Ring=8000;Royal_Squires_Dagger	=8000;Royal_Squires_Halberd	=8000;Royal_Squires_Helm=8000;
Royal_Squires_Mufflers=	8000;Royal_Squires_Sollerets=8000;Royal_Squires_Collar=8000;Royal_Squires_Shield=16000;
Royal_Squires_Robe=16000;Royal_Swordsmans_Blade	=	16000	;Royal_Squires_Chainmail	=	16000	;
Royal_Squires_Breeches	=	16000	;Royal_Knights_Cloak	=	24000	;Royal_Knights_Belt	=	24000	;
Temple_Knight_Army_Sword	=	24000	;Royal_Knight_Army_Lance	=	24000	;Royal_Knights_Mufflers	=	24000	;
Royal_Knights_Sollerets	=	24000	;Royal_Knight_Army_Shield	=	24000	;Temple_Knight_Army_Shield	=	24000	;
Temple_Knight_Army_Collar	=	24000	;Royal_Knight_Army_Collar	=	24000	;Royal_Guards_Fleuret	=	32000	;
Royal_Guards_Sword	=	32000	;Royal_Guards_Rod	=	32000	;Royal_Knights_Breeches	=	32000	;
Royal_Knights_Chainmail	=	32000	;Royal_Guards_Shield	=	32000	;Royal_Knights_Aketon	=	32000	;
Royal_Knights_Bascinet	=	32000	;Royal_Guards_Collar	=	32000	;Royal_Army_Mantle	=	32000	;
Grand_Knights_Ring	=	40000	;Grand_Knights_Lance	=	40000	;Temple_Knights_Arrow	=	40000	;
Grand_Temple_Knights_Collar	=	48000	;Grand_Temple_Knights_Bangles	=	48000	;Grand_Temple_Knights_Gauntlets	=	48000	;
Reserve_Captains_Lance	=	56000	;Reserve_Captains_Mace	=	56000	;Reserve_Captains_Greatsword	=	56000	;
Reserve_Captains_Pick	=	56000	;Kingdom_Aketon	=	60000	;Kingdom_Signet_Staff	=	60000	;
Chocobo_Whistle	=	5000	;

-------------Finished Delcaring------------

-------Trade function -------------

if (trade:getItemCount() == 1) then
        if (trade:hasItemQty(2917,1)) and (balance >= Royal_Footmans_Tunic)
			 then   
			player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(13718,1);
   player:messageSpecial(ITEM_OBTAINED,13718,1);
        
		elseif (trade:hasItemQty(2915,1)) and (balance >= Royal_Archer_s_Cesti)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(16691,1);
   player:messageSpecial(ITEM_OBTAINED,16691,1);
   
		elseif (trade:hasItemQty(2916,1)) and (balance >= Royal_Archers_Sword)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(16544,1);
   player:messageSpecial(ITEM_OBTAINED,16544,1); 

		elseif (trade:hasItemQty(2919,1)) and (balance >= Royal_Footmans_Bandana)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(12510,1);
   player:messageSpecial(ITEM_OBTAINED,12510,1);

		elseif (trade:hasItemQty(2918,1)) and (balance >= Royal_Archers_Longbow)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(17167,1);
   player:messageSpecial(ITEM_OBTAINED,17167,1); 

		elseif (trade:hasItemQty(2921,1)) and (balance >= Royal_Footmans_Gloves)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(12753,1);
   player:messageSpecial(ITEM_OBTAINED,12753,1);

		elseif (trade:hasItemQty(2920,1)) and (balance >= Royal_Footmans_Boots)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(13004,1);
   player:messageSpecial(ITEM_OBTAINED,13004,1); 

		elseif (trade:hasItemQty(2923,1)) and (balance >= Royal_Footmans_Clogs)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(13045,1);
   player:messageSpecial(ITEM_OBTAINED,13045,1);  

		elseif (trade:hasItemQty(2922,1)) and (balance >= Royal_Spearmans_Horn)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(17367,1);
   player:messageSpecial(ITEM_OBTAINED,17367,1);    
   
 		elseif (trade:hasItemQty(2925,1)) and (balance >= Royal_Spearmans_Spear)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(16852,1);
   player:messageSpecial(ITEM_OBTAINED,16852,1); 

		elseif (trade:hasItemQty(2924,1)) and (balance >= Royal_Footmans_Vest)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(12630,1);
   player:messageSpecial(ITEM_OBTAINED,12630,1); 

		elseif (trade:hasItemQty(2945,1)) and (balance >= Royal_Footmans_Trousers)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(12882,1);
   player:messageSpecial(ITEM_OBTAINED,12882,1);

		elseif (trade:hasItemQty(2946,1)) and (balance >= Royal_Squires_Mace)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(17150,1);
   player:messageSpecial(ITEM_OBTAINED,17150,1);    
   
 		elseif (trade:hasItemQty(2947,1)) and (balance >= San_dOrian_Ring)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(13495,1);
   player:messageSpecial(ITEM_OBTAINED,13495,1);

		elseif (trade:hasItemQty(2948,1)) and (balance >= Royal_Squires_Dagger)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(16744,1);
   player:messageSpecial(ITEM_OBTAINED,16744,1);

		elseif (trade:hasItemQty(2949,1)) and (balance >= Royal_Squires_Halberd)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(16844,1);
   player:messageSpecial(ITEM_OBTAINED,16844,1);

		elseif (trade:hasItemQty(2950,1)) and (balance >= Royal_Squires_Helm)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12431,1);
   player:messageSpecial(ITEM_OBTAINED,12431,1); 

		elseif (trade:hasItemQty(2892,1)) and (balance >= Royal_Squires_Mufflers)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12687,1);
   player:messageSpecial(ITEM_OBTAINED,12687,1);

		elseif (trade:hasItemQty(2893,1)) and (balance >= Royal_Squires_Sollerets)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12943,1);
   player:messageSpecial(ITEM_OBTAINED,12943,1);

		elseif (trade:hasItemQty(2894,1)) and (balance >= Royal_Squires_Collar)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(13104,1);
   player:messageSpecial(ITEM_OBTAINED,13104,1);

 		elseif (trade:hasItemQty(2895,1)) and (balance >= Royal_Squires_Shield)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(12336,1);
   player:messageSpecial(ITEM_OBTAINED,12336,1);  
   
  		elseif (trade:hasItemQty(2896,1)) and (balance >= Royal_Squires_Robe)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(13719,1);
   player:messageSpecial(ITEM_OBTAINED,13719,1);

 		elseif (trade:hasItemQty(2897,1)) and (balance >= Royal_Swordsmans_Blade)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(16601,1);
   player:messageSpecial(ITEM_OBTAINED,16601,1); 

 		elseif (trade:hasItemQty(2898,1)) and (balance >= Royal_Squires_Chainmail)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(12559,1);
   player:messageSpecial(ITEM_OBTAINED,12559,1);

 		elseif (trade:hasItemQty(2912,1)) and (balance >= Royal_Squires_Breeches)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(12815,1);
   player:messageSpecial(ITEM_OBTAINED,12815,1);

 		elseif (trade:hasItemQty(2910,1)) and (balance >= Royal_Knights_Cloak)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(13720,1);
   player:messageSpecial(ITEM_OBTAINED,13720,1); 

 		elseif (trade:hasItemQty(2913,1)) and (balance >= Royal_Knights_Belt)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(13220,1);
   player:messageSpecial(ITEM_OBTAINED,13220,1);

 		elseif (trade:hasItemQty(2907,1)) and (balance >= Temple_Knight_Army_Sword)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(16571,1);
   player:messageSpecial(ITEM_OBTAINED,16571,1);

 		elseif (trade:hasItemQty(3072,1)) and (balance >= Royal_Knight_Army_Lance)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(16851,1);
   player:messageSpecial(ITEM_OBTAINED,16851,1); 

 		elseif (trade:hasItemQty(3073,1)) and (balance >= Royal_Knights_Mufflers)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12686,1);
   player:messageSpecial(ITEM_OBTAINED,12686,1);

 		elseif (trade:hasItemQty(3075,1)) and (balance >= Royal_Knights_Sollerets)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12942,1);
   player:messageSpecial(ITEM_OBTAINED,12942,1);

 		elseif (trade:hasItemQty(3076,1)) and (balance >= Royal_Knight_Army_Shield)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12312,1);
   player:messageSpecial(ITEM_OBTAINED,12312,1);

 		elseif (trade:hasItemQty(3077,1)) and (balance >= Temple_Knight_Army_Shield)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12313,1);
   player:messageSpecial(ITEM_OBTAINED,12313,1); 

 		elseif (trade:hasItemQty(3074,1)) and (balance >= Temple_Knight_Army_Collar)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(13105,1);
   player:messageSpecial(ITEM_OBTAINED,13105,1);
   
    	elseif (trade:hasItemQty(3078,1)) and (balance >= Royal_Knight_Army_Collar)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(13107,1);
   player:messageSpecial(ITEM_OBTAINED,13107,1);

 		elseif (trade:hasItemQty(3083,1)) and (balance >= Royal_Guards_Fleuret)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(16805,1);
   player:messageSpecial(ITEM_OBTAINED,16805,1);  

 		elseif (trade:hasItemQty(3081,1)) and (balance >= Royal_Guards_Sword)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(16599,1);
   player:messageSpecial(ITEM_OBTAINED,16599,1);

 		elseif (trade:hasItemQty(3079,1)) and (balance >= Royal_Guards_Rod)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(17067,1);
   player:messageSpecial(ITEM_OBTAINED,17067,1);

  		elseif (trade:hasItemQty(3082,1)) and (balance >= Royal_Knights_Breeches)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(12814,1);
   player:messageSpecial(ITEM_OBTAINED,12814,1);

 		elseif (trade:hasItemQty(3084,1)) and (balance >= Royal_Knights_Chainmail)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(12558,1);
   player:messageSpecial(ITEM_OBTAINED,12558,1);

 		elseif (trade:hasItemQty(3080,1)) and (balance >= Royal_Guards_Shield)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(12321,1);
   player:messageSpecial(ITEM_OBTAINED,12321,1);

 		elseif (trade:hasItemQty(3089,1)) and (balance >= Royal_Knights_Aketon)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(13722,1);
   player:messageSpecial(ITEM_OBTAINED,13722,1);

 		elseif (trade:hasItemQty(3087,1)) and (balance >= Royal_Knights_Bascinet)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(12430,1);
   player:messageSpecial(ITEM_OBTAINED,12430,1);

 		elseif (trade:hasItemQty(3088,1)) and (balance >= Royal_Guards_Collar)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(13106,1);
   player:messageSpecial(ITEM_OBTAINED,13106,1);

 		elseif (trade:hasItemQty(3085,1)) and (balance >= Royal_Army_Mantle)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(13580,1);
   player:messageSpecial(ITEM_OBTAINED,13580,1);

 		elseif (trade:hasItemQty(3086,1)) and (balance >= Royal_Guards_Fleuret)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(13557,1);
   player:messageSpecial(ITEM_OBTAINED,13557,1);

 		elseif (trade:hasItemQty(3090,1)) and (balance >= Grand_Knights_Lance)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(16886,1);
   player:messageSpecial(ITEM_OBTAINED,16886,1);

 		elseif (trade:hasItemQty(3093,1)) and (balance >= Temple_Knights_Arrow)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(18738,1);
   player:messageSpecial(ITEM_OBTAINED,18738,1);

 		elseif (trade:hasItemQty(3094,1)) and (balance >= Grand_Temple_Knights_Collar)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(13140,1);
   player:messageSpecial(ITEM_OBTAINED,13140,1);

 		elseif (trade:hasItemQty(3090,1)) and (balance >= Grand_Knights_Lance)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(16886,1);
   player:messageSpecial(ITEM_OBTAINED,16886,1); 

 		elseif (trade:hasItemQty(3092,1)) and (balance >= Grand_Temple_Knights_Bangles)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(14014,1);
   player:messageSpecial(ITEM_OBTAINED,14014,1);

 		elseif (trade:hasItemQty(3091,1)) and (balance >= Grand_Temple_Knights_Gauntlets)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(14013,1);
   player:messageSpecial(ITEM_OBTAINED,14013,1);

 		elseif (trade:hasItemQty(3095,1)) and (balance >= Reserve_Captains_Lance)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(16893,1);
   player:messageSpecial(ITEM_OBTAINED,16893,1);

   		elseif (trade:hasItemQty(3097,1)) and (balance >= Reserve_Captains_Mace)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(17458,1);
   player:messageSpecial(ITEM_OBTAINED,17458,1);

 		elseif (trade:hasItemQty(3096,1)) and (balance >= Reserve_Captains_Greatsword)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(16953,1);
   player:messageSpecial(ITEM_OBTAINED,16953,1); 

 		elseif (trade:hasItemQty(3099,1)) and (balance >= Reserve_Captains_Pick)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(17934,1);
   player:messageSpecial(ITEM_OBTAINED,17934,1);

 		elseif (trade:hasItemQty(3098,1)) and (balance >= Kingdom_Aketon)
			 then    
            player:delCurrency("bastok_cp", 60000);
			player:delCurrency("sandoria_cp", 60000);
			player:delCurrency("windurst_cp", 60000);
   player:tradeComplete();
   player:addItem(14428,1);
   player:messageSpecial(ITEM_OBTAINED,14428,1);

 		elseif (trade:hasItemQty(3101,1)) and (balance >= Kingdom_Signet_Staff)
			 then    
            player:delCurrency("bastok_cp", 60000);
			player:delCurrency("sandoria_cp", 60000);
			player:delCurrency("windurst_cp", 60000);
   player:tradeComplete();
   player:addItem(17583,1);
   player:messageSpecial(ITEM_OBTAINED,17583,1);    
   
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

