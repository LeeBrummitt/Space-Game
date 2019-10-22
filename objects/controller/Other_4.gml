/// @description set global variables, etc
// You can write your code in this editor

//characterTurns = undefined;

//variable to avoid begin step for controller if
// a character is taking a turn
global.takingTurn = false;

//initialize time variables
if(!variable_global_exists("turn")){
	global.turn = 1;
}
if(!variable_global_exists("hour")){
	global.hour = 0;
}
if(!variable_global_exists("minute")){
	global.minute = 0;
}
if(!variable_global_exists("day")){
	global.day = 0;
}

//initialize room size
if(!variable_global_exists("xSize")){
	global.xSize = 33;
}
if(!variable_global_exists("ySize")){
	global.ySize = 33;
}

if(!variable_global_exists("cooldownTime")){
	global.cooldownTime = 20;
}