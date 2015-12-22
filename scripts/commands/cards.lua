---------------------------------------------------------------------------------------------------
-- func: jugs.lua
-- auth: Hookstar
-- desc: Jugs Tool Shop
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
   player:PrintToPlayer("All the COR cards you need for your adventure!");
stock = {
      2974, 1, -- Trump card
      5870, 1, -- Trump case
      2182, 1, -- Light Card
	  5408, 1, -- Light case
      5409, 1, -- Dark Case
	  2183, 1, -- Dark Case
      2179, 1, -- Dark Card
      5405, 1, -- Dark Case
      2177, 1, -- Earth Card
      5403, 1, -- Earch Case
      2178, 1, -- Ice Card
      5404, 1, -- Ice Case
      2181, 1, -- Wind Card
      5407, 1, -- Wind Case
      2176, 1, -- Fire Card
      5402, 1, -- Fire Case
      5406, 1, -- Thunder Card
      2180, 1, -- Thunder Case
	  
	  

	

      
   }
 
showShop(player, STATIC, stock);
end