/// @description Insert description here
// You can write your code in this editor

if(global.keyCooldown <= 0){
	switch(keyboard_key){
		// go back to previous menu
		case vk_escape:	
			exitTheMenu = true;
			global.keyCooldown = global.cooldownTime;
		break;
		// go up/down one
		case vk_up:
		case vk_numpad8:
			selectedItem--;
			global.keyCooldown = global.cooldownTime;
		break;
		case vk_down:
		case vk_numpad2:
			selectedItem++;
			global.keyCooldown = global.cooldownTime;
		break;
		// "jump" a page
		case vk_right:
		case vk_numpad6:
			selectedItem = min(selectedItem + itemsToShow, ds_grid_width(potentialEquipmentGrid) - 1);
			global.keyCooldown = global.cooldownTime;
		break;
		case vk_left:
		case vk_numpad4:
			selectedItem = max(0, selectedItem - itemsToShow);
			global.keyCooldown = global.cooldownTime;
		break;
		// select item and return to previous menu
		case vk_enter:	
			if(ds_grid_width(potentialEquipmentGrid) > 0){
				ds_grid_set(charac.equipment, equipmentSlot, 1, ds_grid_get(potentialEquipmentGrid, selectedItem, 0));
				ds_grid_set(charac.equipment, equipmentSlot, 2, ds_grid_get(potentialEquipmentGrid, selectedItem, 2));
				ds_grid_set(charac.equipment, equipmentSlot, 3, ds_grid_get(potentialEquipmentGrid, selectedItem, 3));
				ds_grid_set(charac.equipment, equipmentSlot, 4, ds_grid_get(potentialEquipmentGrid, selectedItem, 4));
			
				//decrease item we take from by 1
				ds_grid_set(charac.inventory, ds_grid_get(potentialEquipmentGrid, selectedItem, 5), 1, ds_grid_get(charac.inventory, ds_grid_get(potentialEquipmentGrid, selectedItem, 5), 1) - 1);
			
				exitTheMenu = true;
			}
			global.keyCooldown = global.cooldownTime;
		break;
	}
}

if(selectedItem < 0){
	selectedItem = ds_grid_width(potentialEquipmentGrid) - 1;
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
} else if(selectedItem > ds_grid_width(potentialEquipmentGrid) - 1){
	selectedItem = 0;
	firstPoint = 0;
	lastPoint = itemsToShow;
} else if(selectedItem >= lastPoint){
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
} else if(selectedItem <= firstPoint){
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
}