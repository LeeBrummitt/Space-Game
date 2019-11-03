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
	var variablesToSave = variable_instance_get_names(objectToSave);
	for(var k = 0; k < array_length_1d(variablesToSave); k++){
		if(variablesToSave[k] != "inventory" && variablesToSave[k] != "equipment"){
			ds_map_add(variableMap, variablesToSave[k], variable_instance_get(objectToSave, variablesToSave[k]));
		}
		else{
			//TODO: Save inventory and equipment
		}
	}
}

//add reference  to global ds_map
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

//TODO: Save global variables

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