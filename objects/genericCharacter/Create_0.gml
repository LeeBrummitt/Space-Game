/// @description create inventory, health, etc
// You can write your code in this editor

randomize()
sex = choose("M", "F");
if(sex == "M"){
	characterName = choose("Bob", "Dave", "Bill", "James", "Stephen", "Duke", "Ben");
}else if(sex == "F"){
	characterName = choose("Lara", "Sarah", "Jessie", "Hannah");
}

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

// name, number, weight, value, special
inventory = ds_grid_create(0,5);
equipment = ds_grid_create(0,5);

