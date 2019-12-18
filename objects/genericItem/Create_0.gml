/// @description Insert description here
// You can write your code in this editor

special = ds_grid_create(2, 0);

var variablesToSave = variable_instance_get_names(id);

var j = 0;
for(var i = 0; i < array_length_1d(variablesToSave); i++){
	if(variablesToSave[i] != "number" 
	&& variablesToSave[i] != "weight"
	&& variablesToSave[i] != "value"
	&& variablesToSave[i] != "special"){
		ds_grid_resize(special, ds_grid_width(special), ds_grid_height(special) + 1);
		ds_grid_set(special, 0, j, variablesToSave[i]);
		ds_grid_set(special, 1, j, variable_instance_get(id, variablesToSave[i]));
		j++;
	}
}

ds_grid_sort_2(special, 0, false);