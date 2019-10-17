/// @description set global variables, etc
// You can write your code in this editor

/* turntakers- id of characters who have taken a turn this turn
currentTurn- current turn, used to help determine who can take a turn */

global.takingTurn = false;
if(!variable_global_exists("turn")){
	global.turn = 0;
}