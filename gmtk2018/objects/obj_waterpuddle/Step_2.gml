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
		hspeed = -(hspeed*0.9);
	} else {
		hspeed = hspeed - sign(hspeed)*fric;	
	}

	//vertical collision
	vspeed += grav;
	if place_meeting(x,y+vspeed,obj_platform)
	{
		while !place_meeting(x,y+sign(vspeed)+sign(vspeed),obj_platform)
	    {
			y+=sign(vspeed);
	    }
		vspeed = 0;
	}


		timeAlive += 1;
		if timeAlive >= maxTimeAlive
		{
			dying = 1;
			timeAlive = 0;
		}
	image_xscale = image_xscale*1.02;
	image_yscale = image_yscale*0.97;
	freezeTime = freezeTime * 0.98;
} else {
	timeAlive += 1;
	if timeAlive >= 15
		instance_destroy();
}