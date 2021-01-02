function characterAttackMelee(argument0, argument1) {
	var character1 = argument0;
	var character2 = argument1;

	var damage = calculateEffectiveSkill(character1, "strength");

	damage = damage + calculateWeaponDamage(character1, "melee");
	damage = damage + character1.melee

	if(isEquimentTypeEquiped(character1, genericMeleeWeapon)){
		damage = damage + character1.meleeWeapons;
		characterIncreaseSkillLevel(character1, "meleeWeapons", (damage/power(character1.meleeWeapons,2.5)));
		characterIncreaseSkillLevel(character1, "strength", (damage/power(character1.strength,2.5)));
	}else{
		damage = damage + 1.3*character1.unarmed;
		characterIncreaseSkillLevel(character1, "unarmed", (damage/power(character1.unarmed,2.5)));
		characterIncreaseSkillLevel(character1, "dexterity", (damage/power(character1.dexterity,2.5)));
	}
	characterIncreaseSkillLevel(character1, "melee", (damage/power(character1.melee,2.5)));

	damageCharacter(character2, damage);

	audio_play_sound(hit, 1, false);


}
