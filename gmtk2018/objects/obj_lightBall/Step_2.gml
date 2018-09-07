/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{
if(charging)
{	
	x = creator.x + (offsetX+radius)*creator.currentImageDirection
	y = creator.y + offsetY - radius
	if(creator.currentImageDirection = 1)
		facingLeft = 0;
	else
		facingLeft = 1;
	radius+=2
	image_xscale = radius/30
	image_yscale = radius/30
	alarm_set(1,30)
}
if( (radius >= radiusMax || creator.currentImageIndex != 2 )&& charging)
{
	
	charging = 0;
	direction = point_direction(creator.x,creator.y-20,x,y)
	speed = radius/2;
	creator.currentImageIndex++;

}
if(x < -500 || x > room_width+500 || y < -500 || y > room_height+500)
	instance_destroy()
	

if(!charging)
{
	radius -= .25;
	
	image_xscale = radius/30
	image_yscale = radius/30	
	part_type_orientation(type, direction - 100, direction - 80, 0, 0, 0);
	part_type_size(type,image_xscale,image_xscale,-.01,.1)
	for(var i = 0; i < 2; i++)
		part_particles_create(system, x + lengthdir_x(irandom_range(-30,30),direction) , y  + lengthdir_y(irandom_range(-30,30) ,direction) , type, 1);
	if(radius <= 20)
		instance_destroy()
}

}
else
	instance_destroy()