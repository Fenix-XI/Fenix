-----------------------------------
-- Area: Caedarva Mire
-- NPC: Mahjlaef the Paintorn
-- ZNM Path: Lamia
-- @pos http://ffxiclopedia.wikia.com/wiki/Exorcism_Treatise traded to ??? at (H-7) on Hediva Isle. 
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

	
	ally:addCurrency("dominion_note",250);
	ally:PrintToPlayer( "You earned 250 Dominion Notes!");

end;