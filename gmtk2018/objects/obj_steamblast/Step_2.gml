/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 645B8764
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)if blowingup {$(13_10)	hspeed = 0;$(13_10)	vspeed = 0;$(13_10)	image_xscale = image_xscale * 1.15;$(13_10)	image_yscale = image_yscale * 1.15;$(13_10)} else if(!dying){$(13_10)		//horizontal collision$(13_10)	if place_meeting(x+hspeed,y,obj_platform)$(13_10)	{$(13_10)		while !place_meeting(x+sign(hspeed),y,obj_platform)$(13_10)	      {$(13_10)	           x+=sign(hspeed);$(13_10)	      }$(13_10)		if place_meeting(x,y,obj_platform)$(13_10)		{$(13_10)			var inst = instance_place(x,y,obj_platform)$(13_10)			if(x < inst.x)$(13_10)				while(place_meeting(x,y,inst))$(13_10)					x--$(13_10)			else$(13_10)				while(place_meeting(x,y,inst))$(13_10)					x++$(13_10)		}$(13_10)		attackSound();$(13_10)		hspeed = - (hspeed * 0.8);$(13_10)	}$(13_10)$(13_10)	//vertical collision$(13_10)	vspeed += grav;$(13_10)	if place_meeting(x,y+vspeed,obj_platform)$(13_10)	{$(13_10)		if(sign(vspeed)==1 )$(13_10)		{$(13_10)			attackSound();$(13_10)		}$(13_10)		while !place_meeting(x,y+sign(vspeed),obj_platform)$(13_10)	    {$(13_10)			y+=sign(vspeed);$(13_10)	    }$(13_10)		vspeed = - (vspeed * 0.7);$(13_10)		if abs(vspeed) < 5{$(13_10)			vspeed = sign(vspeed) * 8;$(13_10)		}$(13_10)	}$(13_10)$(13_10)	timeAlive += 1;$(13_10)	if timeAlive >= maxTimeAlive$(13_10)	{$(13_10)		dying = 1;$(13_10)		timeAlive = 0;$(13_10)	}$(13_10)$(13_10)} else {$(13_10)	timeAlive += 1;$(13_10)	if timeAlive >= 15$(13_10)		instance_destroy();$(13_10)}"
/// @description Insert description here
// You can write your code in this editor
if blowingup {
	hspeed = 0;
	vspeed = 0;
	image_xscale = image_xscale * 1.15;
	image_yscale = image_yscale * 1.15;
} else if(!dying){
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
		attackSound();
		hspeed = - (hspeed * 0.8);
	}

	//vertical collision
	vspeed += grav;
	if place_meeting(x,y+vspeed,obj_platform)
	{
		if(sign(vspeed)==1 )
		{
			attackSound();
		}
		while !place_meeting(x,y+sign(vspeed),obj_platform)
	    {
			y+=sign(vspeed);
	    }
		vspeed = - (vspeed * 0.7);
		if abs(vspeed) < 5{
			vspeed = sign(vspeed) * 8;
		}
	}

	timeAlive += 1;
	if timeAlive >= maxTimeAlive
	{
		dying = 1;
		timeAlive = 0;
	}

} else {
	timeAlive += 1;
	if timeAlive >= 15
		instance_destroy();
}