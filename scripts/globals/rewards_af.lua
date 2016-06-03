-----------------------------------
-- Required Files
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");

-----------------------------------
-- Items Needed
-----------------------------------

bluItems =
{
	17717, -- Immortal's Scimitar
	2185   -- Imperial Silver Piece
}

corItems = 
{
	5502,  -- Allies Die
	2185   -- Imperial Silver Piece
}

dncItems = 
{
	19203, -- War Hoop
	2185   -- Imperial Silver Piece
}

pldItems = 
{
	17643, -- Honor Sword
	1048   -- Zvhal Coffer Key
}

schItems = 
{
	2513,  -- Rafflesia Vine
	2185   -- Imperial Silver Piece
}



-----------------------------------
-- NPC Inventory
-----------------------------------

bluStock = 
{
	0x3BA1,1, --AF1 Head
	0x3CF0,1, --AF1 Body
	0x3A50,1, --AF1 Hands
	0x3D44,1, --AF1 Legs
	0x38B9,1  --AF1 Feet
} 

corStock = 
{
	0x3BA2,1, --AF1 Head
	0x38BA,1, --AF1 Body
	0x3CF1,1, --AF1 Hands
	0x3A51,1, --AF1 Legs
	0x3D45,1  --AF1 Feet	
} 

dncStock = 
{
	0x3F0A,1, --AF1 Head Male
	0x3F0B,1, --AF1 Head Female	
	0x38F2,1, --AF1 Body Male
	0x38F3,1, --AF1 Body Female		
	0x3A9A,1, --AF1 Hands Male
	0x3A9B,1, --AF1 Hands Female	
	0x3D2B,1, --AF1 Legs Male
	0x3D2C,1, --AF1 Legs Female
	0x3D82,1, --AF1 Feet Male
	0x3D83,1  --AF1 Feet Female
} 

pldStock = 
{
	0x30e3,1, --AF1 Head
	0x3164,1, --AF1 Body
	0x368f,1, --AF1 Hands
	0x378C,1, --AF1 Legs
	0x370F,1  --AF1 Feet
}	

schStock = 
{
	0x3f0c,1, --AF1 Head
	0x38f4,1, --AF1 Body
	0x3a9c,1, --AF1 Hands
	0x3fb7,1, --AF1 Legs
	0x3d84,1  --AF1 Feet
}

-----------------------------------
-- NPC ID's
-----------------------------------
AF_NPC = 
{
	17686643, --PLD AF NPCID
	17686644, --DNC AF NPCID
	17686645, --COR AF NPCID
	17686646, --SCH AF NPCID
	17686647  --BLU AF NPCID
}


function openShop(player,npc,trade)

	conquestBalance = player:getCP();
	BLUAF           = player:getVar("BLUAF");
	CORAF           = player:getVar("CORAF");
	PLDAF           = player:getVar("PLDAF");
	SCHAF           = player:getVar("SCHAF");
	DNCAF           = player:getVar("DNCAF");
	npcID           = npc:getID();

	if     (npcID == AF_NPC[1]) then

		if (PLDAF == 1) then
			showShop(player, STATIC, pldStock);
		elseif (PLDAF == 0) then
			player:PrintToPlayer("I require 2500 Conquest Points, 1 Honor Sword and a Zvahl Coffer Key.");
			player:PrintToPlayer("Once you trade me the item's I will deduct the CP of your nation!");
			player:PrintToPlayer( "You have "..conquestBalance.." of Conquest Points!");
		end

	elseif (npcID == AF_NPC[2]) then

	 	if (DNCAF == 1) then
			showShop(player, STATIC, dncStock);
		elseif (DNCAF == 0) then
			player:PrintToPlayer("I require 2500 Conquest Points, 1 War Hoop and an Imp. Silver Piece.");
			player:PrintToPlayer("Once you trade me the item's I will deduct the CP of your nation!");
			player:PrintToPlayer( "You have "..conquestBalance.." of Conquest Points!");
		end

	elseif (npcID == AF_NPC[3]) then

		if (CORAF == 1) then
			showShop(player, STATIC, corStock);
		elseif (CORAF == 0) then
			player:PrintToPlayer("I require 2500 Conquest Points, 1 Allies' Die and 1x Imp. Silver Piece.");
			player:PrintToPlayer("Once you trade me the item's I will deduct the CP of your nation!");
			player:PrintToPlayer( "You have "..conquestBalance.." of Conquest Points!");
		end

	elseif (npcID == AF_NPC[4]) then 

		if (SCHAF == 1) then
			showShop(player, STATIC, schStock);
		elseif (SCHAF == 0) then
			player:PrintToPlayer("I require 2500 Conquest Points, 1x Rafflesia Vine and 1 Imp. Silver Piece.");
			player:PrintToPlayer("Once you trade me the item's I will deduct the CP of your nation!");
			player:PrintToPlayer( "You have "..conquestBalance.." of Conquest Points!");
		end

	elseif (npcID == AF_NPC[5]) then

			if (BLUAF == 1) then
			showShop(player, STATIC, bluStock);
		elseif (BLUAF == 0) then
			player:PrintToPlayer("I require 2500 Conquest Points, 1 Immortal's Schmitar and a Imp. Silver Piece.");
			player:PrintToPlayer("Once you trade me the item's I will deduct the CP of your nation!");
			player:PrintToPlayer( "You have "..conquestBalance.." of Conquest Points!");
		end
    end
