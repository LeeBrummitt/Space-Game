/// @description Insert description here
// You can write your code in this editor

//handle death and being over max HP
if (hp <= 0){
	characterDie();
}else if (hp > hpMax){
	hp = hpMax;
}

//fix character position if necessary
x = round(x - (x%global.xSize));
y = round(y - (y%global.xSize));