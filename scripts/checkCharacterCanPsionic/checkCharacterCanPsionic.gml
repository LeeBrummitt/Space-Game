function checkCharacterCanPsionic(argument0, argument1) {
	var charac1 = argument0;
	var charac2 = argument1;
	var valid = false;

	if (charac1 != undefined && charac2 != undefined 
	&& collision_line(charac1.x, charac1.y, charac2.x, charac2.y, genericWall, false, false) == noone){
		valid = true;
	}


	return valid;


}
