var charac = argument0;
var skill = argument1;
var ammount = argument2;

var skillOriginal = variable_instance_get(charac, skill)
var skillEfficiency;
// show_debug_message(string(ammount) + " " + string(skillOriginal));

if(variable_instance_exists(charac, skill) && variable_instance_get(charac, skill) > 0){
	if(!variable_instance_exists(charac, skill+"Efficiency")){
		variable_instance_set(charac, skill+"Efficiency", 50);
		show_debug_message("ERROR: Efficientcy for " + skill + " not set!");
	}
	skillEfficiency = variable_instance_get(charac, skill+"Efficiency");
	variable_instance_set(charac, skill, (skillEfficiency/100)*ammount + skillOriginal);
	
	//TODO: TEST THIS!!!!!
	if(floor(variable_instance_get(charac, skill)) - floor(skillOriginal) >= 1){
		variable_instance_set(charac, skill+"Efficiency", skillEfficiency*.8);
	}
}else{
	show_debug_message("ERROR: No skill found called " + skill + " or no points in skill.");
}