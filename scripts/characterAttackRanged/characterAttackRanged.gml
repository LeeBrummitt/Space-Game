var character1 = argument0;
var character2 = argument1;

var damage = (1/2)*calculateEffectiveSkill(character1, "dexterity");

if (character1 != undefined && character2 != undefined){
	character2.hp = character2.hp - damage;

	audio_play_sound(laser, 1, false);
	
	//increase skills, etc
	characterIncreaseSkillLevel(character1, "dexterity", (damage/power(character1.dexterity,2.5)));
}