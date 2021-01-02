function playerChooseDirection(argument0, argument1) {
	var newx = argument0;
	var newy = argument1;

	if (canCharacterMoveTo(newx, newy)){
		x = newx;
		y = newy;
		global.keyCooldown = global.cooldownTime;
		turn = false;
		global.takingTurn = false;
	}else if(instance_position(newx, newy, genericCharacter) != noone){
		characterInteractWithCharacter(id, instance_position(newx, newy, genericCharacter));
		global.keyCooldown = global.cooldownTime;
		turn = false;
		global.takingTurn = false;
	}


}
