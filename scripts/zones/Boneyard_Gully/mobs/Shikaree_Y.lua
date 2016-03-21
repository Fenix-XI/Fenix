-----------------------------------
-- Area: Boneyard_Gully
-- Name: Shikaree Y
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
	ally:addCurrency("mweya_plasm",100);
	ally:PrintToPlayer( "You earned 100 Mweya Plasm!");
end;