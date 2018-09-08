/// @description Insert description here
// You can write your code in this editor
if(!position_meeting(x,bbox_bottom,obj_platform) && created = noone && height >= 0)
{
	created = instance_create_depth(x,bbox_bottom+1,depth,obj_geyserBody)	
	created.image_index = image_index;
	created.height = height-1;
	created.vspeed = vspeed;
	created.master = master;
	created.creator = id;
}
if((height = 0 || height = -1) && sprite_index = spr_geyserBody)
{
	sprite_index = spr_geyserBodyDie
	image_index = 0;	
	vspeed = 0;
	
	with(obj_geyserBody)
	{
		if(instance_exists(master) && master = other.master)	
			vspeed = 0
	}
	if instance_exists(master) 
		with(master)
		{
			vspeed = 0;	
		}
}
if(sprite_index = spr_geyserBodyDie)
{
	image_alpha = 1.5*(sprite_get_number(sprite_index)-image_index)/sprite_get_number(sprite_index)
	if(instance_exists(master)  && creator = master)
	{
		master.sprite_index = spr_geyserTopDie	
		master.image_index = image_index
		master.image_alpha = image_alpha
	}
	with(obj_geyserBody)
	{
		if(height = other.height + 1 && sprite_index = spr_geyserBody)
		{
			sprite_index = spr_geyserBodyDie
			image_index = 0;	
		}
	}
}
