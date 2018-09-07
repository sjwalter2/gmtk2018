/// @description Insert description here

if(instance_exists(creator))
{
if(!dying){
	var blocked = 0; //if this is set to 1 there is a platform that is not an airwall owned by the creator
	
	//horizontal collision
	if place_meeting(x+hspeed,y,obj_platform)
	{
		var inst = instance_place(x+hspeed,y,obj_platform)
		if object_get_name(inst.object_index) == "obj_air_wall"
		{
			if inst.creator != creator {
				blocked = 1;
			}
		} else {
			blocked = 1;
		}
		if blocked {
			while !place_meeting(x+sign(hspeed),y,inst)
		      {
		           x+=sign(hspeed);
		      }
			if place_meeting(x,y,inst)
			{
				if(x < inst.x)
					while(place_meeting(x,y,inst))
						x--
				else
					while(place_meeting(x,y,inst))
						x++
			}
			sprite_index = spr_air_dying;
			hitSound();
			dying = 1;
			timeAlive = 0;
		}
	}

	//collision with player
	if place_meeting(x+hspeed,y,obj_player) && instance_place(x+hspeed,y,obj_player) != creator
	{
		hitSound()
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
		knockBack(inst, facing*hitEffect, 0, 0, pushTime, 0);
		sprite_index = spr_air_dying;
		dying = 1;
		timeAlive = 0;
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
	image_alpha -= 0.1;
	timeAlive += 1;
	if timeAlive >= 15
		instance_destroy();
}
}
else
{
instance_destroy();	
}