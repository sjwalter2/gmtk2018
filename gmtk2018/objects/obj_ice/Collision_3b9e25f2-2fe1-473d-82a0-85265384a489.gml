/// @description Insert description here
// You can write your code in this editor
if(landed)
{
	with(other)
	{

		fric = 0;
		alarm_set(1,other.freezeTime+alarm_get(1));
		if alarm_get(1) > maxSlipTime
			alarm_set(1,maxSlipTime)
	}
} else if (!landed && other.id != creator)
{
	while !place_meeting(x+sign(hspeed),y,other)
      {
           x+=sign(hspeed);
      }
	with(other)
	{
		fric = 0;
		alarm_set(1,other.freezeTime+alarm_get(1));
		if alarm_get(1) > maxSlipTime
			alarm_set(1,maxSlipTime)
	}
//	if place_meeting(x,y,other)
//	{
//		if(x < other.x)
//			while(place_meeting(x,y,other))
//				x--
//		else
//			while(place_meeting(x,y,other))
//				x++
//	}
	hspeed = 0;
} 