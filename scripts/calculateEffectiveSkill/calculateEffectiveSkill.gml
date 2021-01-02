function calculateEffectiveSkill(argument0, argument1) {
	var charac = argument0;
	var skill = argument1;

	var effectiveSkill = 0;

	var tempGrid = ds_grid_create(0,0);

	//calculate equipment bonuses
	//TODO: Check this later to see if this is calculated properly when more equipment is used!!!
	if(variable_instance_exists(charac, skill)){
		effectiveSkill = variable_instance_get(charac, skill);
	}
	for(var i = 0; i < ds_grid_height(charac.equipment); i++){
		if(ds_grid_get(charac.equipment, i, 2) != 0){
			ds_grid_read(tempGrid, ds_grid_get(charac.equipment, i, 4));
			for(var j = 0; j < ds_grid_height(tempGrid); j++){
				if(ds_grid_get(tempGrid, 0, j) == skill){
					effectiveSkill = effectiveSkill + ds_grid_get(tempGrid, 1, j);
				}
			}
		}
	}

	ds_grid_destroy(tempGrid);

	return effectiveSkill;


}
