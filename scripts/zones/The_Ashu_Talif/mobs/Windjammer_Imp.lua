<<<<<<< HEAD
-----------------------------------
-- Area: The Ashu Talif
-- NPC: Windjammer Imp
-----------------------------------

require("scripts/globals/status");
    
-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
end;

-----------------------------------
-- onCriticalHit
-----------------------------------

function onCriticalHit(mob)   
 
    if (math.random(100) < 20 and mob:AnimationSub() == 0) then  -- 20% change to break that horn on crit   
        mob:AnimationSub(1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
=======
-----------------------------------
-- Area: The Ashu Talif
-- NPC: Windjammer Imp
-----------------------------------

require("scripts/globals/status");
    
-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
end;

-----------------------------------
-- onCriticalHit
-----------------------------------

function onCriticalHit(mob)   
 
    if (math.random(100) < 20 and mob:AnimationSub() == 0) then  -- 20% change to break that horn on crit   
        mob:AnimationSub(1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
>>>>>>> 25f93d59f70327ee0d9d2a264b36f13954d49d20
