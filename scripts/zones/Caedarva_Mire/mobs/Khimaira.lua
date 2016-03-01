-----------------------------------
-- Area: Caedarva Mire
--  MOB: Khimaira
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

function onMobDeath(mob, killer, ally)
    ally:addTitle(KHIMAIRA_CARVER);
	ally:addCurrency("dominion_note",700);
	ally:PrintToPlayer( "You earned 700 Dominion Notes!");
end;