/// @description Insert description here
// You can write your code in this editor
if(charging)
{
	charging = 0;
	direction = point_direction(creator.x,creator.y,x,y)
	speed = radius;
	creator.currentImageIndex++;

}
move_bounce_all(1)
move_outside_all(direction,20)
while(place_meeting(x,y,obj_platform))
{
	radius--
	image_xscale = radius/30
	image_yscale = radius/30	
}