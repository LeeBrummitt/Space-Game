var charac = argument0;
var skill = argument1;
var ammount = argument2;

var skillCurrent = variable_instance_get(charac, skill)

// show_debug_message(string(ammount) + " " + string(skillCurrent));

if(variable_instance_exists(charac, skill)){
	variable_instance_set(charac, skill, ammount + skillCurrent);
}else{
	show_debug_message("ERROR: No skill found called " + skill);
}