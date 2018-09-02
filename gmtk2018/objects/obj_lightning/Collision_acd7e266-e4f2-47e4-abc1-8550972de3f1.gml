/// @description Insert description here
// You can write your code in this editor
if( other.id != creator && dying == 0)
{
	with(other)
	{
		stunned = 1;
		image_blend = c_yellow
		alarm_set(4,other.stunTime+alarm_get(4));
	}
	timeAlive = 0;
	dying = 1;
	hspeed = 0;
	hitSound();
}