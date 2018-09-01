switch(currentEle)
{
	case "fire":
	if(!audio_is_playing(snd_fireHit))
		audio_play_sound(snd_fireHit,0,0)	
	break;
	case "air":
	if(!audio_is_playing(snd_airHit))
		audio_play_sound(snd_airHit,0,0)	
	break;
	case "ice":
	if(!audio_is_playing(snd_icicleHit))
		audio_play_sound(snd_icicleHit,0,0)
	break;
	case "plant":
	if(!audio_is_playing(snd_plantHit))
		audio_play_sound(snd_plantHit,0,0)
	break;

}