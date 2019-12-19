var temp = undefined;
var success = false;

var healAmmount = 0.8 * calculateEffectiveSkill(id, "intelligence");
var ppCost = 0.4 * calculateEffectiveSkill(id, "intelligence");


for(var i = 0; i < instance_number(genericCharacter) && success = false; i++){
	temp = instance_find(genericCharacter,i);
	if(!checkIfFactionsAreHostile(id, temp) 
	&& id.pp-ppCost > 0
	&& temp.hp < temp.hpMax && checkCharacterCanRanged(id, temp)
	&& isCharacterInViewRange(id, temp)){
		temp.hp = min(temp.hpMax, round(temp.hp+healAmmount));
		id.pp = id.pp - ppCost;
		audio_play_sound(heal, 1, false);
		success = true;
		
		//increase skills, etc
		characterIncreaseSkillLevel(id, "intelligence", (healAmmount/power(id.intelligence,2.5)));
	}
}

return success;