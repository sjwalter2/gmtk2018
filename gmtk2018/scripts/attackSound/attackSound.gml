var soundToPlay;
switch(currentEle)
{
	case "fire":
	soundToPlay=(snd_fire);
	break;
	case "air":
	soundToPlay=(snd_air);
	break;
	case "ice":
	soundToPlay=(snd_icicle);
	break;
	case "plant":
	soundToPlay=(snd_plant);
	break;
	case "lightning":
	soundToPlay=(snd_lightning);
	break;
	case "earth":
	soundToPlay=(snd_earth);
	break;
	case "water":
	soundToPlay=(snd_water);
	break;
	case "steam":
	soundToPlay=(snd_steamBounce);
	break;
	case "sand":
	soundToPlay=(snd_sandWhirl);
	break;
	default:
	soundToPlay=0;
}

	audio_stop_sound(soundToPlay);
	audio_play_sound(soundToPlay,0,0)	
