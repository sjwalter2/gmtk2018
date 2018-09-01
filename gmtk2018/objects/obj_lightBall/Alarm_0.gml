/// @description Insert description here
// You can write your code in this editor
with(obj_lightBall)
{
	if(charging && creator = other.creator && id != other.id)	
	{
		instance_destroy(other);	
	}
}