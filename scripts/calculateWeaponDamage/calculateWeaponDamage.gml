function calculateWeaponDamage(argument0, argument1) {
	var charac = argument0;
	var skillType = argument1;

	var diceMax = 0;
	var diceCount = 0;
	var damage  = 0;

	diceMax = calculateEffectiveSkill(charac, skillType + "DiceMax");
	diceCount = calculateEffectiveSkill(charac, skillType + "DiceCount");
	for(var i = 0; i < diceCount; i++){
		randomize();
		damage = damage + random_range(1, diceMax);
	}

	return damage;


}
