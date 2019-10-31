character1 = argument0;
character2 = argument1;

argument1.hp = argument1.hp - argument0.strength;
show_debug_message("New HP:");
show_debug_message(argument1.hp);

audio_play_sound(hit, 1, false);