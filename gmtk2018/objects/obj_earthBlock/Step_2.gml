/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{
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
	hitSound();
	charging = 0;
	creator.currentImageIndex++;
}
if(!charging && image_yscale < 1.3 && !reached)
{
	image_yscale += .2	
	alarm_set(2,10)
}
else if(!reached && image_yscale >= 1.3)
{
	reached =1;
	image_yscale = 1;		
}
}
else
	instance_destroy();