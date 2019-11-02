/// @description create inventory, health, etc
// You can write your code in this editor

hpMax = calculateMaxHitPoints();
ppMax = calculateMaxPsionicPoints();
stmMax = calculateMaxStamina();
hp = hpMax;
pp = ppMax;
stm = stmMax;
keyCooldown = 0;

//set global player name if you are player
if(!variable_global_exists("playerName") && isPlayer == true){
	global.playerName = characterName;
}

// name, number, weight, value, damage, armor, material, special
inventory = ds_grid_create(1,8);
equipment = ds_grid_create(1,8);

