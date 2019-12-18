/// @description Insert description here
// You can write your code in this editor

if(inputCooldown <= 0){
	switch(keyboard_key){
		// go back to game
		case vk_escape:	
		case ord("E"):
			instance_destroy();
		break;
		// go up/down one
		case vk_up:
		case vk_numpad8:
			selectedItem--;
			inputCooldown = global.cooldownTime;
		break;
		case vk_down:
		case vk_numpad2:
			selectedItem++;
			inputCooldown = global.cooldownTime;
		break;
		// "jump" a page
		case vk_right:
		case vk_numpad6:
			selectedItem = min(selectedItem + itemsToShow, ds_grid_width(charac.equipment) - 1);
			inputCooldown = global.cooldownTime;
		break;
		case vk_left:
		case vk_numpad4:
			selectedItem = max(0, selectedItem - itemsToShow);
			inputCooldown = global.cooldownTime;
		break;
		// select a slot to choose equipment
		case vk_enter:
			if(ds_grid_get(charac.equipment, selectedItem, 1) == 0){
				var newMenu = instance_create_layer(0, 0, "MiddleObjects", equipmentSelectionMenu);
				
				ds_grid_destroy(newMenu.potentialEquipmentGrid);
				newMenu.charac = charac;
				newMenu.equipmentSlot = selectedItem;
				newMenu.equipmentType = getEquipmentTypeFromString(ds_grid_get(charac.equipment, selectedItem, 0));
				newMenu.potentialEquipmentGrid = getEquipmentOfTypeFromInventory(newMenu.charac, newMenu.equipmentType);
				
				instance_destroy();
			}else{
				//create item
				var createdObject = instance_create_layer(0, 0, "MiddleObjects", asset_get_index(ds_grid_get(charac.equipment, selectedItem, 1)));
				
				//set basic values
				createdObject.number = 1;
				createdObject.weight = ds_grid_get(charac.equipment, selectedItem, 2);
				createdObject.value = ds_grid_get(charac.equipment, selectedItem, 3);
				ds_grid_read(createdObject.special, ds_grid_get(charac.equipment, selectedItem, 4));
				
				// set object's special attributes
				for(var i = 0; i < ds_grid_height(createdObject.special); i++){
					var name = ds_grid_get(createdObject.special, 0, i);
					var val = ds_grid_get(createdObject.special, 1, i);
					variable_instance_set(createdObject, name, val);
				}
				
				//"remove" the item from equipment
				ds_grid_set(charac.equipment, selectedItem, 1, 0);
				ds_grid_set(charac.equipment, selectedItem, 2, 0);
				ds_grid_set(charac.equipment, selectedItem, 3, 0);
				ds_grid_set(charac.equipment, selectedItem, 4, 0);
				
				//add to inventory and destroy
				addItemToInventory(createdObject, charac.inventory);
				instance_destroy(createdObject);
				
				inputCooldown = global.cooldownTime;
			}
		break;
	}
}else{
	inputCooldown = inputCooldown - 1;
}

if(selectedItem < 0){
	selectedItem = ds_grid_width(charac.equipment) - 1;
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
} else if(selectedItem > ds_grid_width(charac.equipment) - 1){
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