/// @description Insert description here
// You can write your code in this editor
if(!charging)
{
	if(!onPlatform )
	{
		if(y < other.y)
			y = other.bbox_top
		else if(y >= other.y)
			y = other.bbox_bottom
		if(x < other.x)
			x = other.bbox_left
		else if (x >= other.x)
			x= other.bbox_right
		
			
			if(y = other.bbox_bottom)
			{
				direction = 0 + 180*facingLeft
			}
			else if(y = other.bbox_top)
			{
				facingLeft = !facingLeft
				direction = 180	- 180*facingLeft
				
			}
			else if(x = other.bbox_right)
			{
				facingLeft = !facingLeft
				direction = 90	+ 180*facingLeft
			}
			else if(x = other.bbox_left)
			{
				
				direction = 270	 - 180*facingLeft
			}

	}
	if(onPlatform && !position_meeting(x,y,obj_platform) && !dirSet)
	{
		dirSet = 1;	
		
		if(direction = 0 && !facingLeft)
		{
			direction = 90	
			x = other.bbox_right 
			y = other.bbox_bottom-1
		}
		else if(direction = 0 && facingLeft)
		{
			direction = 270
			x = other.bbox_right
			y = other.bbox_top+1
		}
		else if(direction = 90 && !facingLeft )
		{
			direction = 180	
			x = other.bbox_right-1
			y = other.bbox_top	
		}
		else if(direction = 90 && facingLeft)
		{
			direction = 0
			x = other.bbox_left+1
			y = other.bbox_top	
		}
		else if(direction = 180 && !facingLeft )
		{
			direction = 270	
			x = other.bbox_left	
			y = other.bbox_top+1
		}
		else if(direction = 180  && facingLeft)
		{
			direction = 90	
			x = other.bbox_left	
			y = other.bbox_bottom-1
		}
		else if(direction = 270 && !facingLeft )
		{
			direction = 0	
			x = other.bbox_left+1
			y = other.bbox_bottom 	
		}
		else if(direction = 270 && facingLeft )
		{
			direction = 180	
			x = other.bbox_right-1
			y = other.bbox_bottom 	
		}

	}
	if(position_meeting(x,y,obj_platform))
	{
		
	if(!facingLeft && position_meeting(x,y-radius/2,obj_platform) && position_meeting(x+radius/2,y+radius/2,obj_platform) && direction = 0)
	{
		var inst =  instance_position(x+radius/2,y+radius/2,obj_platform)
		x = inst.bbox_left
		y = inst.bbox_top + radius
		direction = 270
	}
	else if(!facingLeft && position_meeting(x+radius/2,y,obj_platform) && position_meeting(x-radius/2,y-radius/2,obj_platform) && direction = 270)
	{
		var inst =  instance_position(x-radius/2,y-radius/2,obj_platform)
		x = inst.bbox_right
		y = inst.bbox_top
		direction = 180
	}
	else if(!facingLeft && position_meeting(x,y+radius/2,obj_platform) && position_meeting(x-radius/2,y-radius/2,obj_platform) && direction = 180)
	{
		var inst =  instance_position(x-radius/2,y-radius/2,obj_platform)
		x = inst.bbox_right
		y = inst.bbox_bottom
		direction = 90
	}
	else if(!facingLeft && position_meeting(x-radius/2,y,obj_platform) && position_meeting(x+radius/2,y-radius/2,obj_platform) && direction = 90)
	{
		var inst =  instance_position(x+radius/2,y-radius/2,obj_platform)
		x = inst.bbox_left
		y = inst.bbox_bottom
		direction = 0
	}
	
	
	if(facingLeft && position_meeting(x,y+radius/2,obj_platform) && position_meeting(x+radius/2,y-radius/2,obj_platform) && direction = 0)
	{
		var inst =  instance_position(x+radius/2,y-radius/2,obj_platform)
		x = inst.bbox_left
		y = inst.bbox_bottom
		direction = 90
	}
	else if(facingLeft && position_meeting(x-radius/2,y,obj_platform) && position_meeting(x+radius/2,y-radius/2,obj_platform) && direction = 270)
	{
		var inst =  instance_position(x+radius/2,y-radius/2,obj_platform)
		x = inst.bbox_left+radius
		y = inst.bbox_top
		direction = 0
	}
	else if(facingLeft && position_meeting(x,y-radius/2,obj_platform) && position_meeting(x-radius/2,y+radius/2,obj_platform) && direction = 180)
	{
		var inst =  instance_position(x-radius/2,y+radius/2,obj_platform)
		x = inst.bbox_right
		y = inst.bbox_top + radius
		direction = 270
	}
	else if(facingLeft && position_meeting(x+radius/2,y,obj_platform) && position_meeting(x-radius/2,y-radius/2,obj_platform) && direction = 90)
	{
		var inst =  instance_position(x-radius/2,y-radius/2,obj_platform)
		x = inst.bbox_right
		y = inst.bbox_bottom
		direction = 180
	}
	
		
	onPlatform = 1;
	dirSet = 0;


	}
}