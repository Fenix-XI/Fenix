-----------------------------------
-- Area: Aydeewa Subterrane
-- NPC: Chigre
-- ZNM Path: Lamia
-- @pos http://ffxiclopedia.wikia.com/wiki/Spoilt_Blood traded to ??? at (E-8) on Map #2. 
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