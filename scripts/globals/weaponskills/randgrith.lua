-----------------------------------
-- Randgrith
-- Club weapon skill
-- Skill level: N/A
-- Lowers target's evasion. Gullintani/Mjollnir: Temporarily improves params.accuracy.
-- Available only when equipped with the Relic Weapons Gullintani (Dynamis use only), Mjollnir, or a Charged Molva Maul.
-- Aftermath: Adds +20 params.accuracy after the weapon skill is used, duration is determined by TP. Only available with Gullintani and Mjollnir.
-- 100% = 20 seconds, 200% = 40 seconds, 300% = 60 seconds.
-- This Relic Weapon is only available to White Mages; Scholars must use the Molva Maul to acquire this weapon skill.
-- Shield Break effect : Evasion -32
-- Aligned with the Breeze Gorget & Thunder Gorget.
-- Aligned with the Breeze Belt & Thunder Belt.
-- Element: None
-- Modifiers: STR:40% ; MND:40%
-- 100%TP    200%TP    300%TP
-- 2.75      2.75      2.75
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID)

	local params = {};
	params.numHits = 2;
	params.ftp100 = 2.25; params.ftp200 = 2.50; params.ftp300 = 2.75;
	params.str_wsc = 0.4; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.4; params.chr_wsc = 0.0;
	params.crit100 = 0.2; params.crit200 = 0.4; params.crit300 = 0.6;
	params.canCrit = true;
	params.acc100 = 0.0; params.acc200= 0.0; params.acc300= 0.0;
	params.atkmulti = 1.3;
	local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, params);

	if damage > 0 and (target:hasStatusEffect(EFFECT_WEIGHT) == false) then
		target:addStatusEffect(EFFECT_WEIGHT, 50, 0, 60);
	end
		if ((player:getEquipID(SLOT_MAIN) == 18324) and (player:getMainJob() == JOB_WHM or JOB_PLD)) then
		if (damage > 0) then
			if (player:getTP() >= 100 and player:getTP() < 200) then
				player:addStatusEffect(EFFECT_AFTERMATH, -15, 0, 40, 0, 5);
			elseif (player:getTP() >= 200 and player:getTP() < 300) then
				player:addStatusEffect(EFFECT_AFTERMATH, -15, 0, 120, 0, 5);
			elseif (player:getTP() == 300) then
				player:addStatusEffect(EFFECT_AFTERMATH, -15, 0, 180, 0, 5);
			end
		end
	end
	damage = damage * WEAPON_SKILL_POWER
	return tpHits, extraHits, criticalHit, damage;

end
