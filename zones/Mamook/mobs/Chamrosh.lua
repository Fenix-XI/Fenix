-----------------------------------
-- Area: Mamook
-- NPC: Chamrosh
-- ZNM Path: Mamool
-- @pos http://ffxiclopedia.wikia.com/wiki/Floral_Nectar traded to ??? at (J-10) 
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

	
	killer:addCurrency("dominion_note",50);
	killer:PrintToPlayer( "You earned 50 Dominion Notes!");

end;