/// @description Insert description here
// You can write your code in this editor
image_alpha = 1;
if instance_exists(creator)
	x = creator.x + (facing * 250);

with(obj_sandTornado)
{
	if(creator = other.creator && id != other.id)	
	{
		instance_destroy();	
	}
}
if(!instance_place(x,y,obj_player))
	attackSound();
