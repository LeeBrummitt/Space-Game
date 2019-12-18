/// @description Insert description here
// You can write your code in this editor

charac = instance_find(player, 0);

inputCooldown = global.cooldownTime;

selectedItem = 0;
itemsToShow = 12;

firstPoint = selectedItem;
lastPoint = itemsToShow;

equipmentSlot = 0;
equipmentTypeString = ds_grid_get(charac.equipment, 0, 0);

equipmentType = getEquipmentTypeFromString(equipmentTypeString);

// name, number, weight, value, special, original position
potentialEquipmentGrid = getEquipmentOfTypeFromInventory(charac, equipmentType);

exitTheMenu = false;