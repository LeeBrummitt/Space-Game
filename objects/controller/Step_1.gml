/// @description Insert description here
// You can write your code in this editor

if(global.takingTurn == false){
	var i = 0;
	var charac;
	while(i < instance_number(genericCharacter) && global.takingTurn == false){
		charac = instance_find(genericCharacter,i);
		if (!variable_instance_exists(id, "turnTakers") || turnTakers == undefined || !arraySearch1D(turnTakers, charac)){
			if(!variable_instance_exists(id, "turnTakers") || turnTakers == undefined){
				turnTakers[0] = charac;
				turnTakers[array_length_1d(turnTakers)-1].turn = true;
			}
			else{
				turnTakers[array_length_1d(turnTakers)] = charac;
				turnTakers[array_length_1d(turnTakers)-1].turn = true;
			}
			global.takingTurn = true;
		}
		i++;
	}
	if (i >= instance_number(genericCharacter)){
		global.turn++;
		turnTakers = undefined;
	}
}