---------------------------------------------------------------------------------------------------
-- func: points
-- auth: 
-- desc: Tells players current points
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone, target)

local bayld = player:getCurrency("bayld");
local mweya_plasm = player:getCurrency("mweya_plasm")
local dominion_note = player:getCurrency("dominion_note")
local kinetic_unit = player:getCurrency("kinetic_unit")
balance = bayld;  
balance_m = mweya_plasm;
balance_d = dominion_note;
balance_k = kinetic_unit;

player:PrintToPlayer( "You have  "..balance.." of Bayld Currency!"); 
player:PrintToPlayer( "You have  "..balance_m.." of Mweya Plasm Currency!");
player:PrintToPlayer( "You have  "..balance_d.." of Dominion Notes Currency!"); 
player:PrintToPlayer( "You have  "..balance_k.." of Kinetic Units Currency!");  
    
end




