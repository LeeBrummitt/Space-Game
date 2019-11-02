var stringToUse = argument0;
var offset = argument1;
var rx = display_get_gui_width();
var ry = display_get_gui_height();

draw_rectangle_color((13/36)*rx, (12/36)*ry+offset*(2/36)*ry, (23/36)*rx, (13.2/36)*ry+offset*(2/36)*ry, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
draw_text_transformed_color((13/36)*rx, (12/36)*ry+offset*(2/36)*ry, stringToUse, (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
