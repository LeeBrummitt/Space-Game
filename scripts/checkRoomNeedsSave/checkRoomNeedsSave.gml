// if you want a room to be saved, add it here

var roomToCheck = argument0;
var success = false;

if (
roomToCheck == playerShip
|| roomToCheck == genericSpaceOverworld
){
	success = true;
}

return success;