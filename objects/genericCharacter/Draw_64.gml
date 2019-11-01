/// @description Insert description here
// You can write your code in this editor

if(isPlayer == true){
	display_set_gui_size(window_get_width(), window_get_height());
	draw_healthbar((2.9/9)*display_get_gui_width(), (5.7/6)*display_get_gui_height(), (3.9/9)*display_get_gui_width(), (5.9/6)*display_get_gui_height(), 100*(hp/hpMax), c_black, c_red, c_red, 0, true, true);
	draw_healthbar((4/9)*display_get_gui_width(), (5.7/6)*display_get_gui_height(), (5/9)*display_get_gui_width(), (5.9/6)*display_get_gui_height(), 100*(stm/stmMax), c_black, c_green, c_green, 0, true, true);
	draw_healthbar((5.1/9)*display_get_gui_width(), (5.7/6)*display_get_gui_height(), (6.1/9)*display_get_gui_width(), (5.9/6)*display_get_gui_height(), 100*(pp/ppMax), c_black, c_purple, c_purple, 0, true, true);
}