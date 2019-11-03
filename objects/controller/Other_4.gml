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

// initialize cooldown time
if(!variable_global_exists("cooldownTime")){
	global.cooldownTime = 10;
}

// initialize overworld location
if(!variable_global_exists("overworldRoom")){
	global.overworldRoom = genericSpaceOverworld;
}
if(!variable_global_exists("overworldX")){
	global.overworldX = 99;
}
if(!variable_global_exists("overworldY")){
	global.overworldY = 99;
}

// initialize room saver
if(!variable_global_exists("savedRooms")){
	global.savedRooms = ds_map_create();
}

//set font
draw_set_font(openSans30);

// stop old song and play new songs
audio_group_stop_all(audiogroup_default);
audio_play_sound(roomSong, 1, true);

//TODO: Load room if necessary