newX = argument0;
newY = argument1;

var success = true;

if(position_meeting(newX, newY, genericCharacter) || position_meeting(newX, newY, genericWall)){
	success = false;
}

return success;