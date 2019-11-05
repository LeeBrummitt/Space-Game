/// @description Insert description here
// You can write your code in this editor

if(inputCooldown <= 0){
	switch(keyboard_key){
		case vk_escape:	
		case ord("I"):
			instance_destroy();
		break;
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
	}
}else{
	inputCooldown = inputCooldown - 1;
}

if(selectedItem < 0){
	selectedItem = ds_grid_width(instance_find(player, 0).inventory) - 1;
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
} else if(selectedItem > ds_grid_width(instance_find(player, 0).inventory) - 1){
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