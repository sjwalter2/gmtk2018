/// @description Insert description here
// You can write your code in this editor
if(other.id != creator)
{
	hitSound();
	if(creator.currentEle = "fire")
	{
	currentEle = "fire";
	with(other)
		{
			if(!onFire)
				audio_play_sound(asset_get_index("snd_scream"+string(irandom(5))),0,0);
			image_blend = c_red
			onFire = 1;
			alarm_set(3,maxOnFireTime);
		}
	}
	with(other)
	{
		stunned = 1
		alarm_set(4,20)
		if(image_blend = c_white)
			image_blend = c_yellow
		vspeed = -20
		if(x > other.creator.x)
			hspeed = 50
		else
			hspeed = -50
	}
}