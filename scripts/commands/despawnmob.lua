---------------------------------------------------------------------------------------------------
-- func: despawnmob
-- desc: Despawns the given mob.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3, --Fenix
    parameters = "i"
};

function onTrigger(player, mobId)
    DespawnMob( mobId );
end