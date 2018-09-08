/// @description Insert description here
// You can write your code in this editor
if(position_meeting(x,bbox_bottom,obj_platform) && (position_meeting(bbox_left,bbox_bottom,obj_platform)|| position_meeting(bbox_right,bbox_bottom,obj_platform)) && !active)
{
	sprite_index = spr_geyserTop
	speed = 0
	y = other.bbox_top
	active = 1
}

	
else if(!active)
	hspeed = -.5*hspeed