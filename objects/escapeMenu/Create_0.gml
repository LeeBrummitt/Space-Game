/// @description Insert description here
// You can write your code in this editor

// putting this here too for the main menu
if(!variable_global_exists("cooldownTime")){
	global.cooldownTime = 10;
}

global.keyCooldown = global.cooldownTime;

//menu buttons to use
menuButtons[0] = "ERROR";
menuInputsScript = escapeMenuInputs;