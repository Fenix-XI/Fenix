-----------------------------------
-- Area: Mount Zhayolm
-- NPC:  Cerberus
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	killer:addTitle(CERBERUS_MUZZLER);
	killer:addCurrency("dominion_note",350);
	killer:PrintToPlayer( "You earned 350 Dominion Notes!");
	mob:setRespawnTime(math.random((172800),(259200))); -- 48-72 hours
end;