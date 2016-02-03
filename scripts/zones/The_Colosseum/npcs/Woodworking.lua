-----------------------------------
-- Area: The Colosseum
-- NPC: Wood
-- Guild Merchant NPC: Woodworking Guild 
-- @pos 0 0 0 0 zone 71
-----------------------------------
package.loaded["scripts/zones/The_Colosseum/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/The_Colosseum/TextIDs");
require("scripts/globals/crafting")



-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local balance = player:getCurrency("guild_woodworking");	
player:PrintToPlayer("All the woodworking materials you need for your adventure!");
player:PrintToPlayer("Trade me a single Terra Crystal to receive Synth Support.");
player:PrintToPlayer("You have "..balance.." of GP points!");

stock = {0x02B0,1,	--Arrowwood Log
0x2B1,1,	--Lauan Log
0x2BA,1,	--Ash Log
0x2B3,1,	--Maple Log
0x2B9,1,	--Holly Log
0x2B7,1,	--Willow Log
0x2B5,1,	--Walnut Log
0x2B8,1,	--Yew Log
0x2B2,1,	--Elm Log
0x2B6,1,	--Chestnut Log
0x2BB,1,	--Oak Log
0x2B4,1,	--Beech Log
0x2BD,1,	--Rosewood Log
0x2BC,1,	--Mahogany Log
0x2BE,1,	--Ebony Log
0x2BF,1,	--Petrified Log
0x9E4,1,	--Teak Log
0x5A6,1,	--Lacquer Log
0x5BD,1,	--Lancewood Log
0x9E6,1,	--Jacaranda Log
0x679,1	--Bundling Twine


	}	
 
showShop(player, STATIC, stock);
end; 

 -----------------------------------
-- onTrade Action
-----------------------------------
  
  function onTrade(player,npc,trade)
    local payOut = 0;
    local harp = trade:getItemQty(17354);
	local HQharp = trade:getItemQty(17374);
	local rose = trade:getItemQty(17053);
	local HQrose = trade:getItemQty(17143);
	local fork = trade:getItemQty(16888);
	local HQfork = trade:getItemQty(16889);
 
   if (trade:getItemCount() == 1 and trade:hasItemQty(4241,1)) 
        		then
	
 player:addStatusEffect(EFFECT_WOODWORKING_IMAGERY,3,0,480);


else

if (player:getVar('[GUILD]currentGuild') ~= 2 ) then
player:PrintToPlayer( "You are not eligible to earn GP for this guild!");
else		
if (harp > 0 and harp == trade:getItemCount()) then
payOut = (harp * 300);
player:addCurrency("guild_woodworking", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Woodworking GP!");
player:tradeComplete();
elseif
 (HQharp > 0 and HQharp == trade:getItemCount()) then
payOut = (HQharp * 400);
player:addCurrency("guild_woodworking", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Woodworking GP!");
player:tradeComplete();
elseif
 (rose > 0 and rose == trade:getItemCount()) then
payOut = (rose * 500);
player:addCurrency("guild_woodworking", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Woodworking GP!");
player:tradeComplete();
elseif
 (HQrose > 0 and HQrose == trade:getItemCount()) then
payOut = (HQrose * 600);
player:addCurrency("guild_woodworking", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Woodworking GP!");
player:tradeComplete();
elseif
 (fork > 0 and fork == trade:getItemCount()) then
payOut = (fork * 700);
player:addCurrency("guild_woodworking", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Woodworking GP!");
player:tradeComplete();
elseif
 (HQfork > 0 and HQfork == trade:getItemCount()) then
payOut = (HQfork * 800);
player:addCurrency("guild_woodworking", payOut);
player:PrintToPlayer( "You earned " ..payOut.." Woodworking GP!");
player:tradeComplete();

end
end
end
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
