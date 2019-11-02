/// @description Insert description here
// You can write your code in this editor

var rx = display_get_gui_width();
var ry = display_get_gui_height();

draw_rectangle_color((2/6)*rx, (1/6)*ry, (4/6)*rx, (5/6)*ry, c_gray, c_gray, c_gray, c_gray, false);
draw_text_transformed_color((13/36)*rx, (6/36)*ry, "INVENTORY", (1/1000)*rx, (1/1000)*ry, 0, c_red, c_red, c_red, c_red, 1);
