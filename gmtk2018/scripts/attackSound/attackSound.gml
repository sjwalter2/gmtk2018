switch(currentEle)
{
	case "fire":
	if(!audio_is_playing(snd_fire))
		audio_play_sound(snd_fire,0,0)	
	break;
	case "air":
	if(!audio_is_playing(snd_air))
		audio_play_sound(snd_air,0,0)	
	break;
	case "ice":
	if(!audio_is_playing(snd_icicle))
		audio_play_sound(snd_icicle,0,0)
	break;
	case "plant":
	if(!audio_is_playing(snd_plant))
		audio_play_sound(snd_plant,0,0)
	break;

}