/// @description Insert description here
// You can write your code in this editor
image_alpha = 1
with(obj_geyser)
{
	if(id != other.id && creator = other.creator)	
		instance_destroy()
	
}
facing = creator.currentImageDirection
hspeed = facing*25
