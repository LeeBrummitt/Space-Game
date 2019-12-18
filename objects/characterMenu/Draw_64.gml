/// @description Insert description here
// You can write your code in this editor

var rx = display_get_gui_width();
var ry = display_get_gui_height();

draw_rectangle_color((1/12)*rx, (1/12)*ry, (11/12)*rx, (11/12)*ry, c_gray, c_gray, c_gray, c_gray, false);

if(selectedItem == -1){
	draw_text_transformed_color((11/36)*rx, (3/36)*ry, "IDENTIFICATION", (1/1000)*rx, (1/1000)*ry, 0, c_red, c_red, c_red, c_red, 1);
	
	draw_rectangle_color((1.5/12)*rx, (2/12)*ry, (1.5/12)*rx+(rx+ry)/8, (2/12)*ry+(rx+ry)/8, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	//NOTE: This may cause problems!!!
	if(charac.face != noone){
		draw_sprite_stretched(charac.face, -1, (1.5/12)*rx, (2/12)*ry, (rx+ry)/8, (rx+ry)/8);
	}
	else{
		draw_sprite_stretched(charac.sprite, -1, (1.5/12)*rx, (2/12)*ry, (rx+ry)/8, (rx+ry)/8);
	}
	
	draw_text_transformed_color((12/36)*rx, (6/36)*ry, "NAME: " + charac.characterName, (.7/1000)*rx, (.7/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_transformed_color((12/36)*rx, (8/36)*ry, "OCCUPATION: " + charac.className, (.7/1000)*rx, (.7/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_transformed_color((12/36)*rx, (10/36)*ry, "WEIGHT: " + string(charac.weight) + " kg", (.7/1000)*rx, (.7/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_transformed_color((12/36)*rx, (12/36)*ry, "HEIGHT: " + string(charac.height) + " m", (.7/1000)*rx, (.7/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
	//TODO: Test this later
	draw_text_transformed_color((12/36)*rx, (14/36)*ry, "AGE: " + string(ceil((global.day-charac.birthday)/365)) + " y", (.7/1000)*rx, (.7/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
}else{ 
	draw_text_transformed_color((13/36)*rx, (3/36)*ry, "CHARACTER", (1/1000)*rx, (1/1000)*ry, 0, c_red, c_red, c_red, c_red, 1);
	
	draw_text_transformed_color((4/36)*rx, (6/36)*ry, "Skill", (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_transformed_color((13/36)*rx, (6/36)*ry, "Value", (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_transformed_color((20/36)*rx, (6/36)*ry, "Potential", (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
	//draw_text_transformed_color((25/36)*rx, (6/36)*ry, "Value", (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
	
	//TODO: Use multiple pages for long inventories
	//TODO: Limit size of item names, etc

	for(var i = firstPoint, j = 0; i < min(array_length_1d(skillsAndStuff), lastPoint); i++){
		if(variable_instance_exists(charac, skillsAndStuff[i])){
			if(i == selectedItem){
				draw_rectangle_color((4/36)*rx, (6/36)*ry+(j+1)*(2/36)*ry, (32/36)*rx, (7.2/36)*ry+(j+1)*(2/36)*ry, c_aqua, c_aqua, c_aqua, c_aqua, false);
			}else{
				draw_rectangle_color((4/36)*rx, (6/36)*ry+(j+1)*(2/36)*ry, (32/36)*rx, (7.2/36)*ry+(j+1)*(2/36)*ry, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
			}
			draw_text_transformed_color((4/36)*rx, (6/36)*ry+(j+1)*(2/36)*ry, skillsAndStuff[i], (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
			draw_text_transformed_color((13/36)*rx, (6/36)*ry+(j+1)*(2/36)*ry, variable_instance_get(charac, skillsAndStuff[i]), (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
			draw_text_transformed_color((20/36)*rx, (6/36)*ry+(j+1)*(2/36)*ry, string(variable_instance_get(charac, skillsAndStuff[i] + "Efficiency")) + "%", (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
			//draw_text_transformed_color((25/36)*rx, (6/36)*ry+(j+1)*(2/36)*ry, ds_grid_get(charac.inventory, i, 3), (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
			j++;
		}
	}
}