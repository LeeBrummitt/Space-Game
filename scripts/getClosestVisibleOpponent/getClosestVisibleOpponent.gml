var temp = undefined;
var temp2 = undefined;

for(var i = 0; i < instance_number(genericCharacter); i++){
	temp = instance_find(genericCharacter,i);
	if(checkIfFactionsAreHostile(temp, id) 
	&& collision_line(x, y, temp.x, temp.y, genericWall, false, false) == noone
	&& isCharacterInViewRange(id, temp)){
		if(temp2 == undefined || point_distance(x, y, temp.x, temp.y) < point_distance(x, y, temp2.x, temp2.y)){
			temp2 = temp;
		}
	}
}

return temp2;