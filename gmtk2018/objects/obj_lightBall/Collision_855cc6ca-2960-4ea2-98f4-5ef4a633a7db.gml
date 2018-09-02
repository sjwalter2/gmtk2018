/// @description Insert description here
// You can write your code in this editor
if(other.id != creator)
{
	with(other)
	{
		alarm_set(4,20)	
		image_blend = c_yellow
		stunned = 1;
		direction = other.direction
		
		speed = other.radius;
		
	}
	move_bounce_all(1)
	hitSound();
}