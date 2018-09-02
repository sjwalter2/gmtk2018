/// @description Insert description here
with(other)
	{
		image_blend = c_blue
		fric = 0;
		alarm_set(1,other.freezeTime+alarm_get(1));
		if alarm_get(1) > maxSlipTime
			alarm_set(1,maxSlipTime)
	}
