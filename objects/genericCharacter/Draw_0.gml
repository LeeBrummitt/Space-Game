/// @description Insert description here
// You can write your code in this editor

var tempObj = instance_find(player, 0);

if (tempObj == noone || point_distance(x, y, tempObj.x, tempObj.y) <= global.viewDistance*((global.xSize+global.ySize)/2)
&& !collision_line(x, y, tempObj.x, tempObj.y, genericWall, false, false) || isPlayer == true){
	draw_self();
	
	if(isPlayer == false && 100*(hp/hpMax) < 100 ){
		draw_healthbar(x-(global.xSize/2), y+(global.ySize/2) +1, x+(global.xSize/2), y+(global.ySize/2) + 2, 100*(hp/hpMax), c_black, c_red, c_red, 0, true, true);
	}

	if(isPlayer == true){
	
	}
}