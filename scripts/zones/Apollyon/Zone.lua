-----------------------------------
-- 
-- Zone: Apollyon
-- 
-----------------------------------

require("scripts/globals/settings");
package.loaded["scripts/zones/Apollyon/TextIDs"] = nil;
require("scripts/zones/Apollyon/TextIDs");
require("scripts/globals/limbus");
-----------------------------------
--  onInitialize
-----------------------------------

function onInitialize(zone)
            SetServerVariable("[NW_Apollyon]UniqueID",0);       
            SetServerVariable("[SW_Apollyon]UniqueID",0);       
            SetServerVariable("[NE_Apollyon]UniqueID",0) ;  
            SetServerVariable("[SE_Apollyon]UniqueID",0);       
            SetServerVariable("[CS_Apollyon]UniqueID",0);       
            SetServerVariable("[CS_Apollyon_II]UniqueID",0);        
            SetServerVariable("[Central_Apollyon]UniqueID",0);      
            SetServerVariable("[Central_Apollyon_II]UniqueID",0); 


zone:registerRegion(1,  637,-4,-642,642,4,-637);  -- APOLLYON_SE_NE exit
zone:registerRegion(2, -642,-4,-642,-637,4,-637);  -- APOLLYON_NW_SW exit

zone:registerRegion(3, 468,-4,-637,  478,4,-622); -- Apollyon SE register
zone:registerRegion(4, 421,-4,-98,   455,4,-78); -- Apollyon NE register
zone:registerRegion(5, -470,-4,-629,  -459,4,-620); -- Apollyon SW register
zone:registerRegion(6, -455,-4,-95,   -425,4,-67); -- Apollyon NW register

zone:registerRegion(7, -3,-4,-214,   3,4,-210); -- Apollyon CS register
zone:registerRegion(8, -3,-4, 207,   3,4, 215); -- Apollyon Center register

zone:registerRegion(20,   396,-4,-522,   403,4,-516); -- Apollyon SE telporter floor1 to floor2
zone:registerRegion(21,   116,-4,-443,   123,4,-436); -- Apollyon SE telporter floor2 to floor3
zone:registerRegion(22,   276,-4,-283,   283,4,-276); -- Apollyon SE telporter floor3 to floor4
zone:registerRegion(23,   517,-4,-323,   523,4,-316); -- Apollyon SE telporter floor4 to entrance

zone:registerRegion(24,   396,-4,76,   403,4,83); -- Apollyon NE telporter floor1 to floor2
zone:registerRegion(25,   276,-4,356,   283,4,363); -- Apollyon NE telporter floor2 to floor3
zone:registerRegion(26,   236,-4,517,   243,4,523); -- Apollyon NE telporter floor3 to floor4
zone:registerRegion(27,   517,-4,637,   523,4,643); -- Apollyon NE telporter floor4 to floor5
zone:registerRegion(28,   557,-4,356,   563,4,363); -- Apollyon NE telporter floor5 to entrance

zone:registerRegion(29, -403,-4,-523,  -396,4,-516); -- Apollyon SW telporter floor1 to floor2   
zone:registerRegion(30, -123,-4,-443,  -116,4,-436); -- Apollyon SW telporter floor2 to floor3  
zone:registerRegion(31, -283,-4,-283,  -276,4,-276); -- Apollyon SW telporter floor3 to floor4 
zone:registerRegion(32, -523,-4,-323,  -517,4,-316); -- Apollyon SW telporter floor4 to entrance 

zone:registerRegion(33, -403,-4,76,   -396,4,83); -- Apollyon NW telporter floor1 to floor2 
zone:registerRegion(34, -283,-4,356,  -276,4,363); -- Apollyon NW telporter floor2 to floor3 
zone:registerRegion(35, -243,-4,516,  -236,4,523); -- Apollyon NW telporter floor3 to floor4 
zone:registerRegion(36, -523,-4,636,  -516,4,643); -- Apollyon NW telporter floor4 to floor5 
zone:registerRegion(37, -563,-4,356,  -556,4,363); -- Apollyon NW telporter floor5 to entrance 
                                                                
