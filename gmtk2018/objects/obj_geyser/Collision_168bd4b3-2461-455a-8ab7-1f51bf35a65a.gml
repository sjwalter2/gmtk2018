/// @description Insert description here
// You can write your code in this editor
if(active && !shoot && !other.tempInvincibility)
{
	shoot = 1;
	geyser = instance_create_depth(x,y,depth+150,obj_geyserBody)
	vspeed = -40
	geyser.vspeed = -40;
	geyser.height = height;
	geyser.image_index = image_index;
	geyser.creator = id;
	geyser.master = id;
	
	attached = other
	attachX = other.x;
	other.speed = 0;
}