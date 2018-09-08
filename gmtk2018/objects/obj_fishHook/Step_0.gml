/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{

if(hitTarget)
{
	creator.fishing = 1;
	speed = 80
	image_angle = direction	+ 90*(facing-1) + 180
	direction = point_direction(x,y,creator.x,creator.y-creator.sprite_height/2)
	if(place_meeting(x,y,creator))
	{
		with(attached)
		{
			drawAngle = 0;
			alarm_set(4,-1)
			stunned = 0;
			currentSprite = spr_playerIdle
			if(other.facing = 1)
			{
				x = other.creator.x + 100
				
				if(position_meeting(x,bbox_bottom,obj_platform))
					while(place_meeting(x,y+1,obj_platform))	
						y--
				while(place_meeting(x+1,y,obj_platform))	
					x--
			}
			else
			{
				if(position_meeting(x,bbox_bottom,obj_platform))
					while(place_meeting(x,y+1,obj_platform))	
						y--
				x = other.creator.x - 100
				while(place_meeting(x-1,y,obj_platform))	
					x++
			}
		}
		creator.timeSinceAttack = 8
		attached = noone;
		creator.fishing = 0;
		instance_destroy()			
			
	}
}
else
{
	if(creator.hspeed > 20)
		creator.hspeed = 20
	else if	(creator.hspeed < -20)
		creator.hspeed = -20
		
	if(creator.fastReleased)
	{
		grav = 10;
		hspeed = 5*facing;
	}
	vspeed += grav
	image_angle = direction	+ 90*(facing-1)
	if(distance_to_object(creator) > 1200)
		hitTarget = 1;
}

if(creator.stunned)
{
	instance_destroy()
	creator.fishing = 0;
	with(attached)
			{
			drawAngle = 0;
			alarm_set(4,-1)
			stunned = 0;
			currentSprite = spr_playerIdle
		};
}
}
else
{
	instance_destroy()
	with(attached)
		{
			drawAngle = 0;
			alarm_set(4,-1)
			stunned = 0;
			currentSprite = spr_playerIdle
		}
			
		attached = noone;
}