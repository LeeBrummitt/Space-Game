function isCharacterInViewRange(argument0, argument1) {
	var charac1 = argument0;
	var charac2 = argument1;
	var success = true;

	var distance1 = point_distance(charac1.x, charac1.y, charac2.x, charac2.y);
	var distance2 = global.viewDistance * ((global.xSize + global.ySize)/2);

	if(distance1 > distance2){
		success = false;
	}

	return success;




}
