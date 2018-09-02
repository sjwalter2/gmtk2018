/// @description Insert description here
// You can write your code in this editor
if(y = ystart)
{
	y = creator.y - sprite_height/2;
	if(dir = 1)
	image_angle = -45
	else
	image_angle = 225
}
if( ((image_angle >= 75 && dir = 1) || (image_angle <= 105 && dir = -1)  || creator.currentImageIndex != 2 || creator.currentImageDirection != dir)&& charging)
{
	direction = image_angle 
	speed = fireSpeed
	charging = 0;
	creator.currentImageIndex++;
}
if(charging)
{	
	y += moveSpeed
	x = creator.x + offsetX*creator.currentImageDirection;
	image_angle += 5*dir
}

if(!charging)
{
	vspeed += 2	
}