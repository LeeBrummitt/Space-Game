function saveTheGame(argument0) {
	var location = argument0;
	var roomMap = ds_map_create();

	//store which room you are currently in
	ds_map_add(roomMap, "currentRoom", room_get_name(room));

	// save current room
	//done seperatelt because this will save the player
	var objectMap = ds_map_create();
	ds_map_add_map(roomMap, room_get_name(room), objectMap);
	for(var j = 0; j < instance_number(stuffToSave); j++){
		var objectToSave = instance_find(stuffToSave, j);
		var variableMap = ds_map_create()
		ds_map_add_map(objectMap, object_get_name(objectToSave.object_index) + string(j), variableMap);
		//I think I have to set x and yseperately?
		ds_map_add(variableMap, "x", objectToSave.x);
		ds_map_add(variableMap, "y", objectToSave.y);
		ds_map_add(variableMap, "persistent", objectToSave.persistent);
		ds_map_add(variableMap, "layer", objectToSave.layer);
		var variablesToSave = variable_instance_get_names(objectToSave);
		for(var k = 0; k < array_length_1d(variablesToSave); k++){
			if(variablesToSave[k] != "inventory" && variablesToSave[k] != "equipment"){
				ds_map_add(variableMap, variablesToSave[k], variable_instance_get(objectToSave, variablesToSave[k]));
			}
			else{
				ds_map_add(variableMap, variablesToSave[k], ds_grid_write(variable_instance_get(objectToSave, variablesToSave[k])));
			}
		}
	}

	//add reference to the global ds_map which saves other rooms
	var tempKey;
	for(var i = 0; i < ds_map_size(global.savedRooms); i++){
		if(i == 0){
			tempKey = ds_map_find_first(global.savedRooms);
		}else{
			tempKey = ds_map_find_next(global.savedRooms, tempKey);
		}
		if (asset_get_index(tempKey) != room){
			ds_map_add_map(roomMap, tempKey, ds_map_find_value(global.savedRooms, tempKey));
		}
	}

	//Save global variables
	var globalValues = ds_map_create();

	ds_map_add(globalValues, "hour", global.hour);
	ds_map_add(globalValues, "minute", global.minute);
	ds_map_add(globalValues, "day", global.day);
	ds_map_add(globalValues, "overworldRoom", global.overworldRoom);
	ds_map_add(globalValues, "overworldX", global.overworldX);
	ds_map_add(globalValues, "overworldY", global.overworldY);
	ds_map_add(globalValues, "playerName", global.playerName);
	ds_map_add(globalValues, "takingTurn", global.takingTurn);
	ds_map_add(globalValues, "turn", global.turn);

	ds_map_add_map(roomMap, "globalValues", globalValues);

	var stringToSave = json_encode(roomMap);

	var fileWeUse = file_text_open_write(location);
	file_text_write_string(fileWeUse, stringToSave);
	file_text_close(fileWeUse);

	// remove reference to global ds_map
	for(var i = 0; i < ds_map_size(global.savedRooms); i++){
		if(i == 0){
			tempKey = ds_map_find_first(global.savedRooms);
		}else{
			tempKey = ds_map_find_next(global.savedRooms, tempKey);
		}
		if (asset_get_index(tempKey) != room){
			ds_map_delete(roomMap, tempKey);
		}
	}

	ds_map_destroy(roomMap);


}
