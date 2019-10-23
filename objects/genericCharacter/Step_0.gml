/// @description handle character movenent, etc
// You can write your code in this editor

if(isPlayer == false && turn == true){
	// update max HP
	calculateMaxHitPoints();
	NPCTurn();
	endTurnCharacter();
}
else if (isPlayer == true && turn == true){
	// update max HP
	calculateMaxHitPoints();
	getPlayerInput();
}
if (keyCooldown > 0){
	keyCooldown--;
}