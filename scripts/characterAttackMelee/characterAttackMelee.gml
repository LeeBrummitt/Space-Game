var character1 = argument0;
var character2 = argument1;

var damage = calculateEffectiveSkill(character1, "strength");

character2.hp = character2.hp - damage;

//increase skills, etc
characterIncreaseSkillLevel(character1, "strength", (damage/power(character1.strength,2.5)));

audio_play_sound(hit, 1, false);

show_debug_message(damage);