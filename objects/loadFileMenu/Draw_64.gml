/// @description Insert description here
// You can write your code in this editor

var rx = display_get_gui_width();
var ry = display_get_gui_height();

draw_rectangle_color((1/12)*rx, (1/12)*ry, (11/12)*rx, (11/12)*ry, c_gray, c_gray, c_gray, c_gray, false);
draw_text_transformed_color((15.4/36)*rx, (3/36)*ry, "LOAD", (1/1000)*rx, (1/1000)*ry, 0, c_red, c_red, c_red, c_red, 1);

var rx = display_get_gui_width();
var ry = display_get_gui_height();

draw_text_transformed_color((4/36)*rx, (6/36)*ry, "Files", (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);

//TODO: Use multiple pages for long inventories
//TODO: Limit size of item names, etc

for(var i = firstPoint, j = 0; i < min(array_length_1d(files)-1, lastPoint); i++){
	if(files[i] != ""){
		if(i == selectedItem){
			draw_rectangle_color((4/36)*rx, (6/36)*ry+(j+1)*(2/36)*ry, (32/36)*rx, (7.2/36)*ry+(j+1)*(2/36)*ry, c_aqua, c_aqua, c_aqua, c_aqua, false);
		}else{
			draw_rectangle_color((4/36)*rx, (6/36)*ry+(j+1)*(2/36)*ry, (32/36)*rx, (7.2/36)*ry+(j+1)*(2/36)*ry, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
		}
		draw_text_transformed_color((4/36)*rx, (6/36)*ry+(j+1)*(2/36)*ry, files[i], (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
		j++;
	}
}