/// @description Insert description here
// You can write your code in this editor

//files[0] = file_find_first(working_directory + "Savegames\\*", fa_directory);
files[0] = file_find_first(working_directory + "Savegames\\" + character + "\\*", fa_directory);
var i = 0;
while(files[i] != ""){
	i++;
	files[i] = file_find_next();
}

if(global.keyCooldown <= 0){
	switch(keyboard_key){
		// go back to other menu
		case vk_escape:	
			var newmenu = instance_create_layer(0, 0, "MiddleObjects",loadFileMenu);
			newmenu.previousMenu = escapeMenu;
			newmenu.previousMenuScript = setMainMenu;
			instance_destroy();
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
			selectedItem = min(selectedItem + itemsToShow, array_length_1d(files) - 2);
			global.keyCooldown = global.cooldownTime;
		break;
		case vk_left:
		case vk_numpad4:
			selectedItem = max(0, selectedItem - itemsToShow);
			global.keyCooldown = global.cooldownTime;
		break;
		// select an option
		case vk_enter:	
			loadTheGame(working_directory + "Savegames\\" + character + "\\" + files[selectedItem]);
			global.keyCooldown = global.cooldownTime;
		break;
	}
}

if(selectedItem < 0){
	selectedItem = array_length_1d(files) - 2;
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
} else if(selectedItem > array_length_1d(files) - 2){
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