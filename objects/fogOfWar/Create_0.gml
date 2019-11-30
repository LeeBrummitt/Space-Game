/// @description Insert description here
// You can write your code in this editor

state = 0;

// if its the ship or something make everything visible
if(instance_exists(controller) && instance_find(controller, 0).startExplored == true){
	state = 2;
}