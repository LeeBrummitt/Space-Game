/// @description Insert description here
// You can write your code in this editor

rx = display_get_gui_width();
ry = display_get_gui_height();
r = min(display_get_gui_width(), display_get_gui_height());

//bottom row
draw_sprite_pos(middleButton, -1, (0/100)*ry, (80/100)*ry, (20/100)*ry, (80/100)*ry,(20/100)*ry, (100/100)*ry, (0/100)*ry, (100/100)*ry, 1);
draw_sprite_pos(down_arrow, -1, (20/100)*ry, (80/100)*ry, (40/100)*ry, (80/100)*ry,(40/100)*ry, (100/100)*ry, (20/100)*ry, (100/100)*ry, 1);
draw_sprite_pos(middleButton, -1, (40/100)*ry, (80/100)*ry, (60/100)*ry, (80/100)*ry,(60/100)*ry, (100/100)*ry, (40/100)*ry, (100/100)*ry, 1);

//middle row
draw_sprite_pos(left_arrow, -1, (0/100)*ry, (60/100)*ry, (20/100)*ry, (60/100)*ry,(20/100)*ry, (80/100)*ry, (0/100)*ry, (80/100)*ry, 1);
draw_sprite_pos(middleButton, -1, (20/100)*ry, (60/100)*ry, (40/100)*ry, (60/100)*ry,(40/100)*ry, (80/100)*ry, (20/100)*ry, (80/100)*ry, 1);
draw_sprite_pos(right_arrow, -1, (40/100)*ry, (60/100)*ry, (60/100)*ry, (60/100)*ry,(60/100)*ry, (80/100)*ry, (40/100)*ry, (80/100)*ry, 1);

//top row
draw_sprite_pos(middleButton, -1, (0/100)*ry, (40/100)*ry, (20/100)*ry, (40/100)*ry,(20/100)*ry, (60/100)*ry, (0/100)*ry, (60/100)*ry, 1);
draw_sprite_pos(up_arrow, -1, (20/100)*ry, (40/100)*ry, (40/100)*ry, (40/100)*ry,(40/100)*ry, (60/100)*ry, (20/100)*ry, (60/100)*ry, 1);
draw_sprite_pos(middleButton, -1, (40/100)*ry, (40/100)*ry, (60/100)*ry, (40/100)*ry,(60/100)*ry, (60/100)*ry, (40/100)*ry, (60/100)*ry, 1);

//top right button
draw_sprite_pos(middleButton, -1, (0/100)*ry, (0/100)*ry, (20/100)*ry, (0/100)*ry,(20/100)*ry, (20/100)*ry, (0/100)*ry, (20/100)*ry, 1);