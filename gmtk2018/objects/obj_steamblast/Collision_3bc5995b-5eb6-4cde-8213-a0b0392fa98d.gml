/// @description Insert description here
// You can write your code in this editor
hitSound()
if blowingup == 0
{
		if instance_exists(creator)
		{
			if other.id != creator{
				blowingup = 1;
				sprite_index = spr_steamparticle;
				alarm_set(1,15);
			}
		} else {
			blowingup = 1;
			sprite_index = spr_steamparticle;
			alarm_set(1,15);
		}
} else {
	other.hspeed += (facing*hitEffect);
	other.fric = 0;
	other.vspeed = other.vspeed - 15;
	other.grabLeft = 0
	other.grabRight = 0
	with other{
		alarm_set(1,other.pushTime+alarm_get(1))	
	}
}