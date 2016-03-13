---------------------------------------------------------------------------------------------------
-- func: relicTime
-- desc: Print the time left till a player can pick up their 
-- relic.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local relicWait = player:getVar("RELIC_DUE_AT"); -- Stores time that relic can be retrieved after
    local currTime = os.time();
    local timeRem = relicWait - currTime;
    local response = "";
    local rTm,rTh,rTd = 0;
    --check to make sure they are waiting on a relic.
    if( timeRem < 0) then
        player:PrintToPlayer(string.format("Your relic is done!"));
    else     
        rTd = math.floor(timeRem /86400);
        rTh = math.floor((timeRem /(3600))-((rTd*24)));
        rTm = math.floor((((timeRem /60)+1)-(rTh*60))-((rTd*1440)));
        if rTm == 60 then 
            rTm = 0;
            rTh = rTh + 1;
            if rTh == 24 then
                rTh = 0;
                rTd = rTd + 1;
            end
        end
        player:PrintToPlayer(string.format("You can pick up your relic in: %sd%sh%sm", rTd, rTh, rTm));
    end
    
end