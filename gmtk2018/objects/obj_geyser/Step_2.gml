/// @description Insert description here
// You can write your code in this editor

if(!active)
{
	vspeed += grav;	
}
if(vspeed != 0)
{
	with(attached)
	{
		vspeed = other.vspeed;
		var dist = other.x - x
		x = x + dist/4
	}
}
if(vspeed = 0 && instance_exists(attached))
{
	knockBack(attached,0,-8*height,3*height,0,0);
	attached = noone;
	
}
