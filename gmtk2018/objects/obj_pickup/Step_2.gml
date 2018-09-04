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
	
if(alarm_get(0) != -1)
{
	if(instance_exists(player))
	{
		if(x > player.x)
			x = x - abs(x - player.x)/alarm_get(0) 
		else
			x = x + abs(x - player.x)/alarm_get(0) 
		
		if(y > player.bbox_top)
			y = y - abs(y - player.bbox_top)/alarm_get(0) 
		else
			y = y + abs(y - player.bbox_top)/alarm_get(0) 
	}
	image_xscale = alarm_get(0)/20
	image_yscale = alarm_get(0)/20
}