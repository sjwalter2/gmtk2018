/// @description Insert description here
// You can write your code in this editor
if(landed)
{
var bounce = 1;
if(object_get_name(other) = "obj_bouncing_plant")
{
	if(other.landed)	
		bounce = 0;
}
if(bounce)
{
image_speed = 1;
hitSound();
with(other)
{
	vspeed -= other.hitEffect;
	hspeed = hspeed*.8
	if(abs(hspeed) < 10)
	{
		hspeed = 10*irandom_range(-2,2)	
	}
}
}
}