if(inputCooldown <= 0){
	switch(keyboard_key){
		case vk_escape:	
			instance_destroy();
		break;
		case ord("O"):
			inputCooldown = global.cooldownTime;
			optionsMenu = instance_create_layer(33, -33, "MiddleObjects", escapeMenu);
			setOptionsMenu(optionsMenu);
			instance_destroy();
		break;
		case ord("L"):
			inputCooldown = global.cooldownTime;
			var loader = instance_create_layer(33, -33, "MiddleObjects", loadCharacterMenu);
			loader.previousMenu = escapeMenu;
			loader.previousMenuScript = setEscapeMenu;
			instance_destroy();
		break;
		case ord("Q"):
			game_end();
		break;
	}
}else{
	inputCooldown = inputCooldown - 1;
}
