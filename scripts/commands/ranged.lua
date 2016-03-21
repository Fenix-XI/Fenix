---------------------------------------------------------------------------------------------------
-- func: ranged.lua
-- auth: Tagban
-- desc: Ranged Tools Shop Command
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
   player:PrintToPlayer("All the Ammo you need for your adventure!");
stock = {
0x107B,1, --Stone Quiver
0x107C,1, --Bone Quiver
0x43B4,1, --Fang Arrow
0x107D,1, --Beetle Quiver
0x107E,1, --Horn Quiver
0x107F,1, --Scorpion Quiver
0x4702,1, --Bodkin Arrow
0x1080,1, --Demon Quiver
0x14D4,1, --Kabura Quiver
0x1083,1, --Bronze Bolt Quiver
0x14D6,1, --Blind Bolt Quiver
0x14D7,1, --Acid Bolt Quiver
0x14DA,1, --Venom Bolt Quiver
0x14D9,1, --Sleep Bolt Quiver
0x14DB,1, --Bloody Bolt Quiver
0x14D8,1, --Holy Bolt Quiver
0x1084,1, --Mythril Bolt Quiver
0x1085,1, --Darksteel Bolt Quiver
0x14EF,1, --Bronze Bullet Pouch
0x4919,1, --Copper Bullet
0x43BC,1, --Bullet
0x14DD,1, --Spartan Bullet Pouch
0x4B1C,1, --Paktong Bullet
0x4B01,1, --Electrum Bullet
0x14E9,1, --Iron Bullet Pouch
0x4394,1, --Platinum Bullet 
0x14DC,1, --Silver Bullet Pouch
0x1528,1, --Steel Bullet Pouch
0x439B,1, --Dart
0x4395,1, --Shuriken
0x4396,1, --Juju Shuriken
0x439E,1, --Hyo
0x4397,1, --Manji Shuriken
0x4398,1, --Fuma Shuriken
   }
 
showShop(player, STATIC, stock);
end