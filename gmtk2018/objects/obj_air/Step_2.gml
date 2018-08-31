/// @description Insert description here


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
	hspeed = 0;
	instance_destroy();
} else {
	hspeed = hspeedBase * facing;
}

//collision with player
if place_meeting(x+hspeed,y,obj_player)
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
	hspeed = 0;
	instance_destroy();
} else {
	hspeed = hspeedBase * facing;
}

timeAlive += 1;
if timeAlive >= maxTimeAlive
{
	instance_destroy();
}