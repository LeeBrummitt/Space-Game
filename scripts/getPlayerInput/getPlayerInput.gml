if (keyCooldown <= 0){
	switch(keyboard_key){
		// movement keys
		case vk_numpad1:
			playerChooseDirection(x-global.xSize, y+global.xSize);
		break;
		case vk_numpad2:
		case vk_down:
			playerChooseDirection(x, y+global.xSize);
		break;
		case vk_numpad3:
			playerChooseDirection(x+global.xSize, y+global.xSize);
		break;
		case vk_left:
		case vk_numpad4:
			playerChooseDirection(x-global.xSize, y);
		break;
		case vk_right:
		case vk_numpad6:
			playerChooseDirection(x+global.xSize, y);
		break;
		case vk_numpad7:
			playerChooseDirection(x-global.xSize, y-global.ySize);
		break;
		case vk_up:
		case vk_numpad8:
			playerChooseDirection(x, y-global.ySize);
		break;
		case vk_numpad9:
			playerChooseDirection(x+global.xSize, y-global.ySize);
		break;
		// skip turn button
		case vk_numpad5:		
			keyCooldown = global.cooldownTime;
			turn = false;
			global.takingTurn = false;
		break;
		// hit ranged button
		case ord("F"):		
			//TODO: Let player manually select target
			if (checkCharacterCanRanged(id, getClosestOpponent())){
				characterAttackRanged(id, getClosestOpponent());
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}
		break;
		// fullscreen toggle
		case vk_f11:
			keyCooldown = global.cooldownTime;
			if(window_get_fullscreen() == false){
				window_set_fullscreen(true);
			}else{
				window_set_fullscreen(false);
			}
		break;
	}
}