/// @description handle character movenent, etc
// You can write your code in this editor

if(isPlayer == false && turn == true){
	NPCTurn();
	endTurn();
}
else if (isPlayer == true && turn == true){
	getPlayerInput();
}