/// @description Insert description here
// You can write your code in this editor
if(y = ystart)
{
	y = creator.y +sprite_height;
}

if(image_yscale < 1)
{
	image_yscale += .1	
}
if(image_yscale >= 1){
	show_debug_message(x);
	x = x + (facing*hspeedbase);
}