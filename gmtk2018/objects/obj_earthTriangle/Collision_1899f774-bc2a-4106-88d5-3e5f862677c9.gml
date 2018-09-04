/// @description Insert description here
// You can write your code in this editor
if(!charging )
{
	if(!other.tempInvincibility)
	{
		with(other)
		{
		stunned = 1
		alarm_set(4,50)
		speed = other.speed	
		direction = other.direction
		}
		speed = 0;
		image_speed = 1;
		setInvincible(other);
	}
}