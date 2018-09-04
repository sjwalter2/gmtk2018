/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{
if(start)
{
	with(obj_vineExtend)
	{
		if(creator = other.creator && id != other.id)	
		{
			instance_destroy(other)	
		}
	}
	start = 0;
	facing = creator.currentImageDirection

	image_alpha = 1
}
if(charging)
{	
	image_xscale += .3*facing
	y = creator.y - creator.sprite_height/3;
	x = creator.x + 100*facing
}
if(abs(image_xscale) >= 2 || creator.currentImageIndex != 2 || claw.attached != noone) && charging
{
	hitSound();
	charging = 0;
	creator.currentImageIndex++;
}
if(!charging && abs(image_xscale) > 0)
{
	image_xscale -= .3*facing
}
if(!charging && ((image_xscale <= 0 && facing = 1)|| (image_xscale >= 0 && facing = -1)) )
	instance_destroy()

}
