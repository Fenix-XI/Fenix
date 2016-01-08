-----------------------------------
-- Area: Aydeewa Subterrane
-- NPC: Nosferatu
-- ZNM Path: Troll
-- @pos http://ffxiclopedia.wikia.com/wiki/Pure_Blood traded to ??? at  (F-9) on map 2. 
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