/// @description Insert description here
// You can write your code in this editor
if(other.id != creator.id && charging)
{
	with(other)
	{
	stunned = 1
	alarm_set(4,50)
	image_blend = c_yellow
	var moveX = x
	var moveY = y
	x = creator.x
	y = creator.y
	creator.x = moveX
	creator.y = moveY
	instance_destroy()
	}
}