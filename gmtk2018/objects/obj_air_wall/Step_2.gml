/// @description Insert description here

if(instance_exists(creator))
{
if(!dying){

	//collision with player
	if place_meeting(x+hspeed,y,obj_player) && instance_place(x+hspeed,y,obj_player) != creator
	{
		hitSound();
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
		knockBack(inst, facing*hitEffect, 0, 0, pushTime, 0)

	}
	else {
		
		hspeed = hspeedBase * facing;
		image_xscale = facing;
	}
	var meeting =0
	with(creator)
	{
		if(place_meeting(x,y,obj_platform) && instance_place(x,y,obj_platform) != other)
		meeting = 1
	}
	if(distance_to_object(creator) < 20 && creator.y <= bbox_top && !meeting)
	{
		if(creatorDistX = 0)
		{
			creatorDistX = creator.x - x	
			creator.currentSprite = spr_playerIdle	
			creator.currentImageIndex = 0
		}
			
		if(creatorDistY = 0)
			creatorDistY = creator.y - y
		if(creator.currentSprite = spr_playerIdle)
		{
			creator.x = x +creatorDistX
			creator.y =y +creatorDistY
			creator.vspeed = 0;
		}
		else
		{
			creator.y = creator.y -30;
			creator.vspeed = -15;
			creator.hspeed = hspeed;
		}
	}
	else
	{
		creatorDistX = 0
		creatorDistY = 0
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
	image_alpha -= 0.1;
	if timeAlive >= 15
		instance_destroy();
}
}
else
{
	instance_destroy();	
}