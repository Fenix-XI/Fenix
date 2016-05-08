---------------------------------------------------------------------------------------------------
-- func: spawnmob
-- desc: Spawns a mob.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3, --Fenix
    parameters = "iii"
};

function onTrigger(player, mobId, despawntime, respawntime)
    SpawnMob( mobId, despawntime, respawntime );
end