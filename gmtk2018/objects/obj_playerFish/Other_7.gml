/// @description Insert description here
// You can write your code in this editor
if(spr_playerFishStart)
{
	sprite_index = spr_playerFishLaunch
	hook = instance_create_depth(x,y,depth - 1, obj_fishHook)
	hook.creator = id;
	if(facing = 1)
	{
		hook.direction = 60	
	}
	else
	{
		hook.direction = 120	
	}
}