/// @description Insert description here
// You can write your code in this editor

if(inputCooldown <= 0){
	switch(keyboard_key){
		// go back to other menu
		case vk_escape:	
			var newMenu = instance_create_layer(0, 0, "MiddleObjects",previousMenu);
			script_execute(previousMenuScript, newMenu);
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
			selectedItem = min(selectedItem + itemsToShow, array_length_1d(characters) - 2);
			inputCooldown = global.cooldownTime;
		break;
		case vk_left:
		case vk_numpad4:
			selectedItem = max(0, selectedItem - itemsToShow);
			inputCooldown = global.cooldownTime;
		break;
		// select an option
		case vk_enter:	
			var newMenu = instance_create_layer(0, 0, "MiddleObjects",loadFileMenu);
			newMenu.character = characters[selectedItem];
			newMenu.previousMenu = escapeMenu;
			newMenu.previousMenuScript = setMainMenu;
			instance_destroy();
		break;
	}
}else{
	inputCooldown = inputCooldown - 1;
}

if(selectedItem < 0){
	selectedItem = array_length_1d(characters) - 2;
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
} else if(selectedItem > array_length_1d(characters) - 2){
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