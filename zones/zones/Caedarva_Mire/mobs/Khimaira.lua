-----------------------------------
-- Area: Caedarva Mire
-- NPC:  Khimaira
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
	killer:addTitle(KHIMAIRA_CARVER);
	killer:addCurrency("dominion_note",350);
	killer:PrintToPlayer( "You earned 350 Dominion Notes!");
end;