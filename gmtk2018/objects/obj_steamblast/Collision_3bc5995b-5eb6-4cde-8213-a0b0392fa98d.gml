/// @description Insert description here
// You can write your code in this editor
hitSound()
if blowingup == 0
{
		if instance_exists(creator)
		{
			if other.id != creator{
				other.hspeed += (facing*hitEffect*0.8);
				other.fric = 0;
				other.grabLeft = 0
				other.grabRight = 0
				with other{
					alarm_set(1,other.pushTime+alarm_get(1))	
				}
				blowingup = 1;
				sprite_index = spr_steamparticle;
				alarm_set(1,15);
			}
		} else {
			other.hspeed += (facing*hitEffect*0.8);
			other.fric = 0;
			other.grabLeft = 0
			other.grabRight = 0
			with other{
				alarm_set(1,other.pushTime+alarm_get(1))	
			}
			blowingup = 1;
			sprite_index = spr_steamparticle;
			alarm_set(1,15);
		}
} else {
	other.hspeed += (facing*hitEffect);
	other.fric = 0;
	other.vspeed = other.vspeed - 10;
	other.grabLeft = 0
	other.grabRight = 0
	with other{
		alarm_set(1,other.pushTime+alarm_get(1))	
	}
}