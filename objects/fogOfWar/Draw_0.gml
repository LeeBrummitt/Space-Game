/// @description Insert description here
// You can write your code in this editor

draw_self();
switch state{
	case 0:
		image_alpha = 1;
	break;
	case 1:
		image_alpha = .5;
	break;
	case 2:
		image_alpha = 0;
	break;
}