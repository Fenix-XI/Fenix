---------------------------------------------------------------------------------------------------
-- func: animation
-- desc: Sets the players current animation.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "i"
};

function onTrigger(player, animationId)
    if (animationId == nil) then
        player:PrintToPlayer( string.format( "Current player animation: %d", player:getAnimation() ) );
        return;
    end

    player:setAnimation( animationId );
end