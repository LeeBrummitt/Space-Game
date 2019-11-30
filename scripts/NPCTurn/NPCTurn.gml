var pathGrid = mp_grid_create(17,17,room_width/global.xSize, room_height/global.ySize, global.xSize, global.ySize);
var charac = getClosestVisibleOpponent();
var path = path_add();
var tempCharac = undefined;

mp_grid_add_instances(pathGrid, genericWall, true);

// add characters that aren't yourself or the target
for(var i = 0; i < instance_number(genericCharacter); i++){
	tempCharac = instance_find(genericCharacter,i);
	if(tempCharac != id && tempCharac != charac){
		mp_grid_add_instances(pathGrid, tempCharac, false);
	}
}

//TODO: Make it so the ai chooses the next closest character if it can't path to the closest one.
//TODO: Make charac a constant so you can targt friendlies that damage you
if(specialAbility == noone || !script_execute(specialAbility)){
	if(charac != undefined && abs(x-charac.x) <= global.xSize && abs(y-charac.y) <= global.ySize){
		characterAttackMelee(id, charac);
	} else if (checkCharacterCanRanged(id, charac) && isRanger == true){
		characterAttackRanged(id, charac);
	} else if(charac != undefined && mp_grid_path(pathGrid, path, x, y, charac.x, charac.y, 1)){
		x = path_get_point_x(path, 1);
		y = path_get_point_y(path, 1);
	
		//to make sure things stay alligned
		x = round(x/global.xSize)*global.xSize;
		y = round(y/global.xSize)*global.xSize;
	
	}
}
mp_grid_destroy(pathGrid);
path_delete(path);

turn = false;
global.takingTurn = false;