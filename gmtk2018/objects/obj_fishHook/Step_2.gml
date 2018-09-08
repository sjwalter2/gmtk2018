/// @description Insert description here
// You can write your code in this editor
if(attached != noone)
	{
		with(attached)
		{
			alarm_set(4,2)	
			setInvincible(id,2)
			stunned = 1
			x = other.x+lengthdir_x(100,other.direction+180)
			y = other.y+sprite_height/2+lengthdir_y(100,other.direction+180)
			drawAngle = other.direction - 90
		}
		
	}
	
