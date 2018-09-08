/// @description Insert description here
// You can write your code in this editor
with(obj_fishHook)
{
	if(id != other.id && creator == other.creator)	
	{
		instance_destroy(other)	
	}
}
image_xscale = creator.currentImageDirection;
facing = creator.currentImageDirection;
difx = creator.x - x
dify = creator.y - y

if(facing = 1)
	direction = 25 + 45*upPressed - 35*downPressed
	
else
	direction = 155 - 45*upPressed + 35*downPressed
	

