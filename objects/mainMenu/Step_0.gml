/// @description check if actions need to be preformed and preform them if necessary

if(newGameButton.active = true){
	//TODO: Find a better way to do the loction.
	//TODO: Make a character creator menu
	instance_create_layer(561, 165, "MiddleObjects", player);
	room_goto(playerShip);
	instance_destroy();
	global.keyCooldown = global.cooldownTime;
}else if(loadGameButton.active = true){
	instance_create_layer(0, 0, "MiddleObjects", loadCharacterMenu);
	instance_destroy();
	global.keyCooldown = global.cooldownTime;
}else if(quitButton.active = true){
	game_end();
	global.keyCooldown = global.cooldownTime;
}