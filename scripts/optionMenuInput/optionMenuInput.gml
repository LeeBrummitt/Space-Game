function optionMenuInput() {
	if(global.keyCooldown <= 0){
		switch(keyboard_key){
			case vk_escape:	
				var escMen = instance_create_layer(33, -33, "MiddleObjects", escapeMenu);
				setEscapeMenu(escMen)
				instance_destroy();
				global.keyCooldown = global.cooldownTime;
			break;
		}
	}


}
