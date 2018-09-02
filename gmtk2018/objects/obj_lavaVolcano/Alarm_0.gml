/// @description Insert description here
// You can write your code in this editor
with(obj_lavaVolcano)
{
	if(creator = other.creator && id != other.id)	
	{
		instance_destroy();	
	}
}
dir = creator.currentImageDirection
image_alpha = 1