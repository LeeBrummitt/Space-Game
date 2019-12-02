/// @description Insert description here
// You can write your code in this editor

previousMenu = escapeMenu;
previousMenuScript = setMainMenu;

inputCooldown = global.cooldownTime;

selectedItem = 0;
itemsToShow = 12;

firstPoint = selectedItem;
lastPoint = itemsToShow;

characters[0] = file_find_first(working_directory + "Savegames\\*", fa_directory);
var i = 0;
while(characters[i] != ""){
	i++;
	characters[i] = file_find_next();
}