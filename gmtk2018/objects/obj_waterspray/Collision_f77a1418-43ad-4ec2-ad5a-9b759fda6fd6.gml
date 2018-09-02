/// @description Insert description here
	hitSound()
	other.hspeed += (facing*hitEffect);
	other.fric = 0;
	other.grabLeft = 0
	other.grabRight = 0
	with other{
			alarm_set(1,other.pushTime+alarm_get(1))	
	}
