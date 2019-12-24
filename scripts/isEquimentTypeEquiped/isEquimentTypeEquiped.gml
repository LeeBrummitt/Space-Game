var charac = argument0;
var type = argument1;

var isTypeEquiped = false;

for(var i = 0; i < ds_grid_width(charac.equipment); i++){
	var item = asset_get_index(ds_grid_get(charac.equipment, i, 1));
	//check if item is an ancestor or the same type
	if(object_is_ancestor(item, type) || item == type){
		isTypeEquiped = true
	}
}

return isTypeEquiped;