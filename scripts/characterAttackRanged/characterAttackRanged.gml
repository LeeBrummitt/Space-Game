var character1 = argument0;
var character2 = argument1;

if (character1 != undefined && character2 != undefined){
	argument1.hp = argument1.hp - (1/2)*argument0.dexterity;
	show_debug_message("New HP:");
	show_debug_message(argument1.hp);

	audio_play_sound(laser, 1, false);
}