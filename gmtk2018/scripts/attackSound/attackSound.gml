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
}