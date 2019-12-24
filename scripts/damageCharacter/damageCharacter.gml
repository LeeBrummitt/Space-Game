var charac = argument0;
var damage = argument1;

var protection = calculateEffectiveSkill(charac, "protection");
//TODO Factor in armor skill when added

//calculate damage done
damage = max(1, damage-protection);

//damage character
charac.hp = charac.hp - damage;

//increase constitution
characterIncreaseSkillLevel(charac, "constitution", (damage/power(charac.constitution,2.5)));

show_debug_message(damage);