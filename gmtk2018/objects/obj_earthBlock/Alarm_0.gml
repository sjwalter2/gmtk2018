/// @description Insert description here
// You can write your code in this editor
with(obj_earthBlock)
{
	if(charging && creator = other.creator && id != other.id)	
	{
		instance_destroy(other);	
	}
}
sprite_index = spr_earthBlock
dir = creator.currentImageDirection
x = creator.x + 150*dir
image_alpha = 1