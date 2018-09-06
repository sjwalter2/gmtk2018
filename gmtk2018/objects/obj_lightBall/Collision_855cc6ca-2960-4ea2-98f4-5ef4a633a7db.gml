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
			if(x < other.x)
				knockBack(id, -1*other.radius, -1*other.radius, 30,0,0)
			else
				knockBack(id, 1*other.radius, -1*other.radius, 30,0,0)
		
		}
		move_bounce_all(1)
		hitSound();
		setInvincible(other);
	}
}