var itemToAdd = argument0;
var inventoryToAddTo =argument1;
var success = false;

for(var i = 0; i < ds_grid_width(inventoryToAddTo); i++){
	if(success == false 
	&& ds_grid_get(inventoryToAddTo, i, 0) == object_get_name(itemToAdd.object_index)
	&& ds_grid_get(inventoryToAddTo, i, 2) == itemToAdd.weight
	&& ds_grid_get(inventoryToAddTo, i, 3) == itemToAdd.value
	&& ds_grid_get(inventoryToAddTo, i, 4) == ds_grid_write(itemToAdd.special)
	){
		ds_grid_set(inventoryToAddTo, i, 1, itemToAdd.number + ds_grid_get(inventoryToAddTo, i, 1));
		success = true;
	}
}

show_debug_message(object_get_name(itemToAdd.object_index));

if (success == false){
	ds_grid_resize(inventoryToAddTo, ds_grid_width(inventoryToAddTo) + 1, ds_grid_height(inventoryToAddTo));
	ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 0, object_get_name(itemToAdd.object_index));
	ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 1, itemToAdd.number);
	ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 2, itemToAdd.weight);
	ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 3, itemToAdd.value);
	ds_grid_set(inventoryToAddTo, ds_grid_width(inventoryToAddTo)-1, 4, ds_grid_write(itemToAdd.special));
}

ds_grid_sort_2(inventoryToAddTo, 0, true);