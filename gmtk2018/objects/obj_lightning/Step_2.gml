/// @description Insert description here


if(!dying){
		//horizontal collision
		if place_meeting(x+hspeed,y,obj_platform)
		{
			hitSound();
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
			hspeed = 0;
			dying = 1;
			timeAlive = 0;
		} else {
			hspeed = hspeedBase * facing;
			image_xscale = facing
		}

		//vertical collision
		if place_meeting(x,y+vspeed,obj_platform)
		{
			if(sign(vspeed)==1 )
			{
				timeAlive = 0;
				dying = 1;
			}
			while !place_meeting(x,y+sign(vspeed),obj_platform)
		    {
				y+=sign(vspeed);
		    }
			vspeed = 0;
			hspeed = 0;
		}


		timeAlive += 1;
		if timeAlive >= maxTimeAlive
		{
			dying = 1;
			timeAlive = 0;
		}
} else {
	timeAlive += 1;
	if timeAlive >= 8
		instance_destroy();
}