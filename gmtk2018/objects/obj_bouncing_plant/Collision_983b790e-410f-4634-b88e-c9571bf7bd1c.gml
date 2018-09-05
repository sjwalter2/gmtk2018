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
	if(x > other.x)
		hspeed = other.horizHitEffect;
	else
		hspeed = -other.horizHitEffect;
}
}
}