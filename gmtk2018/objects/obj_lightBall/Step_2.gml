/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{
if(charging)
{	
	x = creator.x + (offsetX+radius)*creator.currentImageDirection
	y = creator.y + offsetY - radius
	radius+=2
	image_xscale = radius/30
	image_yscale = radius/30
}
if( (radius >= radiusMax || creator.currentImageIndex != 2 )&& charging)
{
	charging = 0;
	direction = point_direction(creator.x,creator.y-20,x,y)
	speed = radius/3;
	creator.currentImageIndex++;

}
if(x < -500 || x > room_width+500 || y < -500 || y > room_height+500)
	instance_destroy()
	

if(!charging)
{
	radius -= 1;
	image_xscale = radius/30
	image_yscale = radius/30	
	part_type_orientation(type, direction - 100, direction - 80, 0, 0, 0);
	part_type_size(type,image_xscale,image_xscale,-.01,.1)
	for(var i = 0; i < 2; i++)
		part_particles_create(system, x + lengthdir_x(irandom_range(-30,30),direction) , y  + lengthdir_y(irandom_range(-30,30) ,direction) , type, 1);
	if(radius <= 0)
		instance_destroy()
}
if(onPlatform)
{
	var amount = radius
	if(place_meeting(x,y,obj_platform))
	{
		if(position_meeting(x+amount,bbox_top,obj_platform) && position_meeting(x-amount,bbox_top,obj_platform))
		{
			y = currentPlatform.bbox_bottom
			direction = 0;
		}
		else if(position_meeting(x+amount,bbox_bottom,obj_platform) && position_meeting(x-amount,bbox_bottom,obj_platform))
		{
			y = currentPlatform.bbox_top
			direction = 180;
		}
		else if(position_meeting(bbox_left,y+amount,obj_platform) && position_meeting(bbox_left,y-amount,obj_platform))
		{
			x = currentPlatform.bbox_right
			direction = 90;
		}
		else if(position_meeting(bbox_right,y+amount,obj_platform) && position_meeting(bbox_right,y-amount,obj_platform))
		{
			x = currentPlatform.bbox_left
			direction = 270;
		}
		else if(position_meeting(x-amount,y-amount,obj_platform) && !position_meeting(x+amount,y-amount,obj_platform))
		{
			x = currentPlatform.bbox_right
			direction = 90;
		}
		else if(position_meeting(x+amount,y-amount,obj_platform) && !position_meeting(x-amount,y-amount,obj_platform))
		{
			x = currentPlatform.bbox_left
			direction = 270;
		}
		else if(position_meeting(x-amount,y+amount,obj_platform) && !position_meeting(x+amount,y+amount,obj_platform))
		{
			y = currentPlatform.bbox_top
			direction = 180;
		}
		else if(position_meeting(x+amount,y+amount,obj_platform) && !position_meeting(x-amount,y+amount,obj_platform))
		{
			y = currentPlatform.bbox_bottom
			direction = 0;
		}
	}
}

}
else
	instance_destroy()