/// @description Insert description here
// You can write your code in this editor

var rx = display_get_gui_width();
var ry = display_get_gui_height();

draw_rectangle_color((10/24)*rx, (11/24)*ry, (14/24)*rx, (13/24)*ry, c_gray, c_gray, c_gray, c_gray, false);

draw_text_transformed_color((17.5/36)*rx - string_length(numberString)*(1/100)*rx, (17.2/36)*ry, numberString + "/" + string(ds_grid_get(charac.inventory, itemToDrop, 1)), (.7/1000)*rx, (.7/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
