/// @description Insert description here
// You can write your code in this editor

var rx = display_get_gui_width();
var ry = display_get_gui_height();

if(isPlayer == true){
	//health, stamina, psionic power
	draw_healthbar((2.9/9)*rx, (5.7/6)*ry, (3.9/9)*rx, (5.9/6)*ry, 100*(hp/hpMax), c_black, c_red, c_red, 0, true, true);
	draw_healthbar((4/9)*rx, (5.7/6)*ry, (5/9)*rx, (5.9/6)*ry, 100*(stm/stmMax), c_black, c_green, c_green, 0, true, true);
	draw_healthbar((5.1/9)*rx, (5.7/6)*ry, (6.1/9)*rx, (5.9/6)*ry, 100*(pp/ppMax), c_black, c_purple, c_purple, 0, true, true);
	
	//time
	var hour = string(global.hour);
	var minute = string(global.minute);
	if(global.hour < 10){
		hour = "0" + hour;
	}
	if(global.minute < 10){
		minute = "0" + minute;
	}
	var time = hour + ":" + minute;
	draw_rectangle_color((30/36)*rx, (1/36)*ry, (33/36)*rx, (2.2/36)*ry, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
	draw_text_transformed_color((30.2/36)*rx, (1/36)*ry, time, (0.5/1000)*rx, (0.5/1000)*ry, 0, c_black, c_black, c_black, c_black, 1);
	
}