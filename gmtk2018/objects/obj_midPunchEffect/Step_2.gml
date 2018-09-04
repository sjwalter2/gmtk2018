/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{
	if(image_index < 3)
	{
		image_xscale = creator.currentImageDirection;	
	}
	x = creator.x
	y = creator.y - creator.sprite_height/2;


image_index = creator.currentImageIndex;

if (image_index >= sprite_get_number(sprite_index) || creator.currentSprite != spr_playerMidPunch)
{
	instance_destroy()
}}