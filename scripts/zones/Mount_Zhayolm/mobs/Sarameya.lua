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

	
	killer:addCurrency("dominion_note",200);
	killer:PrintToPlayer( "You earned 200 Dominion Notes!");

end;