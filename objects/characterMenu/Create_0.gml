/// @description Insert description here
// You can write your code in this editor

charac = instance_find(player, 0);

global.keyCooldown = global.cooldownTime;

selectedItem = -1;
itemsToShow = 12;

skillsAndStuff[0] = "constitution";
skillsAndStuff[1] = "dexterity";
skillsAndStuff[2] = "intelligence";
skillsAndStuff[3] = "charisma";
skillsAndStuff[4] = "strength";
skillsAndStuff[5] = "melee";
skillsAndStuff[6] = "unarmed";
skillsAndStuff[7] = "meleeWeapons";
skillsAndStuff[8] = "hauling";
skillsAndStuff[9] = "armor";
skillsAndStuff[10] = "lightArmor";
skillsAndStuff[11] = "heavyArmor";
skillsAndStuff[12] = "ranged";
skillsAndStuff[13] = "psionic";
skillsAndStuff[14] = "guns";
skillsAndStuff[15] = "haggling";



firstPoint = selectedItem;
lastPoint = itemsToShow;