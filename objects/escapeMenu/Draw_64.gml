/// @description Insert description here
// You can write your code in this editor

//camera_get_view_x(view_camera[0])

var rx = display_get_gui_width();
var ry = display_get_gui_height();

draw_rectangle_color((2/6)*rx, (1/6)*ry, (4/6)*rx, (5/6)*ry, c_gray, c_gray, c_gray, c_gray, false);
draw_text_transformed_color((15/36)*rx, (6/36)*ry, "PAUSED", (1/1000)*rx, (1/1000)*ry, 0, c_red, c_red, c_red, c_red, 1);

draw_rectangle_color((13/36)*rx, (12/36)*ry, (23/36)*rx, (13.2/36)*ry, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
draw_text_transformed_color((13/36)*rx, (12/36)*ry, "[ESC] Return to game", (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);




