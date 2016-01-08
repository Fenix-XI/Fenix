-----------------------------------
-- Area: Caedarva Mire
-- NPC: Experimental Lamia
-- ZNM Path: Lamia
-- @pos http://ffxiclopedia.wikia.com/wiki/Myrrh traded to ??? at  (F-7) Map 2. 
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

	
	killer:addCurrency("dominion_note",300);
	killer:PrintToPlayer( "You earned 300 Dominion Notes!");

end;