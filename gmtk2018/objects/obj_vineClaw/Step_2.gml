/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{
	image_alpha = creator.image_alpha
	y = creator.y
	if(creator.facing = 1)
	{
		x = creator.bbox_right
		image_xscale = 1;	
	}
	else
	{
		x = creator.bbox_left
		image_xscale = -1;	
	}
}
else
{
	instance_destroy();	
}
if(instance_exists(attached))
{
	attached.x = x + sprite_width/2
	attached.y = y + attached.sprite_height/2

}