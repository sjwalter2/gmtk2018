/// @description Insert description here
// You can write your code in this editor
x = creator.x
y = creator.y - creator.sprite_height/2;
image_xscale = creator.currentImageDirection;
image_index = creator.currentImageIndex;


if (creator.currentImageIndex >= sprite_get_number(sprite_index))
{
	instance_destroy()
}