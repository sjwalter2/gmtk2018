/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{
if(y = ystart)
{
	y = creator.y - 10;
}
if(charging)
{	
	x += moveSpeed*dir
}
if( place_meeting(x,y,obj_platform) || (abs(x - xstart) >= maxDist || creator.currentImageIndex != 2 )&& charging)
{
	hitSound();
	charging = 0;
	creator.currentImageIndex++;
	creator.x = x
	creator.y = y
	instance_destroy()
}
}
else
{
	instance_destroy()
}	