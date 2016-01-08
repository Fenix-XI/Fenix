-----------------------------------
-- Area:
--  MOB: Diabolos_Diamond
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
	ally:addCurrency("mweya_plasm",250);
	ally:PrintToPlayer( "You earned 250 Mweya Plasm!");
    if (ally:hasKeyItem(DYNAMIS_TAVNAZIA_SLIVER ) == false) then
        ally:addKeyItem(DYNAMIS_TAVNAZIA_SLIVER);
        ally:messageSpecial(KEYITEM_OBTAINED,DYNAMIS_TAVNAZIA_SLIVER);
    end
    ally:addTitle(NIGHTMARE_AWAKENER);
end;