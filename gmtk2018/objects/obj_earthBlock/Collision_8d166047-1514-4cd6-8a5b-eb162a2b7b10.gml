/// @description Insert description here
// You can write your code in this editor
if(!charging && image_yscale < 1)
{
	with(other)
	{
	stunned = 1
	alarm_set(4,50)
	image_blend = c_yellow
	vspeed = -100;	
	}
}