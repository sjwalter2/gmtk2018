/// @description Insert description here


if(!dying){
	//horizontal collision
	if place_meeting(x+hspeed,y,obj_platform)
	{
		while !place_meeting(x+sign(hspeed),y,obj_platform)
	      {
	           x+=sign(hspeed);
	      }
		if place_meeting(x,y,obj_platform)
		{
			var inst = instance_place(x,y,obj_platform)
			if(x < inst.x)
				while(place_meeting(x,y,inst))
					x--
			else
				while(place_meeting(x,y,inst))
					x++
		}
		sprite_index = spr_vines_dying;
		hitSound();
		dying = 1;
		timeAlive = 0;
	} else {
		hspeed = hspeedBase * facing;
	}

	//collision with player
	if place_meeting(x+hspeed,y,obj_player) && instance_place(x+hspeed,y,obj_player) != creator
	{
		var inst = instance_place (x+hspeed,y,obj_player)
		while !place_meeting(x+sign(hspeed),y,obj_player)
	      {
	           x+=sign(hspeed);
	      }
		if place_meeting(x,y,obj_player)
		{
			if(x < inst.x)
				while(place_meeting(x,y,inst))
					x--
			else
				while(place_meeting(x,y,inst))
					x++
		}
		if(inst.id != creator && dying == 0)
		{
			with(inst)
			{
				stunned = 1;
				alarm_set(4,other.stunTime+alarm_get(4));
				image_blend = c_yellow
				if alarm_get(4) > maxStunTime
					alarm_set(4,maxStunTime);
					
			 
			}
			timeAlive = 0;
			dying = 1;
			hspeed = 0;
			hitSound();

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
	if timeAlive >= 20
		instance_destroy();
}