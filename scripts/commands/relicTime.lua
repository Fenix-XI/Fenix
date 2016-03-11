---------------------------------------------------------------------------------------------------
-- func: changejob
-- desc: Changes the players current job.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};

function onTrigger(player)
    local relicWait = player:getVar("RELIC_DUE_AT"); -- Stores time that relic can be retrieved after
    local currTime = os.time();
    local timeRem = relicWait - currTime;
    local response = "";

    --check to make sure they are waiting on a relic.
    if( timeRem < 0) then
        	response = "Your relic is done!";
    else     
         --Get seconds
         response = " seconds: " + (timeRem % 60);
         timeRem = math.floor(timeRem / 60);

         --Get Minutes
         response = " minutes: " + (timeRem % 60) + response;
         timeRem = math.floor(timeRem / 60); 

         --Get Hours
         response = " hours: " + (timeRem % 24) + response;
         timeRem = math.floor(timeRem / 24); 

         --Get days
         response = "Days: " + (timeRem ) + response;
     end

     player:PrintToPlayer( string.format( "You can pick up your relic in: '%s'", response ) );
end;