var temp = undefined;
var success = false;

for(var i = 0; i < instance_number(genericCharacter) && success = false; i++){
	temp = instance_find(genericCharacter,i);
	if(temp.hostile == hostile && temp.hp < temp.hpMax && checkCharacterCanRanged(id, temp)){
		temp.hp = min(temp.hpMax, round(temp.hp+intelligence));
		audio_play_sound(heal, 1, false);
		success = true;
	}
}

return success;