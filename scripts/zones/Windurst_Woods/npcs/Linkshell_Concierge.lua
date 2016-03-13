-----------------------------------
-- Area: Windurst Woods
-- NPC: Linkshell Concierge 
-- Guild Merchant NPC: Linkshell_Concierge 
-- @pos G-10
-----------------------------------
package.loaded["scripts/zones/Windurst_Woods/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Windurst_Woods/TextIDs");



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

stock = {0xB65,	1,	--	Bloodshot Hecteye	Trades to	Freeswords Staff 	=	2000	;
0xB63,	1,	--	HQ Clionid Wing	Trades to	Freeswords Slops	=	2000	;
0xB64,	1,	--	HQ Limule Pincer	Trades to	Freeswords Baghnakhs	=	2000	;
0xB67,	1,	--	Bloody Fang	Trades to	Freeswords Club	=	2000	;
0xB66,	1,	--	Baleful Skull	Trades to	Freeswords Bow	=	2000	;
0xB69,	1,	--	Venomous Scorpion Stinger	Trades to	Mercenarys Greatsword	=	4000	;
0xB68,	1,	--	Alkaline Humus	Trades to	Mercenarys Knife	=	4000	;
0xB6B,	1,	--	Cockatrice tailmeat	Trades to	Mercenarys Pole	=	4000	;
0xB6A,	1,	--	Eft Egg	Trades to	Mercenarys Hachimaki	=	4000	;
0xB6D,	1,	--	Resilient Mane	Trades to	Mercenarys Gi	=	4000	;
0xB6C,	1,	--	Shocking Whisker	Trades to	Mercenarys Tekko	=	4000	;
0xB81,	1,	--	Shriveled Wing	Trades to	Mercenarys Sitabaki	=	4000	;
0xB82,	1,	--	Tarnished Pincer	Trades to	Mercenarys Kyahan	=	4000	;
0xB83,	1,	--	Exorcised Skull	Trades to	Mercenary Captains Belt 	=	8000	;
0xB84,	1,	--	Acidic Humus	Trades to	Windurstian Ring	=	8000	;
0xB85,	1,	--	Quivering Eft Egg	Trades to	Mercenary Captains Kukri 	=	8000	;
0xB86,	1,	--	Smooth Whisker	Trades to	Mercenary Captains Scythe	=	8000	;
0xB4C,	1,	--	Raw Mutton Chop	Trades to	Mercenary Captains Headgear	=	8000	;
0xB4D,	1,	--	Gargantuan Black tiger Fang	Trades to	Mercenary Captains Doublet	=	8000	;
0xB4E,	1,	--	Trophy Shield	Trades to	Mercenary Captains Gloves	=	8000	;
0xB4F,	1,	--	Oversized sock	Trades to	Mercenary Captains Hose	=	8000	;
0xB50,	1,	--	Massive Armband	Trades to	Mercenary Captains Gaiters	=	8000	;
0xB51,	1,	--	Transparent Insect Wing	Trades to	Combat Casters Axe	=	16000	;
0xB52,	1,	--	Piceous Scale	Trades to	Combat Casters Scimitar	=	16000	;
0xB60,	1,	--	Giant Bugard Tusk	Trades to	Combat Casters Dagger	=	16000	;
0xB5E,	1,	--	Armored Dragonhorn	Trades to	Combat Casters Mitts	=	16000	;
0xB61,	1,	--	Clouded Lens	Trades to	Combat Casters Slacks	=	16000	;
0xB5B,	1,	--	Tiny Morbol Vine	Trades to	Combat Casters Shoes	=	16000	;
0xC00,	1,	--	Withered Cocoon	Trades to	Combat Casters Cloak	=	16000	;
0xC01,	1,	--	Eruca Egg	Trades to	Combat Casters Boomerang	=	16000	;
0xC03,	1,	--	Undying Ooze	Trades to	Green Scarf	=	16000	;
0xC04,	1,	--	Bone Chips	Trades to	Tactician Magicians Hooks 	=	24000	;
0xC05,	1,	--	 Wailing Rags	Trades to	Tactician Magicians Wand	=	24000	;
0xC02,	1,	--	Blached Silver	Trades to	Tactician Magicians Hat	=	24000	;
0xC06,	1,	--	Cracked Dragonscale	Trades to	Tactician Magicians Espadon	=	24000	;
0xC0B,	1,	--	Mangled Cockatrice Skin	Trades to	Tactician Magicians Coat	=	24000	;
0xC09,	1,	--	Coeurl Round	Trades to	Tactician Magicians Cuffs	=	24000	;
0xC07,	1,	--	Gory Pincer	Trades to	Tactician Magicians Slops	=	24000	;
0xC0A,	1,	--	Withered Bud	Trades to	Tactician Magicians Pigaches	=	24000	;
0xC0C,	1,	--	Great Root	Trades to	Paisley Scarf	=	24000	;
0xC08,	1,	--	Extended Eyestalk	Trades to	Wise Wizards Anelace	=	32000	;
0xC11,	1,	--	Orobon Cheekmeat	Trades to	Wise Wizards Bilbo	=	32000	;
0xC0F,	1,	--	Apkallu Down	Trades to	Wise Wizards Staff	=	32000	;
0xC10,	1,	--	Avian Remex	Trades to	Checkered Scarf	=	32000	;
0xC0D,	1,	--	Bewitching Tusk	Trades to	Federal Army Mantle	=	32000	;
0xC0E,	1,	--	Molt Scraps	Trades to	Patriarch Protectors Ring	=	40000	;
0xC12,	1,	--	Spheroid Plate	Trades to	Patriarch Protectors Shield	=	40000	;
0xC15,	1,	--	HQ Crab Meat	Trades to	Combat Casters Arrow	=	40000	;
0xC16,	1,	--	HQ Rock Salt	Trades to	Windurstian Scarf	=	48000	;
0xC14,	1,	--	Mocking Beak	Trades to	Master Casters Bracelets	=	48000	;
0xC13,	1,	--	Hardened Raptor Skin	Trades to	Master Casters Mitts	=	48000	;
0xC17,	1,	--	Worm Eaten Bud	Trades to	Master Casters Knife	=	56000	;
0xC19,	1,	--	Black Rabbit Tail	Trades to	Master Casters Baghnakhs	=	56000	;
0xC18,	1,	--	Spooted flyfrond	Trades to	Master Casters Pole	=	56000	;
0xC1B,	1,	--	Gargouille Stone	Trades to	Master Casters Bow	=	56000	;
0xC1A,	1,	--	Gnarled Taurus Horn	Trades to	Federation Aketon	=	60000	;
0xC1D,	1,	--	Dented Skull	Trades to	Federation Signet Staff	=	60000	;
0xC1E,	1,	--	Stiffened Tentacle	Trades to	Chocobo Whistle	=	5000	;


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
Freeswords_Staff 	=	2000	;
Freeswords_Slops	=	2000	;
Freeswords_Baghnakhs	=	2000	;
Freeswords_Club	=	2000	;
Freeswords_Bow	=	2000	;
Mercenarys_Greatsword	=	4000	;
Mercenarys_Knife	=	4000	;
Mercenarys_Pole	=	4000	;
Mercenarys_Hachimaki	=	4000	;
Mercenarys_Gi	=	4000	;
Mercenarys_Tekko	=	4000	;
Mercenarys_Sitabaki	=	4000	;
Mercenarys_Kyahan	=	4000	;
Mercenary_Captains_Belt 	=	8000	;
Windurstian_Ring	=	8000	;
Mercenary_Captains_Kukri 	=	8000	;
Mercenary_Captains_Scythe	=	8000	;
Mercenary_Captains_Headgear	=	8000	;
Mercenary_Captains_Doublet	=	8000	;
Mercenary_Captains_Gloves	=	8000	;
Mercenary_Captains_Hose	=	8000	;
Mercenary_Captains_Gaiters	=	8000	;
Combat_Casters_Axe	=	16000	;
Combat_Casters_Scimitar	=	16000	;
Combat_Casters_Dagger	=	16000	;
Combat_Casters_Mitts	=	16000	;
Combat_Casters_Slacks	=	16000	;
Combat_Casters_Shoes	=	16000	;
Combat_Casters_Cloak	=	16000	;
Combat_Casters_Boomerang	=	16000	;
Green_Scarf	=	16000	;
Tactician_Magicians_Hooks 	=	24000	;
Tactician_Magicians_Wand	=	24000	;
Tactician_Magicians_Hat	=	24000	;
Tactician_Magicians_Espadon	=	24000	;
Tactician_Magicians_Coat	=	24000	;
Tactician_Magicians_Cuffs	=	24000	;
Tactician_Magicians_Slops	=	24000	;
Tactician_Magicians_Pigaches	=	24000	;
Paisley_Scarf	=	24000	;
Wise_Wizards_Anelace	=	32000	;
Wise_Wizards_Bilbo	=	32000	;
Wise_Wizards_Staff	=	32000	;
Checkered_Scarf	=	32000	;
Federal_Army_Mantle	=	32000	;
Patriarch_Protectors_Ring	=	40000	;
Patriarch_Protectors_Shield	=	40000	;
Combat_Casters_Arrow	=	40000	;
Windurstian_Scarf	=	48000	;
Master_Casters_Bracelets	=	48000	;
Master_Casters_Mitts	=	48000	;
Master_Casters_Knife	=	56000	;
Master_Casters_Baghnakhs	=	56000	;
Master_Casters_Pole	=	56000	;
Master_Casters_Bow	=	56000	;
Federation_Aketon	=	60000	;
Federation_Signet_Staff	=	60000	;
Chocobo_Whistle	=	5000	;


-------------Finished Delcaring------------

-------Trade function -------------

if (trade:getItemCount() == 1) then
        if (trade:hasItemQty(2917,1)) and (balance >= Freeswords_Staff)
			 then   
			player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(17130,1);
   player:messageSpecial(ITEM_OBTAINED,17130,1);
        
		elseif (trade:hasItemQty(2915,1)) and (balance >= Freeswords_Slops)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(12915,1);
   player:messageSpecial(ITEM_OBTAINED,12915,1);
   
		elseif (trade:hasItemQty(2916,1)) and (balance >= Freeswords_Baghnakhs)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(16442,1);
   player:messageSpecial(ITEM_OBTAINED,16442,1); 

		elseif (trade:hasItemQty(2919,1)) and (balance >= Freeswords_Club)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(17028,1);
   player:messageSpecial(ITEM_OBTAINED,17028,1);

		elseif (trade:hasItemQty(2918,1)) and (balance >= Freeswords_Bow)
			 then    
            player:delCurrency("bastok_cp", 2000);
			player:delCurrency("sandoria_cp", 2000);
			player:delCurrency("windurst_cp", 2000);
   player:tradeComplete();
   player:addItem(17159,1);
   player:messageSpecial(ITEM_OBTAINED,17159,1); 

		elseif (trade:hasItemQty(2921,1)) and (balance >= Mercenarys_Greatsword)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(16930,1);
   player:messageSpecial(ITEM_OBTAINED,16930,1);

		elseif (trade:hasItemQty(2920,1)) and (balance >= Mercenarys_Knife)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(16745,1);
   player:messageSpecial(ITEM_OBTAINED,16746,1); 

		elseif (trade:hasItemQty(2923,1)) and (balance >= Mercenarys_Pole)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(17103,1);
   player:messageSpecial(ITEM_OBTAINED,17103,1);  

		elseif (trade:hasItemQty(2922,1)) and (balance >= Mercenarys_Hachimaki)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(12484,1);
   player:messageSpecial(ITEM_OBTAINED,12484,1);    
   
 		elseif (trade:hasItemQty(2925,1)) and (balance >= Mercenarys_Gi)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(12653,1);
   player:messageSpecial(ITEM_OBTAINED,12653,1); 

		elseif (trade:hasItemQty(2924,1)) and (balance >= Mercenarys_Tekko)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(12719,1);
   player:messageSpecial(ITEM_OBTAINED,12719,1); 

		elseif (trade:hasItemQty(2945,1)) and (balance >= Mercenarys_Sitabaki)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(12855,1);
   player:messageSpecial(ITEM_OBTAINED,12855,1);

		elseif (trade:hasItemQty(2922,1)) and (balance >= Mercenarys_Kyahan)
			 then    
            player:delCurrency("bastok_cp", 4000);
			player:delCurrency("sandoria_cp", 4000);
			player:delCurrency("windurst_cp", 4000);
   player:tradeComplete();
   player:addItem(12975,1);
   player:messageSpecial(ITEM_OBTAINED,12975,1);    
   
 		elseif (trade:hasItemQty(2947,1)) and (balance >= Mercenary_Captains_Belt)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(13221,1);
   player:messageSpecial(ITEM_OBTAINED,13221,1);

		elseif (trade:hasItemQty(2948,1)) and (balance >= Windurstian_Ring)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(13496,1);
   player:messageSpecial(ITEM_OBTAINED,13496,1);

		elseif (trade:hasItemQty(2949,1)) and (balance >= Mercenary_Captains_Kukri)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(16747,1);
   player:messageSpecial(ITEM_OBTAINED,16747,1);

		elseif (trade:hasItemQty(2950,1)) and (balance >= Mercenary_Captains_Scythe)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(16776,1);
   player:messageSpecial(ITEM_OBTAINED,16776,1); 

		elseif (trade:hasItemQty(2892,1)) and (balance >= Mercenary_Captains_Headgear)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12470,1);
   player:messageSpecial(ITEM_OBTAINED,12470,1);

		elseif (trade:hasItemQty(2893,1)) and (balance >= Mercenary_Captains_Doublet)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12598,1);
   player:messageSpecial(ITEM_OBTAINED,12598,1);

		elseif (trade:hasItemQty(2894,1)) and (balance >= Mercenary_Captains_Gloves)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12726,1);
   player:messageSpecial(ITEM_OBTAINED,12726,1);

 		elseif (trade:hasItemQty(2895,1)) and (balance >= Mercenary_Captains_Hose)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12854,1);
   player:messageSpecial(ITEM_OBTAINED,12854,1);  
   
  		elseif (trade:hasItemQty(2896,1)) and (balance >= Mercenary_Captains_Gaiters)
			 then    
            player:delCurrency("bastok_cp", 8000);
			player:delCurrency("sandoria_cp", 8000);
			player:delCurrency("windurst_cp", 8000);
   player:tradeComplete();
   player:addItem(12982,1);
   player:messageSpecial(ITEM_OBTAINED,12982,1);

 		elseif (trade:hasItemQty(2897,1)) and (balance >= Combat_Casters_Axe)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(16669,1);
   player:messageSpecial(ITEM_OBTAINED,16669,1); 

 		elseif (trade:hasItemQty(2898,1)) and (balance >= Combat_Casters_Scimitar)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(16807,1);
   player:messageSpecial(ITEM_OBTAINED,16807,1);

 		elseif (trade:hasItemQty(2912,1)) and (balance >= Combat_Casters_Dagger)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(16463,1);
   player:messageSpecial(ITEM_OBTAINED,16463,1);

 		elseif (trade:hasItemQty(2910,1)) and (balance >= Combat_Casters_Mitts)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(12743,1);
   player:messageSpecial(ITEM_OBTAINED,12743,1); 

 		elseif (trade:hasItemQty(2913,1)) and (balance >= Combat_Casters_Slacks)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(12870,1);
   player:messageSpecial(ITEM_OBTAINED,12870,1);

 		elseif (trade:hasItemQty(2907,1)) and (balance >= Combat_Casters_Shoes)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(12998,1);
   player:messageSpecial(ITEM_OBTAINED,12998,1);

 		elseif (trade:hasItemQty(3072,1)) and (balance >= Combat_Casters_Cloak)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(12614,1);
   player:messageSpecial(ITEM_OBTAINED,12614,1); 

 		elseif (trade:hasItemQty(3073,1)) and (balance >= Combat_Casters_Boomerang)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(17282,1);
   player:messageSpecial(ITEM_OBTAINED,17282,1);

 		elseif (trade:hasItemQty(3075,1)) and (balance >= Green_Scarf)
			 then    
            player:delCurrency("bastok_cp", 16000);
			player:delCurrency("sandoria_cp", 16000);
			player:delCurrency("windurst_cp", 16000);
   player:tradeComplete();
   player:addItem(13101,1);
   player:messageSpecial(ITEM_OBTAINED,13101,1);

 		elseif (trade:hasItemQty(3076,1)) and (balance >= Tactician_Magicians_Hooks)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(16694,1);
   player:messageSpecial(ITEM_OBTAINED,16694,1);

 		elseif (trade:hasItemQty(3077,1)) and (balance >= Tactician_Magicians_Wand)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(17082,1);
   player:messageSpecial(ITEM_OBTAINED,17082,1); 

 		elseif (trade:hasItemQty(3074,1)) and (balance >= Tactician_Magicians_Hat)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12478,1);
   player:messageSpecial(ITEM_OBTAINED,12478,1);

 		elseif (trade:hasItemQty(3078,1)) and (balance >= Tactician_Magicians_Espadon)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(16810,1);
   player:messageSpecial(ITEM_OBTAINED,16810,1);  

 		elseif (trade:hasItemQty(3083,1)) and (balance >= Tactician_Magicians_Coat)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12606,1);
   player:messageSpecial(ITEM_OBTAINED,12606,1);

 		elseif (trade:hasItemQty(3081,1)) and (balance >= Tactician_Magicians_Cuffs)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12734,1);
   player:messageSpecial(ITEM_OBTAINED,12734,1);

  		elseif (trade:hasItemQty(3079,1)) and (balance >= Tactician_Magicians_Slops)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12862,1);
   player:messageSpecial(ITEM_OBTAINED,12862,1);

 		elseif (trade:hasItemQty(3084,1)) and (balance >= Tactician_Magicians_Pigaches)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(12990,1);
   player:messageSpecial(ITEM_OBTAINED,12990,1);

 		elseif (trade:hasItemQty(3082,1)) and (balance >= Paisley_Scarf)
			 then    
            player:delCurrency("bastok_cp", 24000);
			player:delCurrency("sandoria_cp", 24000);
			player:delCurrency("windurst_cp", 24000);
   player:tradeComplete();
   player:addItem(13102,1);
   player:messageSpecial(ITEM_OBTAINED,13102,1);

    	elseif (trade:hasItemQty(3080,1)) and (balance >= Wise_Wizards_Anelace)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(16809,1);
   player:messageSpecial(ITEM_OBTAINED,16809,1);   
   
 		elseif (trade:hasItemQty(3089,1)) and (balance >= Wise_Wizards_Bilbo)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(16808,1);
   player:messageSpecial(ITEM_OBTAINED,16808,1);
 
 		elseif (trade:hasItemQty(3087,1)) and (balance >= Wise_Wizards_Staff)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(17094,1);
   player:messageSpecial(ITEM_OBTAINED,17094,1);

 		elseif (trade:hasItemQty(3088,1)) and (balance >= Checkered_Scarf)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(13103,1);
   player:messageSpecial(ITEM_OBTAINED,13103,1);

 		elseif (trade:hasItemQty(3085,1)) and (balance >= Federal_Army_Mantle)
			 then    
            player:delCurrency("bastok_cp", 32000);
			player:delCurrency("sandoria_cp", 32000);
			player:delCurrency("windurst_cp", 32000);
   player:tradeComplete();
   player:addItem(13581,1);
   player:messageSpecial(ITEM_OBTAINED,13581,1);

 		elseif (trade:hasItemQty(3086,1)) and (balance >= Patriarch_Protectors_Ring)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(13559,1);
   player:messageSpecial(ITEM_OBTAINED,13559,1);

 		elseif (trade:hasItemQty(3090,1)) and (balance >= Patriarch_Protectors_Shield)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(12363,1);
   player:messageSpecial(ITEM_OBTAINED,12363,1);

 		elseif (trade:hasItemQty(3093,1)) and (balance >= Combat_Casters_Arrow)
			 then    
            player:delCurrency("bastok_cp", 40000);
			player:delCurrency("sandoria_cp", 40000);
			player:delCurrency("windurst_cp", 40000);
   player:tradeComplete();
   player:addItem(18740,1);
   player:messageSpecial(ITEM_OBTAINED,18740,1);

 		elseif (trade:hasItemQty(3094,1)) and (balance >= Windurstian_Scarf)
			 then    
            player:delCurrency("bastok_cp", 48000);
			player:delCurrency("sandoria_cp", 48000);
			player:delCurrency("windurst_cp", 48000);
   player:tradeComplete();
   player:addItem(13142,1);
   player:messageSpecial(ITEM_OBTAINED,13142,1);

 		elseif (trade:hasItemQty(3092,1)) and (balance >= Master_Casters_Bracelets)
			 then    
            player:delCurrency("bastok_cp", 48000);
			player:delCurrency("sandoria_cp", 48000);
			player:delCurrency("windurst_cp", 48000);
   player:tradeComplete();
   player:addItem(14017,1);
   player:messageSpecial(ITEM_OBTAINED,14017,1); 

 		elseif (trade:hasItemQty(3091,1)) and (balance >= Master_Casters_Mitts)
			 then    
            player:delCurrency("bastok_cp", 48000);
			player:delCurrency("sandoria_cp", 48000);
			player:delCurrency("windurst_cp", 48000);
   player:tradeComplete();
   player:addItem(14016,1);
   player:messageSpecial(ITEM_OBTAINED,14016,1);

 		elseif (trade:hasItemQty(3095,1)) and (balance >= Master_Casters_Knife)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(17617,1);
   player:messageSpecial(ITEM_OBTAINED,17617,1);

 		elseif (trade:hasItemQty(3097,1)) and (balance >= Master_Casters_Baghnakhs)
			 then    
            player:delCurrency("bastok_cp", 60000);
			player:delCurrency("sandoria_cp", 60000);
			player:delCurrency("windurst_cp", 60000);
   player:tradeComplete();
   player:addItem(14429,1);
   player:messageSpecial(ITEM_OBTAINED,14429,1);

   		elseif (trade:hasItemQty(3096,1)) and (balance >= Master_Casters_Pole)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(17530,1);
   player:messageSpecial(ITEM_OBTAINED,17530,1);

 		elseif (trade:hasItemQty(3099,1)) and (balance >= Master_Casters_Bow)
			 then    
            player:delCurrency("bastok_cp", 56000);
			player:delCurrency("sandoria_cp", 56000);
			player:delCurrency("windurst_cp", 56000);
   player:tradeComplete();
   player:addItem(18145,1);
   player:messageSpecial(ITEM_OBTAINED,18145,1);

 		elseif (trade:hasItemQty(3098,1)) and (balance >= Federation_Aketon)
			 then    
            player:delCurrency("bastok_cp", 60000);
			player:delCurrency("sandoria_cp", 60000);
			player:delCurrency("windurst_cp", 60000);
   player:tradeComplete();
   player:addItem(14430,1);
   player:messageSpecial(ITEM_OBTAINED,14430,1);    

  		elseif (trade:hasItemQty(3101,1)) and (balance >= Federation_Signet_Staff)
			 then    
            player:delCurrency("bastok_cp", 60000);
			player:delCurrency("sandoria_cp", 60000);
			player:delCurrency("windurst_cp", 60000);
   player:tradeComplete();
   player:addItem(17585,1);
   player:messageSpecial(ITEM_OBTAINED,17585,1);   

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

