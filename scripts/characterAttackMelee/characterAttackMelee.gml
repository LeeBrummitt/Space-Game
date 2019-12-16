var character1 = argument0;
var character2 = argument1;

var damage = character1.strength;

character2.hp = character2.hp - damage;

characterIncreaseSkillLevel(character1, "strength", (damage/power(character1.strength,2.5)));

audio_play_sound(hit, 1, false);