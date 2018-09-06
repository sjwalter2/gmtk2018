/// @description Insert description here
var roomToGoTo = ds_list_find_value(global.levelList, irandom_range(0,global.numberOfLevels));
while roomToGoTo == room
	roomToGoTo = ds_list_find_value(global.levelList, irandom_range(0,global.numberOfLevels));
room_goto(roomToGoTo);