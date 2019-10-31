
show_debug_message("NPC Turn");

var pathGrid = mp_grid_create(17,17,room_width/global.xSize, room_height/global.ySize, global.xSize, global.ySize);
var charac = getClosestOpponent();
var path = path_add();

mp_grid_add_instances(pathGrid, genericWall, true);
if(charac != undefined && abs(x-charac.x) <= global.xSize && abs(y-charac.y) <= global.ySize){
	characterAttack(id, charac);
} else if(charac != undefined && mp_grid_path(pathGrid, path, x, y, charac.x, charac.y, 1)){
	x = path_get_point_x(path, 1);
	y = path_get_point_y(path, 1);
	
	//to make sure things stay alligned
	x = round(x/global.xSize)*global.xSize;
	y = round(y/global.xSize)*global.xSize;
	
	show_debug_message(x%global.xSize);
	show_debug_message(y%global.ySize);
}
mp_grid_destroy(pathGrid);
path_delete(path);