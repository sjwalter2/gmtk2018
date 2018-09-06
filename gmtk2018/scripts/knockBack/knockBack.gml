/// @description knockBack(playerobject, hspeed modifier, vspeed modifier, stunTime, slipTime, fireTime)
var player = argument0;
if(instance_exists(player)){
	var hspeedMod = argument1;
	var vspeedMod = argument2;
	var stunTimeMod = argument3;
	var slipTimeMod = argument4;
	var fireTimeMod = argument5;

	if !player.tempInvincibility
	{
		player.hspeed += hspeedMod;
		player.vspeed += vspeedMod;
		if(slipTimeMod > 0){
			with player{
			fric = 0;
			alarm_set(1,slipTimeMod);
			if alarm_get(1) > maxSlipTime
				alarm_set(1,maxSlipTime);
			}
		}		
		player.grabLeft = 0;
		player.grabRight = 0;
		if(stunTimeMod > 0){
			with player {
				stunned = 1;
				alarm_set(4,stunTimeMod+alarm_get(1));
				if alarm_get(4) > maxStunTime
					alarm_set(4,maxStunTime);
			}
		}
		if(fireTimeMod > 0){
			with player {
				if !onFire
				{
					audio_play_sound(asset_get_index("snd_scream"+string(irandom(5))),0,0);
					onFire = 1;
				}
				alarm_set(3,fireTimeMod+alarm_get(3));
				if alarm_get(3) > maxOnFireTime
					alarm_set(3,maxOnFireTime);
			}
		}
		setInvincible(player,0);
	}
}


	//Guide on how to make unique effects that are still affected by invincibility/invincibility frames:
	//First check for invincibility:
	//if !player.tempInvincibility
	//If that passes, do your thing!
	//After the effect code, add:
	//setInvincible(player);
