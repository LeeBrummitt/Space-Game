/// @description Insert description here
// You can write your code in this editor

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if(releaseMe != undefined){
	keyboard_key_release(releaseMe);
	releaseMe = undefined;
}

if(!device_mouse_check_button(0, mb_left) && !device_mouse_check_button(0, mb_right)){
	
}else{
	//virtual numpad
	if(mx > (0/100)*ry && mx < (20/100)*ry && my > (80/100)*ry && my < (100/100)*ry){
		releaseMe = vk_numpad1
	}else if(mx > (20/100)*ry && mx < (40/100)*ry && my > (80/100)*ry && my < (100/100)*ry){
		releaseMe = vk_numpad2
	}else if(mx > (40/100)*ry && mx < (60/100)*ry && my > (80/100)*ry && my < (100/100)*ry){
		releaseMe = vk_numpad3
	}if(mx > (0/100)*ry && mx < (20/100)*ry && my > (60/100)*ry && my < (80/100)*ry){
		releaseMe = vk_numpad4
	}else if(mx > (20/100)*ry && mx < (40/100)*ry && my > (60/100)*ry && my < (80/100)*ry){
		releaseMe = vk_numpad5
	}else if(mx > (40/100)*ry && mx < (60/100)*ry && my > (60/100)*ry && my < (80/100)*ry){
		releaseMe = vk_numpad6
	}if(mx > (0/100)*ry && mx < (20/100)*ry && my > (40/100)*ry && my < (60/100)*ry){
		releaseMe = vk_numpad7
	}else if(mx > (20/100)*ry && mx < (40/100)*ry && my > (40/100)*ry && my < (60/100)*ry){
		releaseMe = vk_numpad8
	}else if(mx > (40/100)*ry && mx < (60/100)*ry && my > (40/100)*ry && my < (60/100)*ry){
		releaseMe = vk_numpad9
	}
	
	//top left button
	else if(mx > (0/100)*ry && mx < (20/100)*ry && my > (0/100)*ry && my < (20/100)*ry && global.keyCooldown <= 0){
		global.keyCooldown = global.cooldownTime
		keyboard_virtual_show(kbv_type_default, kbv_returnkey_default, kbv_autocapitalize_none, false);
		show_debug_message("virtual keyboard enabled");
	}
	
	if(releaseMe != undefined){
		keyboard_key_press(releaseMe);
	}
	
	if(keyboard_check(ord("N")))
	show_debug_message("keyboard button: " + string(releaseMe));
}