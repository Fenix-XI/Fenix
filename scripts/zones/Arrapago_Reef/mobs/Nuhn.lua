-----------------------------------
-- Area: Arrapago Reef
-- NPC: Nuhn
-- ZNM Path: Lamia
-- @pos http://ffxiclopedia.wikia.com/wiki/Rose_Scampi traded to ??? at (G-6) in Arrapago Reef Map 3.
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

	
	ally:addCurrency("dominion_note",300);
	ally:PrintToPlayer( "You earned 300 Dominion Notes!");

end;