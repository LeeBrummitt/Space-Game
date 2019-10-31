var newx = argument0;
var newy = argument1;

if (canCharacterMoveTo(newx, newy)){
	x = newx;
	y = newy;
	keyCooldown = global.cooldownTime;
	turn = false;
	global.takingTurn = false;
}else if(instance_position(newx, newy, genericCharacter) != noone){
	characterInteractWithCharacter(id, instance_position(newx, newy, genericCharacter));
	keyCooldown = global.cooldownTime;
	turn = false;
	global.takingTurn = false;
}