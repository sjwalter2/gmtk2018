/// @description Check for 0 stock
if(endlevel == 0 && instance_number(obj_player) < 2)
{
	winner = instance_nearest(x,y,obj_player);
	alarm_set(2,120);
	endlevel = 1;
}
