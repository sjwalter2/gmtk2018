/// @description Insert description here
// You can write your code in this editor
if(other.id != creator)
{
	if(!other.tempInvincibility)
	{
		with(other)
		{
			alarm_set(4,20)	

			stunned = 1;
			direction = other.direction
		
			speed = other.radius;
		
		}
		move_bounce_all(1)
		hitSound();
		setInvincible(other,0);
	}
}