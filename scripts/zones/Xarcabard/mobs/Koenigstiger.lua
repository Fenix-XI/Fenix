-----------------------------------
-- Area: Xarcabard
--  MOB: Koenigstiger
-- Involved in Quests: Unbridled Passion (RNG AF3)
-- @zone 112
-----------------------------------

require("scripts/globals/quests");

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

    local UnbridledPassionCS = ally:getVar("unbridledPassion");

    if (UnbridledPassionCS == 4) then
        ally:setVar("unbridledPassion",5);
    end

end;