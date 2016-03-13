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

function onMobDeath(mob, killer,ally)
	ally:addCurrency("dominion_note",100);
	ally:PrintToPlayer( "You earned 100 Dominion Notes!");
end;