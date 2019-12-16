// should search a 1d array for an item. Returns1 if found, 0 if not.

var arr = argument0;
var item = argument1;

var success = undefined;

if(is_array(arr)){
	for(var i = 0; i < array_length_1d(arr); i++){
		if (arr[i] == item){
			success = true;	
		}
	}
}

return success;