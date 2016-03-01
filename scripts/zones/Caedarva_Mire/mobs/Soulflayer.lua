-----------------------------------
-- Area: Caedarva Mire
-- NPC: Soulflayer
-- 
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

function onMobFight(mob, target)

	

end;



-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer,ally)

	
	ally:addCurrency("dominion_note",5);
	ally:PrintToPlayer( "You earned 5 Dominion Notes!");

end;