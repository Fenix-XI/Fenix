-----------------------------------
-- Area: Mount Zhayolm
-- NPC: Anantaboga
-- ZNM Path: Troll
-- @pos http://ffxiclopedia.wikia.com/wiki/Raw_Buffalo traded to ??? at (E-6)
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

	
	killer:addCurrency("dominion_note",150);
	killer:PrintToPlayer( "You earned 150 Dominion Notes!");

end;