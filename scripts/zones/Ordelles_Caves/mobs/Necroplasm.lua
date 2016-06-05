-----------------------------------
--  Area: Ordelle's Caves
--  NPC:  Necroplasm
--  Involved in Eco Warrior (Sandoria)
-----------------------------------

require("scripts/globals/quests");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	if (killer:getQuestStatus(SANDORIA,ECO_WARRIOR_SAN) ~= QUEST_AVAILABLE and killer:getVar("ECO_WARRIOR_ACTIVE") == 230 and killer:hasStatusEffect(EFFECT_LEVEL_RESTRICTION)) then
		killer:setVar("ECOR_WAR_SAN-NMs_killed",1);
	end
end;