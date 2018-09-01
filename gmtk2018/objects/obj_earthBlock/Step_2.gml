/// @description Insert description here
// You can write your code in this editor
if(y = ystart)
{
	y = creator.y +sprite_height;
}
if(charging)
{	
	x += moveSpeed*dir
}
if( (abs(x - xstart) >= maxDist || creator.currentImageIndex != 1 )&& charging)
{
	charging = 0;
	creator.currentImageIndex++;
}
if(!charging && image_yscale < 1)
{
	image_yscale += .3	
}