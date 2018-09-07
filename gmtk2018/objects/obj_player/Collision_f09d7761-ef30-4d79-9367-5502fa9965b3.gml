/// @description Insert description here
// You can write your code in this editor

if(stunned)
{
	move_bounce_all(0)
	speed*=.8
	if(y <= other.bbox_top+20)	
		vspeed -= 10
}
