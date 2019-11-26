/// @description Insert description here
// You can write your code in this editor

if(inputCooldown <= 0){
	switch(keyboard_key){
		// go back to game
		case vk_escape:	
		case ord("I"):
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
			selectedItem = min(selectedItem + itemsToShow, ds_grid_width(charac.inventory) - 1);
			inputCooldown = global.cooldownTime;
		break;
		case vk_left:
		case vk_numpad4:
			selectedItem = max(0, selectedItem - itemsToShow);
			inputCooldown = global.cooldownTime;
		break;
		// drop an item
		case ord("D"):
			if(ds_grid_width(charac.inventory) > 0){
				var drop = instance_create_layer(-33, -33, "MiddleObjects", dropMenu)
				drop.charac = charac;
				drop.itemToDrop = selectedItem;
				instance_destroy();
			}
		break;
	}
}else{
	inputCooldown = inputCooldown - 1;
}

if(selectedItem < 0){
	selectedItem = ds_grid_width(charac.inventory) - 1;
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
} else if(selectedItem > ds_grid_width(charac.inventory) - 1){
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