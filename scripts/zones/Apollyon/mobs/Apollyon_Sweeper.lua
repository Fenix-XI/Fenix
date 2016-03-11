-----------------------------------
-- Area: Apollyon SE
-- MOB:  Apollyon Sweeper

-----------------------------------
package.loaded["scripts/zones/Apollyon/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/limbus");
require("scripts/zones/Apollyon/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
	ally:addCurrency("mweya_plasm",10);
	ally:PrintToPlayer( "You earned 10 Mweya Plasm!");
   


end;