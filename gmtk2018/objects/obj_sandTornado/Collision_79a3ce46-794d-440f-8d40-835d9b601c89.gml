/// @description Insert description here
// You can write your code in this editor
if(image_yscale < 1)
{
	with(other)
	{
	stunned = 1
	alarm_set(4,50)
	vspeed = -100;
	hspeed = hspeed + facing*25;
	}
	hitSound();
} else {
	with(other)
	{
	stunned = 1
	alarm_set(4,20)
	image_blend = c_yellow
	vspeed = -30;	
	}
}