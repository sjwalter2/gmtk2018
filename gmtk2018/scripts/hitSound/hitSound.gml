switch(creator.currentEle)
{
	case "fire":
	if(!audio_is_playing(snd_fireHit))
		audio_play_sound(snd_fireHit,0,0)	
	break;
	case "air":
	if(!audio_is_playing(snd_airHit))
		audio_play_sound(snd_airHit,0,0)	
	break;
}