/// @description handle character movenent, etc
// You can write your code in this editor

if(isPlayer == false && turn == true){
	// update max HP
	hpMax = calculateMaxHitPoints();
	ppMax = calculateMaxPsionicPoints();
	stmMax = calculateMaxStamina();
	NPCTurn();
	endTurnCharacter();
}
else if (isPlayer == true && turn == true){
	// update max HP
	hpMax = calculateMaxHitPoints();
	ppMax = calculateMaxPsionicPoints();
	stmMax = calculateMaxStamina();
	getPlayerInput();
}
if (keyCooldown > 0 && instance_find(genericMenu, 0) == noone){
	keyCooldown--;
}
// change sprite if it doesn't match the one saved
// only do this if we needed to set this specially
// for saving shapeshifters, etc
// also helps for when player is a spaceship
if (sprite != noone && sprite != sprite_index && room != genericSpaceOverworld){
	show_debug_message("Changing sprite...");
	sprite_index = sprite;
} else if (room == genericSpaceOverworld){
	sprite_index = spaceship_sprite_1;
}
// make sure values isnt over max values
if (hp > hpMax){
	hp = hpMax;
}
if (stm > stmMax){
	stm = stmMax;
}
if (pp > ppMax){
	pp = ppMax;
}