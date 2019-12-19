/// @description set global variables, etc
// You can write your code in this editor

if(file_exists("settings.ini")){
	loadSettings();
}

//initialize global setings if not loaded
if(!variable_global_exists("fullscreen")){
	global.fullscreen = false;
}

if(!variable_global_exists("music")){
	global.music = true;
}

//apply settings
window_set_fullscreen(global.fullscreen);

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

if(!variable_global_exists("loadCleanup")){
	global.loadCleanup = false;
}

//set view distance size
if(!variable_global_exists("viewDistance")){
	global.viewDistance = 6.5;
}

//set key cooldown
if(!variable_global_exists("global.keyCooldown")){
	global.keyCooldown = global.cooldownTime;
}

//save settings if file doesn't exist
if(!file_exists("settings.ini")){
	saveSettings()
}

//set font
draw_set_font(openSans30);

// stop old song and play new songs
audio_group_stop_all(audiogroup_default);
if(global.music == true){
	audio_play_sound(roomSong, 1, true);
}

// Load room if necessary
if(!is_undefined(ds_map_find_value(global.savedRooms, room_get_name(room)))){
	show_debug_message("Loading Room...");
	with(stuffToSave){
		//dont destroy players or people in the party for room transition
		// do it if loadCleanup = true
		if(persistent == false || global.loadCleanup == true){
			instance_destroy();
			global.loadCleanup = false;
		}
	}
	var tempKey;
	var tempKey2;
	var tempMap = ds_map_find_value(global.savedRooms, room_get_name(room));
	var tempMap2;
	var tempInstance;
	for(var i = 0; i < ds_map_size(tempMap); i++){
		if(i == 0){
			tempKey = ds_map_find_first(tempMap);
		}else{
			tempKey = ds_map_find_next(tempMap, tempKey);
		}
		
		tempMap2 = ds_map_find_value(tempMap, tempKey);
		tempInstance = instance_create_layer(real(ds_map_find_value(tempMap2, "x")), 
		real(ds_map_find_value(tempMap2, "y")), 
		real(ds_map_find_value(tempMap2, "layer")), 
		asset_get_index(removeNumberFromString(tempKey)));
		for(var j = 0; j < ds_map_size(tempMap2); j++){
			if(j == 0){
				tempKey2 = ds_map_find_first(tempMap2);
			}else{
				tempKey2 = ds_map_find_next(tempMap2, tempKey2);
			}
			//these have ds_grids and need to be handled seperately
			if(tempKey2 != "inventory" && tempKey2 != "equipment" && tempKey2 != "special"){
				variable_instance_set(tempInstance, tempKey2, ds_map_find_value(tempMap2, tempKey2));
			}else{
				//TODO: Make this better
				if(tempKey2 == "inventory"){
					ds_grid_read(tempInstance.inventory,  ds_map_find_value(tempMap2, tempKey2));
				}else if(tempKey2 == "equipment"){
					ds_grid_read(tempInstance.equipment,  ds_map_find_value(tempMap2, tempKey2));
				}else if(tempKey2 == "special"){
					ds_grid_read(tempInstance.special,  ds_map_find_value(tempMap2, tempKey2));
				}
			}
		}
	}
}