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
	knockBack(other, facing*hitEffect, -55, 0, pushTime, 0);
}