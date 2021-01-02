function loadTheGame(argument0) {
	var location = argument0;

	if(file_exists(location)){
		var fileToUse = file_text_open_read(location);
		var stringFromFile = file_text_read_string(fileToUse);
		file_text_close(fileToUse);

		var roomMap = json_decode(stringFromFile);

		if(roomMap != -1){
	
			global.loadCleanup = true;
	
			// this seems to fix a bug where old persistant items sometimes aren't removed when loading
			with(stuffToSave){
				persistent = false;
			}
	
			//TODO: Check if values exist before trying to load
			ds_map_destroy(global.savedRooms);
			// Set global values
			var tempKey;
			var tempMap = ds_map_find_value(roomMap, "globalValues");
			for(var i = 0; i < ds_map_size(tempMap); i++){
				if(i == 0){
					tempKey = ds_map_find_first(tempMap);
				}else{
					tempKey = ds_map_find_next(tempMap, tempKey);
				}
				variable_global_set(tempKey, ds_map_find_value(tempMap, tempKey));
			}
	
			//change room
			room_goto(asset_get_index(ds_map_find_value(roomMap, "currentRoom")));
	
			// remove unnecessary stuff
			ds_map_delete(roomMap, "currentRoom");
			ds_map_destroy(ds_map_find_value(roomMap, "globalValues"));
			ds_map_delete(roomMap, "globalValues");
			global.savedRooms = roomMap;	
		}
	}


	// TODO: remove the current room from global saved rooms incase it isnt one we would normally save
	// it should be saved when you leave/save anyway


}
