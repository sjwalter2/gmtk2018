/// @description Insert description here
// You can write your code in this editor

		//vertical collision
		vspeed += grav;
		if vspeed > maxfallspeed
			vspeed = maxfallspeed
		if place_meeting(x,y+vspeed,obj_platform)
		{
		while !place_meeting(x,y+sign(vspeed),obj_platform)
		    {
				y+=sign(vspeed);
		    }
		vspeed = 0;
		hspeed = 0;
		}

timeAlive += 1;
if timeAlive > maxTimeAlive
	instance_destroy()