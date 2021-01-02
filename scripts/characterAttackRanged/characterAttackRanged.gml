function characterAttackRanged(argument0, argument1) {
	var character1 = argument0;
	var character2 = argument1;

	var damage = calculateEffectiveSkill(character1, "dexterity");

	damage = damage + calculateWeaponDamage(character1, "ranged");
	damage = damage + character1.ranged
	damage = damage + character1.guns

	if (character1 != undefined && character2 != undefined){
		damageCharacter(character2, damage);

		audio_play_sound(laser, 1, false);
	
		//increase skills, etc
		characterIncreaseSkillLevel(character1, "dexterity", (damage/power(character1.dexterity,2.5)));
		characterIncreaseSkillLevel(character1, "ranged", (damage/power(character1.ranged,2.5)));
		characterIncreaseSkillLevel(character1, "guns", (damage/power(character1.guns,2.5)));
	}


}
