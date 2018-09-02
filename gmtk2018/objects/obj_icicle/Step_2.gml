/// @description Insert description here

if(instance_exists(creator))
{
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
		sprite_index = spr_icicle_dying;
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
		inst.hspeed += (facing*hitEffect);
		inst.fric = 0;
		inst.grabLeft = 0
		inst.grabRight = 0
		with inst{
			alarm_set(1,other.pushTime+alarm_get(1))	
		}
		sprite_index = spr_icicle_dying;
		hitSound();
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
	instance_destroy()	
}