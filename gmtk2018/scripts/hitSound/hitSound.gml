var soundToPlay;
switch(currentEle)
{
	case "fire":
	soundToPlay=(snd_fireHit);
	break;
	case "air":
	soundToPlay=(snd_airHit);
	break;
	case "ice":
	soundToPlay=(snd_icicleHit);
	break;
	case "plant":
	soundToPlay=(snd_plantHit);
	break;
	case "lightning":
	soundToPlay=(snd_lightningHit);
	break;
	case "earth":
	soundToPlay=(snd_earthHit);
	break;
	case "water":
	soundToPlay=(snd_waterHit1);
	break;
	case "steam":
	soundToPlay=(snd_steamBlow);
	break;
	case "sand":
	soundToPlay=(snd_sandBurst);
	default:
	soundToPlay=0;
}
	audio_stop_sound(soundToPlay);
	audio_play_sound(soundToPlay,0,0)	
