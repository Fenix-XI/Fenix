---------------------------------------------------------------------------------------------------
-- func: @givels <linkshell name> <player>
-- auth: forgottenandlost
-- desc: remotely gives the specified linkshell to the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "ss"
};

function onTrigger(player,ls,target)
    -- Yeah yeah I made an huge if/else block instead of using returns. >.>
    if (ls == nil) then
        player:PrintToPlayer( "You specify the LS by name." );
        player:PrintToPlayer( "@givels <linkshell name> <player>" );
    else
        if (isValidLS(ls) == true) then
            if (target == nil) then
                if (player:getFreeSlotsCount() >= 1) then
                    player:addLSpearl(ls);
                else
                    player:PrintToPlayer( "Can't obtain LS. Sort your inventory doofus!" );
                end
            else
                local targ = GetPlayerByName(target);
                if (targ ~= nil) then
                    if (player:getFreeSlotsCount() >= 1) then
                        targ:addLSpearl(ls);
                    else
                        player:PrintToPlayer( string.format( "Player '%s' doesn't have a free slot for the item.", target ) );
                    end
                else
                    player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
                    player:PrintToPlayer( "@givels <linkshell name> <player>" );
                end
            end
        else
            player:PrintToPlayer( string.format( "LS named '%s' not found!", ls ) );
            player:PrintToPlayer( "@givels <linkshell name> <player>" );
        end
    end
end;