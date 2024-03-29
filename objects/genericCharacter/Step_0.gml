/// @description handle character movenent, etc
// You can write your code in this editor

// fix inventory
removeEmptyInventoryItems();

if(turn == true){
	if(isPlayer == false && turn == true){
		// update max HP
		hpMax = calculateMaxHitPoints();
		ppMax = calculateMaxPsionicPoints();
		stmMax = calculateMaxStamina();
		NPCTurn();
	}
	else if (isPlayer == true && turn == true){
		// update max HP
		hpMax = calculateMaxHitPoints();
		ppMax = calculateMaxPsionicPoints();
		stmMax = calculateMaxStamina();
		getPlayerInput();
	}
	
	if(turn == false){
		//TODO: Change this later
		hp = min(hp + hpMax/100, hpMax);
		pp = min(pp + ppMax/100, hpMax);
		stm = min(stm + stmMax/100, hpMax);
	}
}

// change sprite if it doesn't match the one saved
// only do this if we needed to set this specially
// for saving shapeshifters, etc
// also helps for when player is a spaceship
if (sprite != noone && sprite != sprite_index && room != genericSpaceOverworld){
	show_debug_message("Changing sprite...");
	sprite_index = sprite;
} else if (room == genericSpaceOverworld){
	sprite_index = spaceship_sprite_1;
}
// make sure values isnt over max values
if (hp > hpMax){
	hp = hpMax;
}
if (stm > stmMax){
	stm = stmMax;
}
if (pp > ppMax){
	pp = ppMax;
}