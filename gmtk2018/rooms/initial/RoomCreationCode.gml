global.music = 1;
global.playerCounter = 2;
global.stock = 3;
global.levelList = ds_list_create();
var i = 0;
while room_exists(i+2){
	ds_list_add(global.levelList, i+2);
	i += 1;
}
global.numberOfLevels = i-1;
room_goto_next();