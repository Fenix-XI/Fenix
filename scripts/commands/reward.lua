---------------------------------------------------------------------------------------------------
-- func: http://fenix-xi.wikia.com/wiki/Points_%26_Rewards
-- desc: Sets player's location to Provenance
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone)
	if (player:hasKeyItem(2271) == true) then
        player:setPos('-640', '-19', '-492', '98', '222');
    else
    	player:PrintToPlayer("Please register with us to gain access. If already registered, contact a GM.");
    end
end