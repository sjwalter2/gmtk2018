/// @description Insert description here
// You can write your code in this editor
if(other.id != creator || alarm_get(1) < 0)
{
	if(!other.tempInvincibility)
	{
		with(other)
		{
			alarm_set(4,20)	
			stunned = 1;
			if(x < other.x)
				knockBack(id, -.5*other.radius, -.75*other.radius, 30,0,0)
			else
				knockBack(id, .5*other.radius, -.75*other.radius, 30,0,0)
		
		}

		hitSound();
		setInvincible(other,0);
	}
}