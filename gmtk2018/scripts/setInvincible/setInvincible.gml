// @description setInvincible(myPlayer); -> pass a player object as an argument. this will set its invincibility frames. pass a second argument for number of frames. passing 0 uses the default
var player = argument0;
var numberOfFrames = argument1;
if numberOfFrames = 0
	numberOfFrames = player.invincibleFrames; // if we pass 0 frames, we use the player default. most attacks should use this.
if(instance_exists(player)){
	with player
		{
			tempInvincibility = 1;
			alarm_set(5,numberOfFrames);
			currentAlpha = invincibleAlpha;
		}
}