-----------------------------------
-- Base Item Shop
-----------------------------------
function onTrigger(player,npc)
	
player:PrintToPlayer("Please buy your Dynamis currency dupe base item, then trade it to me.");
player:PrintToPlayer("Red (A) = San d'Oria/coins! Blue (Z) = Bastok/bills! Green (C) = Windurst/shells!");
player:PrintToPlayer("I = singles, II = hundreds, III = ten-thousand pieces.");

stock = {0x1785,1, --A. Ygg. Shard I
0x1786,1,	--A. Ygg. Shard II
0x1787,1,	--A. Ygg. Shard III
0x1780,1,	--Z. Ygg. Shard I
0x1781,1,	--Z. Ygg. Shard II
0x1782,1,	--Z. Ygg. Shard III
0x177B,1,	--C. Ygg. Shard I
0x177C,1,	--C. Ygg. Shard II
0x177D,1,	--C. Ygg. Shard III
	}	
 
showShop(player, STATIC, stock);
end; 

-----------------------------------
-- Currency ID Declaration
-----------------------------------
rcurrency = 
{
    ["coins"] = 0,
    ["bills"] = 1,
    ["shells"] = 2,
} 

-----------------------------------
-- Item Values Table
-----------------------------------

rewardItem =       
{
                    -----------------------------------
                    -- Dynamis Dupe Rewards Table
                    -----------------------------------
                     -- Reward,                Base,                 Cost,        Currency Type--
            1,     {     1452        ,        6021        ,        1        ,        0  },   -- Reward: Bronzepiece		*** Base: A. Ygg. Shard I
            2,     {     1453        ,        6022        ,        100      ,        0  },   -- Reward: Silverpiece 	*** Base: A. Ygg. Shard II
            3,     {     1454        ,        6023        ,        10000    ,        0  },   -- Reward: Goldpiece 		*** Base: A. Ygg. Shard III
            4,     {     1455        ,        6016        ,        1        ,        1  },   -- Reward: One Byne		*** Base: Z. Ygg. Shard I
            5,     {     1456        ,        6017        ,        100      ,        1  },   -- Reward: 100 Byne		*** Base: Z. Ygg. Shard II
			6,     {     1457        ,        6018        ,        10000    ,        1  },   -- Reward: 10,000 Byne		*** Base: Z. Ygg. Shard III
            7,     {     1449        ,        6011        ,        1        ,        2  },   -- Reward: Whiteshell		*** Base: C. Ygg. Shard I
            8,     {     1450        ,        6012        ,        100      ,        2  },   -- Reward: Jadeshell		*** Base: C. Ygg. Shard II
            9,     {     1451        ,        6013        ,        10000    ,        2  },   -- Reward: Stripeshell		*** Base: C. Ygg. Shard III
};

function rewardTrade(player,npc,trade)

    local totalCoins = player:getCurrency("chocobuck_sandoria");
    local totalBills = player:getCurrency("chocobuck_bastok");
    local totalShells = player:getCurrency("chocobuck_windurst");

    if (trade:getItemCount() == 1) then
        for nb = 2, table.getn(rewardItem), 2 do  
            if trade:hasItemQty(rewardItem[nb][2],1) then                                      -- Check to make sure that the trade has a base item that is in the table.

                cost  = rewardItem[nb][3];                                                     -- Pulls in the Cost of the Item.
                cType = rewardItem[nb][4];                                                     -- Pulls in the value for Currency.
                rItem = rewardItem[nb][1];                                                     -- Set Reward Item to Variable for Easier Handling.
                bItem = rewardItem[nb][2];                                                     -- Set Base Item to Variable for Easier Handling. 

                if (player:getFreeSlotsCount() == 0) then                                      -- Check Inventory to see if 0 spaces are available.
                    player:messageSpecial(ITEM_CANNOT_BE_OBTTAINED,rItem,1);                   -- Let them know they need to sort their inventory.
                end

                if (player:getFreeSlotsCount() ~= 0) and (player:hasItem(rItem) == true) then  -- Check Inventory for space and if they have the reward already.
                        player:addItem(rItem,1);                                               -- Add item if they have it, to get the "Only Own One" Dialogue and no currency deduction.
                end

                if (player:hasItem(rItem) == false) then                                       -- If they do not own the item, continue the script.

                    if (cType == rcurrency.coins) and (cost <= totalCoins) then            -- Check to make sure that you have enough currency.
                            player:addItem(rItem,1);                                           -- Grant the reward.
                            player:delCurrency("chocobuck_sandoria",cost);                                  -- Deduct Currency
                            player:messageSpecial(ITEM_OBTAINED,rItem,1);                      -- Item Obtained Message
                            player:delItem(bItem,1);                                           -- Delete base item.
                    elseif (cType == rcurrency.coins) and (cost > totalCoins) then         -- Logic for if they don't have enough currency.
                            player:PrintToPlayer("You do not have enough Chocobucks!");             -- Let them know they need more of the specified currency.

                    elseif (cType == rcurrency.bills) and (cost <= totalBills) then        -- Check to make sure that you have enough currency.
                            player:addItem(rItem,1);                                           -- Grant the reward.
                            player:delCurrency("chocobuck_bastok",cost);                            -- Deduct Currency
                            player:messageSpecial(ITEM_OBTAINED,rItem,1);                      -- Item Obtained Message
                            player:delItem(bItem,1);                                           -- Delete base item.
                    elseif (cType == rcurrency.bills) and (cost > totalBills) then         -- Logic for if they don't have enough currency.
                            player:PrintToPlayer("You do not have enough Chocobucks!");             -- Let them know they need more of the specified currency.

                    elseif (cType == rcurrency.shells) and (cost <= totalShells) then        -- Check to make sure that you have enough currency.
                            player:addItem(rItem,1);                                           -- Grant the reward.
                            player:delCurrency("chocobuck_windurst",cost);                           -- Deduct Currency
                            player:messageSpecial(ITEM_OBTAINED,rItem,1);                      -- Item Obtained Message
                            player:delItem(bItem,1);                                           -- Delete base item.
                    elseif (cType == rcurrency.shells) and (cost > totalShells) then         -- Logic for if they don't have enough currency.
                            player:PrintToPlayer("You do not have enough Chocobucks!");             -- Let them know they need more of the specified currency.

                    end
                end
            end
        end
    end 
end;


