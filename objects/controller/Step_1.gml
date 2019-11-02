/// @description Insert description here
// You can write your code in this editor

var charac;

while(global.takingTurn == false && global.turn < 2000){
	var i = 0;
	while(i < instance_number(genericCharacter) && global.takingTurn == false){
		charac = instance_find(genericCharacter,i);
		if (!variable_instance_exists(id, "turnTakers") || turnTakers == undefined || !arraySearch1D(turnTakers, charac)){
			if(round(charac.quickness) >= 1000 || global.turn%(100-round(charac.quickness/10)) == 0 ){
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
		}
		i++;
	}
	// CHECK THIS LATER, IT MAY NOT DO TIME CORRECTLY
	if (i >= instance_number(genericCharacter)){
		global.turn++;
		turnTakers = undefined;
		endOfTurnUpdate();
	}
}

if (global.turn >= 2000){
	global.turn = 0;
	global.minute++;
	updateTime();
}

display_set_gui_size(window_get_width(), window_get_height());