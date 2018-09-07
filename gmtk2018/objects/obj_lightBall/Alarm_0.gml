/// @description Insert description here
// You can write your code in this editor
var ballCount = 0
with(obj_lightBall)
{
	if(creator = other.creator && id != other.id)	
	{
		ballCount++
		if(charging)
		{
			instance_destroy(other)
		}
		if(ballCount > 2)
		{
			instance_destroy(other);	
			if(other.creator.currentImageIndex = 2)
				other.creator.currentImageIndex++;
		}
	}
}
if(creator.currentImageIndex != 2)
	instance_destroy()

image_alpha = 1;