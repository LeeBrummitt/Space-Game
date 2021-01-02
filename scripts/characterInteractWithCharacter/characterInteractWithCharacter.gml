function characterInteractWithCharacter(argument0, argument1) {
	var character1 = argument0;
	var character2 = argument1;

	if(checkIfFactionsAreHostile(character1, character2)){
		characterAttackMelee(argument0, argument1);
	}else if (argument0.isPlayer == true){
		//TALK TO NPC
	}


}
