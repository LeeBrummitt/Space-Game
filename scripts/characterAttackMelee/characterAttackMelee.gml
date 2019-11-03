character1 = argument0;
character2 = argument1;

argument1.hp = argument1.hp - argument0.strength;

audio_play_sound(hit, 1, false);