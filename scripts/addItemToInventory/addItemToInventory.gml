var itemToAdd = argument0;
var inventoryToAddTo =argument1;
var success = false;

for(var i = 0; i < ds_grid_width(inventoryToAddTo); i++){
	//TODO: Check special
	//TODO: Copy special properly
	if(success == false 
	&& ds_grid_get(inventoryToAddTo, i, 0) == object_get_name(itemToAdd.object_index)
	&& ds_grid_get(inventoryToAddTo, i, 2) == itemToAdd.weight
	&& ds_grid_get(inventoryToAddTo, i, 3) == itemToAdd.value
	&& ds_grid_get(inventoryToAddTo, i, 4) == itemToAdd.damage
	&& ds_grid_get(inventoryToAddTo, i, 5) == itemToAdd.armor
	&& ds_grid_get(inventoryToAddTo, i, 6) == itemToAdd.material
	){
		ds_grid_set(inventoryToAddTo, i, 1, itemToAdd.number + ds_grid_get(inventoryToAddTo, i, 1));
		success = true;
	}
}

show_debug_message(object_get_name(itemToAdd.object_index));

if (success == false){
	if(ds_grid_get(inventoryToAddTo, 0, 0) == 0){
		ds_grid_set(inventoryToAddTo, 0, 0, object_get_name(itemToAdd.object_index));
		ds_grid_set(inventoryToAddTo, 0, 1, itemToAdd.number);
		ds_grid_set(inventoryToAddTo, 0, 2, itemToAdd.weight);
		ds_grid_set(inventoryToAddTo, 0, 3, itemToAdd.value);
		ds_grid_set(inventoryToAddTo, 0, 4, itemToAdd.damage);
		ds_grid_set(inventoryToAddTo, 0, 5, itemToAdd.armor);
		ds_grid_set(inventoryToAddTo, 0, 6, itemToAdd.material);
		ds_grid_set(inventoryToAddTo, 0, 7, itemToAdd.special);
	}else{
		ds_grid_resize(inventoryToAddTo, ds_grid_width(inventoryToAddTo) + 1, ds_grid_height(inventoryToAddTo));
		ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 0, object_get_name(itemToAdd.object_index));
		ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 1, itemToAdd.number);
		ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 2, itemToAdd.weight);
		ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 3, itemToAdd.value);
		ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 4, itemToAdd.damage);
		ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 5, itemToAdd.armor);
		ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 6, itemToAdd.material);
		ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 7, itemToAdd.special);
	}
}