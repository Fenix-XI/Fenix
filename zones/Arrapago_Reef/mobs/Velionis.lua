-----------------------------------
-- Area: Arrapago Reef
-- NPC: Velionis
-- ZNM Path: Lamia
-- @pos http://ffxiclopedia.wikia.com/wiki/Golden_Teeth traded to ??? at (F-11) in Arrapago Reef on the 1st map. 
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