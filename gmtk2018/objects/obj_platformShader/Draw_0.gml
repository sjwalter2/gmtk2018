/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
var shade_width = 20
var start_alpha = .8
var offsetY = 0;
var offsetX = 0;
var posX0 = 0
var posX1 = 0
var posY0 = 0
var posY1 = 0
var dirX0 = 0
var dirY0 = 0
var dirX1 = 0
var dirY1 = 0
var color = 0;

var left = !position_meeting(x-sprite_width,y,obj_platform);
var leftDown = position_meeting(x-sprite_width,y+sprite_height,obj_platform);
var leftUp = position_meeting(x-sprite_width,y-sprite_height,obj_platform);
var right = !position_meeting(x+sprite_width,y,obj_platform);
var rightDown = position_meeting(x+sprite_width,y+sprite_height,obj_platform);
var rightUp = position_meeting(x+sprite_width,y-sprite_height,obj_platform);
var down = !position_meeting(x,y+sprite_height,obj_platform);
var up = !position_meeting(x,y-sprite_height,obj_platform);

var flatX0 = 1
var flatX1 = 1
var flatY0 = 1
var flatY1 = 1

for(var j = 0; j <= 3; j++)
{
switch(j)
{
	case 0:
		color = c_black
		offsetX = 0
		offsetY = sprite_height
		posX0 = bbox_left-1
		posX1 = bbox_right+1
		posY0 = bbox_bottom+1
		posY1 = bbox_bottom+1
		dirX0 = -1
		dirY0 = 1
		dirX1 = 1
		dirY1 = 1
		flatX0 = left;
		if(!left && leftDown)
			flatX0 = -1
		flatX1 = right;
		if(!right && rightDown)
			flatX1 = -1
		flatY0 = 1
		flatY1 = 1
		
	break;
	
	case 1:
		color = c_dkgray
		offsetX = 0
		offsetY = -sprite_height
		posX0 = bbox_left-1
		posX1 = bbox_right+1
		posY0 = bbox_top-1
		posY1 = bbox_top-1
		dirX0 = -1
		dirY0 = -1
		dirX1 = 1
		dirY1 = -1
		flatX0 = left;
		if(!left && leftUp)
			flatX0 = -1
		flatX1 = right;
		if(!right && rightUp)
			flatX1 = -1
		flatY0 = 1
		flatY1 = 1
		
	break;
	
	case 2:
		color = c_dkgray
		offsetX = -sprite_width
		offsetY = 0
		posX0 = bbox_left-1
		posX1 = bbox_left-1
		posY0 = bbox_top-1
		posY1 = bbox_bottom+1
		dirX0 = -1
		dirY0 = -1
		dirX1 = -1
		dirY1 = 1
		flatX0 = 1;
		flatX1 = 1;
		flatY0 = up;
		if(!up && leftUp)
			flatY0 = -1
		flatY1 = down;
		if(!down && leftDown)
			flatY1 = -1	

	break;
	
	case 3:
		color = c_black
		offsetX = sprite_width
		offsetY = 0
		posX0 = bbox_right+1
		posX1 = bbox_right+1
		posY0 = bbox_top-1
		posY1 = bbox_bottom+1
		dirX0 = 1
		dirY0 = -1
		dirX1 = 1
		dirY1 = 1
		flatX0 = 1;
		flatX1 = 1;
		flatY0 = up;
		if(!up && rightUp)
			flatY0 = -1
		flatY1 = down;
		if(!down && rightDown)
			flatY1 = -1	
	break;
}	
if(!position_meeting(x+offsetX,y+offsetY,obj_platform) || (position_meeting(x+offsetX,y+offsetY,obj_platform) && object_get_name(instance_position(x+offsetX,y+offsetY,obj_platform).object_index) != "obj_platform"))
{

	for(var i = 0; i <= shade_width; i++)
	{
		draw_set_color(color)
		draw_set_alpha(start_alpha - i*(start_alpha/shade_width))
		draw_line(posX0 - i*dirX0*flatX0,posY0-i*dirY0*flatY0,posX1 - i*dirX1*flatX1, posY1-i*dirY1*flatY1)
	}
}
}

draw_set_alpha(1)