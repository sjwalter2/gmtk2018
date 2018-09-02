/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{
if(y = ystart)
{
	y = creator.y;
}
if(charging)
{	
	x += moveSpeed*dir
}
if( (abs(x - xstart) >= maxDist || creator.currentImageIndex != 2 )&& charging)
{
	hitSound();
	charging = 0;
	creator.currentImageIndex++;
}
if(!charging )
{
	image_speed = 1;
	vspeed += 1;
	if(irandom(5) = 0)
		instance_create_depth(x,y-sprite_height/2,depth+1,obj_volcanoFireBall)
}
if !charging && (position_meeting(bbox_left,y+vspeed,obj_platform) || position_meeting(bbox_right,y+vspeed,obj_platform)|| position_meeting(x,y+vspeed,obj_platform))
{
	vspeed = 0;
}
}