end;

-----------------------------------     
-- onConquestUpdate     
-----------------------------------     

function onConquestUpdate(zone, updatetype)
    local players = zone:getPlayers();
    
    for name, player in pairs(players) do
        conquestUpdate(zone, player, updatetype, CONQUEST_BASE);
    end
end;


-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
cs = -1;
    if (prevZone~=33) then --Al'Taieu
      local playerLimbusID = player:getVar("LimbusID");
        if (playerLimbusID== 1290 or playerLimbusID== 1291 or playerLimbusID== 1294 or playerLimbusID== 1295 or playerLimbusID== 1296 or playerLimbusID== 1297) then
        player:setPos(-668,0.1,-666);
        else
        player:setPos(643,0.1,-600);
        end
 
    elseif ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then    
        player:setPos(643,0.1,-600);        
    end 
    
return cs;
end;

-----------------------------------
-- onRegionEnter          
-----------------------------------

function onRegionEnter(player,region)
  local regionID = region:GetRegionID();
   switch (regionID): caseof {
        [1] = function (x) 
             player:startEvent(0x0064); -- APOLLYON_SE_NE exit
        end,
        [2] = function (x) 
             player:startEvent(0x0065); -- APOLLYON_NW_SW exit
            -- print("APOLLYON_NW_SW");
        end,
        [3] = function (x) 
              if (player:hasStatusEffect(EFFECT_BATTLEFIELD) == false) then 
                  RegisterLimbusInstance(player,1293);
              end   --create instance Apollyon SE     
        end,
        [4] = function (x) 
              if (player:hasStatusEffect(EFFECT_BATTLEFIELD) == false) then 
                  RegisterLimbusInstance(player,1292);
              end   --create instance Apollyon NE     
        end,
        [5] = function (x) 
              if (player:hasStatusEffect(EFFECT_BATTLEFIELD) == false) then 
                  RegisterLimbusInstance(player,1291);
              end   --create instance Apollyon SW     
        end,
        [6] = function (x) 
              if (player:hasStatusEffect(EFFECT_BATTLEFIELD) == false) then 
                  RegisterLimbusInstance(player,1290);
              end   --create instance Apollyon NW     
        end,
        [7] = function (x) 
              if (player:hasStatusEffect(EFFECT_BATTLEFIELD) == false) then 
                  RegisterLimbusInstance(player,1294);
              end   --create instance Apollyon CS     
        end,        
        [8] = function (x) 
              if (player:hasStatusEffect(EFFECT_BATTLEFIELD) == false) then 
                  RegisterLimbusInstance(player,1296);
              end   --create instance Apollyon CENTER     
        end,    
        
        -- ///////////////////////APOLLYON SE TELEPORTER///////////////////////////////////////////
        [20] = function (x) 
             -- print("SE_telporter_f1_to_f2");
             if (IsMobDead(16932992)==true and player:getAnimation()==0) then player:startEvent(0x00DB);end
        end,
        [21] = function (x) 
             -- print("SE_telporter_f2_to_f3");
              if (IsMobDead(16933006)==true and player:getAnimation()==0) then player:startEvent(0x00DA);end
        end,    
        [22] = function (x) 
            --  print("SE_telporter_f3_to_f4");
              if (IsMobDead(16933020)==true and player:getAnimation()==0) then player:startEvent(0x00D8);end
         end,       
        [23] = function (x) 
             -- print("SE_telporter_f3_to_entrance");
              if (IsMobDead(16933032)==true and player:getAnimation()==0) then player:startEvent(0x00D9);end
         end,
         -- ///////////////////////////////////////////////////////////////////////////////////////////      
         -- /////////////////////    APOLLYON NE TELEPORTER           ////////////////////////////////
        [24] = function (x) 
             -- print("NE_telporter_f1_to_f2");
              if (IsMobDead(16933044)==true and player:getAnimation()==0) then player:startEvent(0x00D6);end 
         end,
         [25] = function (x) 
             -- print("NE_telporter_f2_to_f3");
              if (IsMobDead(16933064)==true and player:getAnimation()==0) then player:startEvent(0x00D4);end  --212
         end,
         [26] = function (x) 
            --  print("NE_telporter_f3_to_f4");
              if (IsMobDead(16933086)==true and player:getAnimation()==0) then player:startEvent(0x00D2);end  --210
         end,
         [27] = function (x) 
            --  print("NE_telporter_f4_to_f5");
              if (IsMobDead(16933101)==true and player:getAnimation()==0) then player:startEvent(0x00D7);end    --215
         end,
         [28] = function (x) 
            --  print("NE_telporter_f5_to_entrance");
              if ( (IsMobDead(16933114)==true or IsMobDead(16933113)==true) and player:getAnimation()==0) then player:startEvent(0x00D5);end --213
         end,
         -- //////////////////////////////////////////////////////////////////////////////////////////////////
         -- /////////////////////    APOLLYON SW TELEPORTER           //////////////////////////////// 
         [29] = function (x) 
              if (IsMobDead(16932873)==true and player:getAnimation()==0) then player:startEvent(0x00D0);end --208
         end,
         [30] = function (x) 
              if (IsMobDead(16932885)==true and player:getAnimation()==0) then player:startEvent(0x00D1);end --209
              --printf("Mimics should be 0: %u",GetServerVariable("[SW_Apollyon]MimicTrigger"));
         end,
         [31] = function (x)        
              if (( IsMobDead(16932896)==true or IsMobDead(16932897)==true or IsMobDead(16932898)==true or  IsMobDead(16932899)==true )and player:getAnimation()==0) then player:startEvent(0x00CF);end -- 207
         end,
         [32] = function (x) 
              if (IselementalDayAreDead()==true and player:getAnimation()==0) then player:startEvent(0x00CE);end -- 206
         end,        
             -- //////////////////////////////////////////////////////////////////////////////////////////////////
         -- /////////////////////    APOLLYON NW TELEPORTER           //////////////////////////////// 
         [33] = function (x) 
              if (IsMobDead(16932937)==true and player:getAnimation()==0) then player:startEvent(0x00CD);end --205
         end,
         [34] = function (x) 
              if (IsMobDead(16932950)==true and player:getAnimation()==0) then player:startEvent(0x00CB);end --203
         end,
         [35] = function (x) 
              if (IsMobDead(16932963)==true and player:getAnimation()==0) then player:startEvent(0x00C9);end --201
         end,
         [36] = function (x) 
              if (IsMobDead(16932976)==true and player:getAnimation()==0) then player:startEvent(0x00C8);end --200
         end,
         [37] = function (x) 
              if (IsMobDead(16932985)==true and player:getAnimation()==0) then player:startEvent(0x00CA);end --202
         end,
    }
    
end;
----------------------------------- 
-- onRegionLeave    
-----------------------------------
    
function onRegionLeave(player,region)
end;
 
-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
   if (csid == 0x00D1 and option == 0 and GetServerVariable("[SW_Apollyon]MimicTrigger")==0) then
    SpawnCofferSWfloor3();
    --printf("Mimics should be 1: %u",GetServerVariable("[SW_Apollyon]MimicTrigger"));
   elseif (csid == 0x00CF and option == 0 and GetServerVariable("[SW_Apollyon]ElementalTrigger")==0) then 
    SetServerVariable("[SW_Apollyon]ElementalTrigger",VanadielDayElement()+1);
    -- printf("Elementals should be 1: %u",GetServerVariable("[SW_Apollyon]ElementalTrigger"));
   end
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
   if (csid == 0x0064 and option == 1) then
    player:setPos(557,-1,441,128,0x21);  -- APOLLYON_SE_NE exit
   elseif (csid == 0x0065 and option == 1) then
    player:setPos(-561,0,443,242,0x21); -- APOLLYON_NW_SW exit
   end   
end;



