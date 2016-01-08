-----------------------------------
-- Area: Mount Zhayolm
-- NPC: KhromaSoul Bhurborlor
-- ZNM Path: Troll
-- @pos http://ffxiclopedia.wikia.com/wiki/Vinegar_Pie traded to ??? at (H-8)
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