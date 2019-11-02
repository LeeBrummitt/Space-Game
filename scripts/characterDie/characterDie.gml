if(persistent == false){
	instance_destroy();
}else if(isPlayer == false){
	isDead = true;
	x = -4;
	y = -4;
}else{
	room_goto(playerShip);
	x = 561;
	y = 165;
	hp = hpMax;
}