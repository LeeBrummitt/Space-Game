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
			selectedItem = min(selectedItem + itemsToShow, array_length_1d(skillsAndStuff) - 1);
			inputCooldown = global.cooldownTime;
		break;
		case vk_left:
		case vk_numpad4:
			selectedItem = max(-1, selectedItem - itemsToShow);
			inputCooldown = global.cooldownTime;
		break;
		//TODO: Add way to get info about skill
	}
}else{
	inputCooldown = inputCooldown - 1;
}

if(selectedItem < -1){
	selectedItem = array_length_1d(skillsAndStuff) - 1;
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
} else if(selectedItem > array_length_1d(skillsAndStuff) - 1){
	selectedItem = -1;
	firstPoint = 0;
	lastPoint = itemsToShow;
} else if(selectedItem >= lastPoint){
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
} else if(selectedItem <= firstPoint){
	firstPoint = selectedItem - (selectedItem % itemsToShow);
	lastPoint = firstPoint + itemsToShow;
}