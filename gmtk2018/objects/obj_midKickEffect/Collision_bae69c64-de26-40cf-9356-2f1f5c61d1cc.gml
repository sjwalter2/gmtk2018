/// @description Insert description here
// You can write your code in this editor
if(other.id != creator)
{
	hitSound();
	if(creator.currentEle = "fire")
	{
	with(other)
		{
			onFire = 1;
			alarm_set(3,8+alarm_get(3));
		}
	}
	with(other)
	{
		stunned = 1
		alarm_set(4,3)
		vspeed = -20
		if(x > other.creator.x)
			hspeed = 50
		else
			hspeed = -50
	}
}