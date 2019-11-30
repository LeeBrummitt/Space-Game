/// @description Insert description here
// You can write your code in this editor

var tempObj = instance_find(player, 0);

//TODO: fix bug where it looks strange looking through doors
if (tempObj != noone 
	&&(!collision_line(x, y, tempObj.x, tempObj.y, genericWall, false, false)
	|| instance_position(x, y, genericWall) && (
	!collision_line(x+global.xSize/2+1, y+global.ySize/2+1, tempObj.x, tempObj.y, genericWall, false, false)
	|| !collision_line(x-global.xSize/2-1, y+global.ySize/2+1, tempObj.x, tempObj.y, genericWall, false, false)
	|| !collision_line(x+global.xSize/2+1, y-global.ySize/2-1, tempObj.x, tempObj.y, genericWall, false, false)
	|| !collision_line(x-global.xSize/2-1, y-global.ySize/2-1, tempObj.x, tempObj.y, genericWall, false, false)
	
	|| !collision_line(x+global.xSize/2+1, y, tempObj.x, tempObj.y, genericWall, false, false)
	|| !collision_line(x-global.xSize/2-1, y, tempObj.x, tempObj.y, genericWall, false, false)
	|| !collision_line(x, y+global.ySize/2+1, tempObj.x, tempObj.y, genericWall, false, false)
	|| !collision_line(x, y-global.ySize/2-1, tempObj.x, tempObj.y, genericWall, false, false)
	)
	)
	&& point_distance(x, y, tempObj.x, tempObj.y) <= global.viewDistance*((global.xSize+global.ySize)/2)){
	state = 2;
}else if(state == 2){
	state = 1;
}
