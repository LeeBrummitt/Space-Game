/// @description Insert description here
// You can write your code in this editor

if(ds_map_exists(global.savedRooms, room_get_name(room))){
	ds_map_destroy(ds_map_find_value(global.savedRooms, room_get_name(room)));
	ds_map_delete(global.savedRooms, room_get_name(room));
}

if(checkRoomNeedsSave(room)){
	var objectMap = ds_map_create();
	ds_map_add_map(global.savedRooms, room_get_name(room), objectMap);
	for(var j = 0; j < instance_number(stuffToSave); j++){
		if(instance_find(stuffToSave, j).persistent == false){
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
	}
}