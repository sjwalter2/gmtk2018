/// @description Insert description here


if(!dying){

	//collision with player
	if place_meeting(x+hspeed,y,obj_player) && instance_place(x+hspeed,y,obj_player) != creator
	{
		var inst = instance_place (x+hspeed,y,obj_player)
//		while !place_meeting(x+sign(hspeed),y,obj_player)
//	      {
//	           x+=sign(hspeed);
//	      }
//		if place_meeting(x,y,obj_player)
//		{
//			if(x < inst.x)
//				while(place_meeting(x,y,inst))
//					x--
//			else
//				while(place_meeting(x,y,inst))
//					x++
//		}
		inst.hspeed += (facing*hitEffect);
		with inst{
			alarm_set(1,other.pushTime+alarm_get(1))	
		}

	} else {
		hspeed = hspeedBase * facing;
	}

	timeAlive += 1;
	if timeAlive >= maxTimeAlive
	{
		dying = 1;
		timeAlive = 0;
	}
} else {
	hspeed=0;
	timeAlive += 1;
	if timeAlive >= 15
		instance_destroy();
}