---------------------------------------------------------------------------------------------------
-- func: reward npc's
-- auth: 
-- desc: Sets players to main hub location
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone)
            player:setPos('-640', '-19', '-492', '98', '222');
end