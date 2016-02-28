---------------------------------------------------------------------------------------------------
-- func: tools.lua
-- auth: Tagban
-- desc: Ninja Tools Shop Command
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
   player:PrintToPlayer("All the ninja Tools you need for your adventure!");
stock = {
      5869, 1, -- Chonofuda
      5312, 1, -- Hiraishin
      5867, 1, -- Inoshishinofuda
      5864, 1, -- Jinko
      5315, 1, -- Jusatsu
      5863, 1, -- Kabenro
      5316, 1, -- Kaginawa
      5310, 1, -- Kawahori-Ogi
      5318, 1, -- Kodoku
      5311, 1, -- Makibishi
      5313, 1, -- Mizu-Deppo
      5866, 1, -- Mokukin
      5865, 1, -- Ryuno
      5317, 1, -- Sairui-Ran
      5417, 1, -- Sanjaku-Tenugui
      5314, 1, -- Shihei
      5868, 1, -- Shikanofuda
      5319, 1, -- Shinobi-Tabi
      5734, 1, -- Soshi
      5309, 1, -- Tsurara
      5308, 1, -- Uchitake
      
   }
 
showShop(player, STATIC, stock);
end