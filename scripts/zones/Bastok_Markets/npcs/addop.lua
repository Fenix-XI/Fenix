---------------------------------------------------------------------------------------------------
-- desc: Manually re-adds Outpost Warps to player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "i"
};

function onTrigger(player)

       player:addNationTeleport(0,2097120);
       player:addNationTeleport(1,2097120);
       player:addNationTeleport(2,2097120);

end;