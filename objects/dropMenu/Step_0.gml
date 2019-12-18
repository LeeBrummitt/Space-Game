/// @description Insert description here
// You can write your code in this editor

if(inputCooldown <= 0){
	switch(keyboard_key){
		// go back to inventory
		case vk_escape:	
			var inv = instance_create_layer(-33, -33, "MiddleObjects", inventoryMenu)
			inv.charac = charac;
			inv.selectedItem = itemToDrop;
			instance_destroy();
		break;
		//get keyboard input for numbers
		case vk_numpad0:
		case ord("0"):
			var numberToAddToString = "0"
			if(numberString != "0"){
				numberString = numberString + numberToAddToString;
			}
			else{
				numberString = numberToAddToString;
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		case vk_numpad1:
		case ord("1"):
			var numberToAddToString = "1"
			if(numberString != "0"){
				numberString = numberString + numberToAddToString;
			}
			else{
				numberString = numberToAddToString;
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		case vk_numpad2:
		case ord("2"):
			var numberToAddToString = "2"
			if(numberString != "0"){
				numberString = numberString + numberToAddToString;
			}
			else{
				numberString = numberToAddToString;
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		case vk_numpad3:
		case ord("3"):
			var numberToAddToString = "3"
			if(numberString != "0"){
				numberString = numberString + numberToAddToString;
			}
			else{
				numberString = numberToAddToString;
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		case vk_numpad4:
		case ord("4"):
			var numberToAddToString = "4"
			if(numberString != "0"){
				numberString = numberString + numberToAddToString;
			}
			else{
				numberString = numberToAddToString;
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		case vk_numpad5:
		case ord("5"):
			var numberToAddToString = "5"
			if(numberString != "0"){
				numberString = numberString + numberToAddToString;
			}
			else{
				numberString = numberToAddToString;
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		case vk_numpad6:
		case ord("6"):
			var numberToAddToString = "6"
			if(numberString != "0"){
				numberString = numberString + numberToAddToString;
			}
			else{
				numberString = numberToAddToString;
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		case vk_numpad7:
		case ord("7"):
			var numberToAddToString = "7"
			if(numberString != "0"){
				numberString = numberString + numberToAddToString;
			}
			else{
				numberString = numberToAddToString;
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		case vk_numpad8:
		case ord("8"):
			var numberToAddToString = "8"
			if(numberString != "0"){
				numberString = numberString + numberToAddToString;
			}
			else{
				numberString = numberToAddToString;
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		case vk_numpad9:
		case ord("9"):
			var numberToAddToString = "9"
			if(numberString != "0"){
				numberString = numberString + numberToAddToString;
			}
			else{
				numberString = numberToAddToString;
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		//delete last character
		case vk_backspace:
			numberString = string_delete(numberString, string_length(numberString), 1);
			if(numberString == ""){
				numberString = "0";
			}
			show_debug_message(numberString);
			inputCooldown = global.cooldownTime;
		break;
		//confirm number
		case vk_enter:
			// TODO: Check if an item of this type already ecists at that location 
			if(real(numberString) > 0){
				var createdObject = instance_create_layer(instance_find(player, 0).x, instance_find(player, 0).y, "BottomObjects", asset_get_index(ds_grid_get(charac.inventory, itemToDrop, 0)));
				createdObject.number = real(numberString);
				createdObject.weight = ds_grid_get(charac.inventory, itemToDrop, 2);
				createdObject.value = ds_grid_get(charac.inventory, itemToDrop, 3);
				ds_grid_read(createdObject.special, ds_grid_get(charac.inventory, itemToDrop, 4));
				
				// set object's special attributes
				for(var i = 0; i < ds_grid_height(createdObject.special); i++){
					var name = ds_grid_get(createdObject.special, 0, i);
					var val = ds_grid_get(createdObject.special, 1, i);
					variable_instance_set(createdObject, name, val);
				}
				
				ds_grid_set(charac.inventory, itemToDrop, 1, ds_grid_get(charac.inventory, itemToDrop, 1) - real(numberString));
			}
			instance_destroy();
		break;
	}
}else{
	inputCooldown = inputCooldown - 1;
}

if (real(numberString) > ds_grid_get(charac.inventory, itemToDrop, 1)){
	numberString = string(ds_grid_get(charac.inventory, itemToDrop, 1));
}