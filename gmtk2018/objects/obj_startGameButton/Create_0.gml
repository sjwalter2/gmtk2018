/// @description Insert description here
// You can write your code in this editor
if !audio_is_playing(mus0)
{
	audio_stop_all();
	audio_play_sound(mus0,0,1);
}