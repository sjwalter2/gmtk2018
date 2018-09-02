/// @description Insert description here
// You can write your code in this editor
if(other.id != creator)
{
with(other)
{
	if(!onFire)
		audio_play_sound(asset_get_index("snd_scream"+string(irandom(5))),0,0);
	image_blend = c_red
	onFire = 1;
	alarm_set(3,maxOnFireTime);
	
}
}