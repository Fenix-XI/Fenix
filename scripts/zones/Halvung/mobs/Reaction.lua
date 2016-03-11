-----------------------------------
-- Area: Halvung
-- NPC: Reacton
-- ZNM Path: Troll
-- @pos http://ffxiclopedia.wikia.com/wiki/Bone_Charcoal traded to ??? at (H-6) on Map 1
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

function onMobDeath(mob, killer, ally)

	
	ally:addCurrency("dominion_note",150);
	ally:PrintToPlayer( "You earned 150 Dominion Notes!");

end;