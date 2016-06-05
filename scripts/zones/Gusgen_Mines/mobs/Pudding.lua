-----------------------------------
--  Area: Gusgen Mines
--  NPC:  ???
--  Involved in Eco Warrior (Bastok)
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
	if (killer:getQuestStatus(BASTOK,ECO_WARRIOR_BAS) ~= QUEST_AVAILABLE and killer:getVar("ECO_WARRIOR_ACTIVE") == 236 and killer:hasStatusEffect(EFFECT_LEVEL_RESTRICTION)) then
		killer:setVar("ECOR_WAR_BAS-NMs_killed",1);
	end
end;