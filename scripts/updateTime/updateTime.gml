if (global.minute >= 60){
	global.minute = 0;
	global.hour++;
	
}
if (global.hour >= 24){
	global.hour = 0;
	global.day++;
}