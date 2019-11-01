/// @description Insert description here
// You can write your code in this editor
if(position_meeting(x, y+global.ySize, genericWall) && image_index == 1){
	image_index = 0;	
}
else if (!position_meeting(x, y+global.ySize, genericWall) && image_index == 0){
	image_index = 1;	
}