var myGrid = argument0;
var column = argument1;
var ascending = argument2;
var tempGrid = ds_grid_create(ds_grid_height(myGrid), ds_grid_width(myGrid));

for(var i = 0; i < ds_grid_height(myGrid); i++){
	for(var j = 0; j < ds_grid_width(myGrid); j++){
		ds_grid_set(tempGrid, i, j, ds_grid_get(myGrid, j, i));
	}
}

ds_grid_sort(tempGrid, column, ascending);

for(var i = 0; i < ds_grid_height(myGrid); i++){
	for(var j = 0; j < ds_grid_width(myGrid); j++){
		ds_grid_set(myGrid, j, i, ds_grid_get(tempGrid, i, j));
	}
}

ds_grid_destroy(tempGrid);