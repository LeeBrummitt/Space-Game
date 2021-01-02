function getEquipmentOfTypeFromInventory(argument0, argument1) {
	var charac = argument0;
	var type = argument1;

	// name, number, weight, value, special, original position
	var gridToReturn = ds_grid_create(0,6);

	var j = 0;
	for(var i = 0; i < ds_grid_width(charac.inventory); i++){
		var item = asset_get_index(ds_grid_get(charac.inventory, i, 0));
		//check if item is an ancestor or the same type
		if(object_is_ancestor(item, type) || item == type){
			ds_grid_resize(gridToReturn, ds_grid_width(gridToReturn) + 1, ds_grid_height(gridToReturn));
			ds_grid_set(gridToReturn, j, 0, ds_grid_get(charac.inventory, i, 0));
			ds_grid_set(gridToReturn, j, 1, ds_grid_get(charac.inventory, i, 1));
			ds_grid_set(gridToReturn, j, 2, ds_grid_get(charac.inventory, i, 2));
			ds_grid_set(gridToReturn, j, 3, ds_grid_get(charac.inventory, i, 3));
			ds_grid_set(gridToReturn, j, 4, ds_grid_get(charac.inventory, i, 4));
			ds_grid_set(gridToReturn, j, 5, i);
			j++;
		}
	}

	return gridToReturn;


}
