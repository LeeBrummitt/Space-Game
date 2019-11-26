for(var i = 0; i < ds_grid_width(inventory); i++){
	if(ds_grid_get(inventory, i, 1) == 0){
		ds_grid_set(inventory, i, 0, ds_grid_get(inventory, ds_grid_width(inventory)-1, 0));
		ds_grid_set(inventory, i, 1, ds_grid_get(inventory, ds_grid_width(inventory)-1, 1));
		ds_grid_set(inventory, i, 2, ds_grid_get(inventory, ds_grid_width(inventory)-1, 2));
		ds_grid_set(inventory, i, 3, ds_grid_get(inventory, ds_grid_width(inventory)-1, 3));
		ds_grid_set(inventory, i, 4, ds_grid_get(inventory, ds_grid_width(inventory)-1, 4));
		ds_grid_resize(inventory,ds_grid_width(inventory)-1, ds_grid_height(inventory));
	}
}