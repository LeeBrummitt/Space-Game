if (keyCooldown <= 0){
	switch(keyboard_key){
		case vk_numpad1:
			if (canCharacterMoveTo(x-global.xSize, y+global.xSize)){
				x = x-global.xSize;
				y = y+global.ySize;
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}
		break;
		case vk_numpad2:
		case vk_down:
			if (canCharacterMoveTo(x, y+global.xSize)){
				x = x;
				y = y+global.ySize;
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}
		break;
		case vk_numpad3:
			if (canCharacterMoveTo(x+global.xSize, y+global.xSize)){
				x = x+global.xSize;
				y = y+global.ySize;
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}
		break;
		case vk_left:
		case vk_numpad4:
			if (canCharacterMoveTo(x-global.xSize, y)){
				x = x-global.xSize;
				y = y;
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}
		break;
		case vk_numpad5:		
			keyCooldown = global.cooldownTime;
			turn = false;
			global.takingTurn = false;
		break;
		case vk_right:
		case vk_numpad6:
			if (canCharacterMoveTo(x+global.xSize, y)){
				x = x+global.xSize;
				y = y;
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}
		break;
		case vk_numpad7:
			if (canCharacterMoveTo(x-global.xSize, y-global.ySize)){
				x = x-global.xSize;
				y = y-global.ySize;
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}
		break;
		case vk_up:
		case vk_numpad8:
			if (canCharacterMoveTo(x, y-global.ySize)){
				x = x;
				y = y-global.ySize;
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}
		break;
		case vk_numpad9:
			if (canCharacterMoveTo(x+global.xSize, y-global.ySize)){
				x = x+global.xSize;
				y = y-global.ySize;
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}
		break;
	}
}