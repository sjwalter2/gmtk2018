// @description setInvincible(myPlayer); -> pass a player object as an argument. this will set its invincibility frames.
player = argument0;
if(instance_exists(player)){
	with player
		{
			tempInvincibility = 1;
			alarm_set(5,invincibleFrames);
		}
}