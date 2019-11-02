if (keyCooldown <= 0 && instance_find(genericMenu, 0) == noone){
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
		// screenshot
		case vk_f12:
			keyCooldown = global.cooldownTime;
			var i = 0;
			for(i = 0; file_exists(working_directory + "Screenshots\\" + string(i) + ".png"); i++){
				show_debug_message("Filename exists, continuing...")
			}
			screen_save(working_directory + "Screenshots\\" + string(i) + ".png");
			show_debug_message("Screenshot saved in " + working_directory + "Screenshots\\" + string(i) + ".png");
		break;
		// quicksave and quickload
		// TODO: Make custom saving system
		case vk_f5:
			game_save(working_directory + "Savegames\\" + global.playerName + "\\quicksave.sav");
		break;
		case vk_f9:
			game_load(working_directory + "Savegames\\" + global.playerName + "\\quicksave.sav");
		break;
		// generic use button
		case vk_enter:
			if (instance_position(x, y, captainsChair)){
				x = global.overworldX;
				y = global.overworldY;
				room = global.overworldRoom;
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}else if (instance_position(x, y, genericRoomTransitioner) && room == genericSpaceOverworld){
				var xtemp = x;
				var ytemp = y;
				global.overworldRoom = room;
				global.overworldX = x;
				global.overworldY = y;
				x = instance_position(xtemp, ytemp, genericRoomTransitioner).roomToGoToX;
				y = instance_position(xtemp, ytemp, genericRoomTransitioner).roomToGoToY;
				room_goto(instance_position(xtemp, ytemp, genericRoomTransitioner).roomToGoTo);
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			} else if (instance_position(x, y, genericRoomTransitioner)){
				var xtemp = x;
				var ytemp = y;
				x = instance_position(xtemp, ytemp, genericRoomTransitioner).roomToGoToX;
				y = instance_position(xtemp, ytemp, genericRoomTransitioner).roomToGoToY;
				room_goto(instance_position(xtemp, ytemp, genericRoomTransitioner).roomToGoTo);
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			} else if(room == genericSpaceOverworld){
				//TODO: consider using variables so we dont have to keep searching for items
				//TODO: make sure there is a captains chair to go to
				global.overworldRoom = room;
				global.overworldX = x;
				global.overworldY = y;
				room_goto(playerShip);
				x = 561;
				y = 165;
				keyCooldown = global.cooldownTime;
				turn = false;
				global.takingTurn = false;
			}
		break;
		// bring up escape menu
		case vk_escape:
			var escmen = instance_create_layer(-33, 0, "MiddleObjects", escapeMenu);
			setEscapeMenu(escmen);
			keyCooldown = global.cooldownTime;
		break;
		//bring up inventory
		case ord("I"):
			instance_create_layer(-33, 0, "MiddleObjects", inventoryMenu);
			keyCooldown = global.cooldownTime;
		break;
		case ord("G"):
			if(instance_position(x, y, genericItem) != noone){
				addItemToInventory(instance_position(x, y, genericItem), inventory);
				instance_destroy(instance_position(x, y, genericItem));
			}
			keyCooldown = global.cooldownTime;
		break;
	}
}