end;

function unlockShop(player,npc,trade)

	conquestBalance = player:getCP();
	BLUAF           = player:getVar("BLUAF");
	CORAF           = player:getVar("CORAF");
	PLDAF           = player:getVar("PLDAF");
	SCHAF           = player:getVar("SCHAF");
	DNCAF           = player:getVar("DNCAF");
	npcID           = npc:getID();

	if     (npcID == AF_NPC[1]) then

		if (conquestBalance >= 2500 and trade:getItemCount() == 2 and trade:hasItemQty(pldItems[1],1) and trade:hasItemQty(pldItems[2],1)) then
			player:setVar("PLDAF",1);
			player:delCP(2500);
			player:PrintToPlayer("You have done well, now reap your rewards!");
			showShop(player, STATIC, pldStock);
	    elseif (conquestBalance < 2500) then
		    player:PrintToPlayer( "You have "..balance.." of Conquest Points! I NEED 2500!");
		end
	
    elseif (npcID == AF_NPC[2]) then

		if (conquestBalance >= 2500 and trade:getItemCount() == 2 and trade:hasItemQty(dncItems[1],1) and trade:hasItemQty(dncItems[2],1)) then
			player:setVar("DNCAF",1);
			player:delCP(2500);
			player:PrintToPlayer("You have done well, now reap your rewards!");
			showShop(player, STATIC, dncStock);
	    elseif (conquestBalance < 2500) then
		    player:PrintToPlayer( "You have "..balance.." of Conquest Points! I NEED 2500!");
		end

    elseif (npcID == AF_NPC[3]) then

		if (conquestBalance >= 2500 and trade:getItemCount() == 2 and trade:hasItemQty(corItems[1],1) and trade:hasItemQty(corItems[2],1)) then
			player:setVar("CORAF",1);
			player:delCP(2500);
			player:PrintToPlayer("You have done well, now reap your rewards!");
			showShop(player, STATIC, corStock);
	    elseif (conquestBalance < 2500) then
		    player:PrintToPlayer( "You have "..balance.." of Conquest Points! I NEED 2500!");
		end

   elseif (npcID == AF_NPC[4]) then 

		if (conquestBalance >= 2500 and trade:getItemCount() == 2 and trade:hasItemQty(schItems[1],1) and trade:hasItemQty(schItems[2],1)) then
			player:setVar("SCHAF",1);
			player:delCP(2500);
			player:PrintToPlayer("You have done well, now reap your rewards!");
			showShop(player, STATIC, schStock);
	    elseif (conquestBalance < 2500) then
		    player:PrintToPlayer( "You have "..balance.." of Conquest Points! I NEED 2500!");
		end

   elseif (npcID == AF_NPC[5]) then 

		if (conquestBalance >= 2500 and trade:getItemCount() == 2 and trade:hasItemQty(bluItems[1],1) and trade:hasItemQty(bluItems[2],1)) then
			player:setVar("BLUAF",1);
			player:delCP(2500);
			player:PrintToPlayer("You have done well, now reap your rewards!");
			showShop(player, STATIC, bluStock);
	    elseif (conquestBalance < 2500) then
		    player:PrintToPlayer( "You have "..balance.." of Conquest Points! I NEED 2500!");
		end
	end
end;

