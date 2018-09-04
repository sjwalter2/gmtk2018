/// @description Insert description here
// You can write your code in this editor
var color = make_color_hsv(irandom(255),105,155)
image_speed = .5
with(obj_platform)
{
	image_blend = color	
}

instance_create_depth(x,y,depth-1,obj_platformShader)