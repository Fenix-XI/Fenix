---------------------------------------------------------------------------------------------------
-- func: ranged.lua
-- auth: Tagban
-- desc: Ranged Tools Shop Command
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
   player:PrintToPlayer("All the Ammo you need for your adventure!");
stock = {

4221, 1,-- got a boner
5334, 1,
5339, 1,
4220, 1,
5359, 1,
17307, 1,
4224, 1,
17304, 1,
17310, 1,
5353, 1,
4225, 1,
17302, 1,
5332, 1,
17303, 1,
4228, 1,
4223, 1,
17301, 1,
5340, 1,
5341, 1,
5416, 1,
4219, 1,
5338, 1,
 
      
   }
 
showShop(player, STATIC, stock);
end