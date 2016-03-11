-----------------------------------
-- Area: Wajaom Woodlands
-- NPC:  Iriz Irma

-- @pos 
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

function onMobDeath(mob, killer)

	
	killer:addCurrency("dominion_note",100);
	killer:PrintToPlayer( "You earned 100 Dominion Notes!");

end;