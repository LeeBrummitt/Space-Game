/// @description Insert description here
// You can write your code in this editor

if(inputCooldown <= 0){
	switch(keyboard_key){
		case vk_escape:	
		case ord("I"):
			instance_destroy();
		break;
	}
}else{
	inputCooldown = inputCooldown - 1;
}