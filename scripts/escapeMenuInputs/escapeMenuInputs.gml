function escapeMenuInputs() {
	if(global.keyCooldown <= 0){
		switch(keyboard_key){
			case vk_escape:	
				instance_destroy();
				global.keyCooldown = global.cooldownTime;
			break;
			case ord("O"):
				global.keyCooldown = global.cooldownTime;
				optionsMenu = instance_create_layer(33, -33, "MiddleObjects", escapeMenu);
				setOptionsMenu(optionsMenu);
				instance_destroy();
			break;
			case ord("L"):
				global.keyCooldown = global.cooldownTime;
				var loader = instance_create_layer(33, -33, "MiddleObjects", loadCharacterMenu);
				loader.previousMenu = escapeMenu;
				loader.previousMenuScript = setEscapeMenu;
				instance_destroy();
			break;
			case ord("Q"):
				game_end();
				global.keyCooldown = global.cooldownTime;
			break;
		}
	}


}
