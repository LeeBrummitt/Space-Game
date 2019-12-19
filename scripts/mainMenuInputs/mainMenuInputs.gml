if(global.keyCooldown <= 0){
	switch(keyboard_key){
		case ord("N"):
			//TODO: Find a better way to do the loction.
			//TODO: Make a character creator menu
			instance_create_layer(561, 165, "MiddleObjects", player);
			room_goto(playerShip);
			instance_destroy();
			global.keyCooldown = global.cooldownTime;
		break;
		case ord("L"):
			instance_create_layer(0, 0, "MiddleObjects", loadCharacterMenu);
			instance_destroy();
			global.keyCooldown = global.cooldownTime;
		break;
		case ord("Q"):
			game_end();
			global.keyCooldown = global.cooldownTime;
		break;
	}
}