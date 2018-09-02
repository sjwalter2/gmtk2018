/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 645B8764
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)if(!dying){$(13_10)	if attached == 1{$(13_10)		x = attachedPlayer.x;$(13_10)		y = attachedPlayer.y;$(13_10)		if x < -200 || x > room_width + 200 || y < -200 || y > room_height + 200$(13_10)		{$(13_10)			part_system_destroy(system);$(13_10)			instance_destroy();$(13_10)		}$(13_10)	} else$(13_10)	{	$(13_10)			//horizontal collision$(13_10)		if place_meeting(x+hspeed,y,obj_platform)$(13_10)		{$(13_10)			while !place_meeting(x+sign(hspeed),y,obj_platform)$(13_10)		      {$(13_10)		           x+=sign(hspeed);$(13_10)		      }$(13_10)			if place_meeting(x,y,obj_platform)$(13_10)			{$(13_10)				var inst = instance_place(x,y,obj_platform)$(13_10)				if(x < inst.x)$(13_10)					while(place_meeting(x,y,inst))$(13_10)						x--$(13_10)				else$(13_10)					while(place_meeting(x,y,inst))$(13_10)						x++$(13_10)			}$(13_10)			hitSound();$(13_10)			hspeed = - (hspeed * 0.7);$(13_10)		}$(13_10)$(13_10)		//vertical collision$(13_10)		vspeed += grav;$(13_10)		if place_meeting(x,y+vspeed,obj_platform)$(13_10)		{$(13_10)			if(sign(vspeed)==1 )$(13_10)			{$(13_10)				hitSound();$(13_10)			}$(13_10)			while !place_meeting(x,y+sign(vspeed),obj_platform)$(13_10)		    {$(13_10)				y+=sign(vspeed);$(13_10)		    }$(13_10)			vspeed = - (vspeed * 0.6);$(13_10)			show_debug_message(abs(vspeed));$(13_10)			if abs(vspeed) < 5{$(13_10)				vspeed = sign(vspeed) * 8;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)$(13_10)	timeAlive += 1;$(13_10)	if timeAlive >= maxTimeAlive$(13_10)	{$(13_10)		dying = 1;$(13_10)		timeAlive = 0;$(13_10)	}$(13_10)$(13_10)} else {$(13_10)	timeAlive += 1;$(13_10)	if timeAlive >= 15$(13_10)		part_system_destroy(system);$(13_10)		instance_destroy();$(13_10)}"
/// @description Insert description here
// You can write your code in this editor

if(!dying){
	if attached == 1{
		x = attachedPlayer.x;
		y = attachedPlayer.y;
		if x < -200 || x > room_width + 200 || y < -200 || y > room_height + 200
		{
			part_system_destroy(system);
			instance_destroy();
		}
	} else
	{	
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
			hitSound();
			hspeed = - (hspeed * 0.7);
		}

		//vertical collision
		vspeed += grav;
		if place_meeting(x,y+vspeed,obj_platform)
		{
			if(sign(vspeed)==1 )
			{
				hitSound();
			}
			while !place_meeting(x,y+sign(vspeed),obj_platform)
		    {
				y+=sign(vspeed);
		    }
			vspeed = - (vspeed * 0.6);
			show_debug_message(abs(vspeed));
			if abs(vspeed) < 5{
				vspeed = sign(vspeed) * 8;
			}
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
		part_system_destroy(system);
		instance_destroy();
}

/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
/// @DnDVersion : 1
/// @DnDHash : 18360DEC
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "number" "2"
part_particles_create(system, x + 0, y + 0, type, 2);