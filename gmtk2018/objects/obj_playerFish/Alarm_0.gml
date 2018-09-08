/// @description Insert description here
// You can write your code in this editor
with(obj_playerFish)
{
	if(id != other.id && creator == other.creator)	
	{
		instance_destroy(other)	
	}
}
creator.currentAlpha = 0
image_xscale = creator.currentImageDirection;
facing = creator.currentImageDirection;
image_blend = creator.image_blend