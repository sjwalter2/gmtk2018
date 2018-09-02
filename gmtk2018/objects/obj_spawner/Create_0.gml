/// @description Insert description here
// You can write your code in this editor
alarm_set(0,1);
respawners = [];
pickup_spawn_min_time = 120;
pickup_spawn_max_time = 250;
alarm_set(1,irandom_range(pickup_spawn_min_time,pickup_spawn_max_time));
winner = "";
endlevel = 0;

if global.music
{
	var songToPlay = asset_get_index("mus" + string(irandom(2)));
	while audio_is_playing(songToPlay)
	{
		songToPlay = asset_get_index("mus" + string(irandom(2)));
	}
	audio_stop_all();
	audio_play_sound(songToPlay,0,1);
}