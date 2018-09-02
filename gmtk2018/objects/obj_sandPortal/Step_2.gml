/// @description Insert description here
// You can write your code in this editor
if(y = ystart)
{
	y = creator.y - 10;
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
