-----------------------------------
-- Area: Balga Dais
--  MOB: Maat
-- Genkai 5 Fight
-----------------------------------
package.loaded["scripts/zones/Balgas_Dais/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Balgas_Dais/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------


function onMobSpawn(mob)
	whmWin = 0
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
	mob:setLocalVar("FightStart", (os.time() + 300));
	whmWin = mob:getLocalVar("FightStart");
    -- target:showText(mob,YOU_DECIDED_TO_SHOW_UP);
    printf("Maat Balga Dais works");
    -- When he take damage: target:showText(mob,THAT_LL_HURT_IN_THE_MORNING);
    -- He use dragon kick or tackle: target:showText(mob,TAKE_THAT_YOU_WHIPPERSNAPPER);
    -- He use spining attack: target:showText(mob,TEACH_YOU_TO_RESPECT_ELDERS);
    -- If you dying: target:showText(mob,LOOKS_LIKE_YOU_WERENT_READY);
end;

function onMobRoam(mob)

	if (mob:getMainJob() == 3) and (whmWin > 0) then
		if (os.time() >= whmWin) then
			mob:setHP(0);
		end
	end

end;

function onMobFight(mob, target)

	if (mob:getMainJob() == 3) then
		if (os.time() >= whmWin) or (mob:getHPP() <= 10) then
			mob:setHP(0);
		end
	else
		if (mob:getHPP() <= 10) then 
			mob:setHP(0);
		end
	end
end;

-----------------------------------
-- onMobDeath Action
-----------------------------------

function onMobDeath(mob,killer,ally)
    mob:showText(mob,YOUVE_COME_A_LONG_WAY);
end;