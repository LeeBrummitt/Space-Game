function canCharacterMoveTo(argument0, argument1) {
	var newX = argument0;
	var newY = argument1;

	var success = true;

	if(position_meeting(newX, newY, genericCharacter) || position_meeting(newX, newY, genericWall)){
		success = false;
	}

	return success;


}
