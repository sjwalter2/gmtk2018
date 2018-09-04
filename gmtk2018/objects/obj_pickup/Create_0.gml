/// @description Insert description here
// You can write your code in this editor
player = 0;
depth = depth+5
randomize();
var seed = irandom(3);
switch seed{
	case 0:
		element = "air";
		color = c_white
		sprite_index = spr_air_pickup1;
		break;
	case 1:
		element = "water";
		color = c_teal
		sprite_index = spr_water_pickup1;
		break;
	case 2:
		element = "fire";
		color = c_red
		sprite_index = spr_fire_pickup1;
		break;
	case 3:
		element = "earth";
		color = c_orange
		sprite_index = spr_earth_pickup1;
		break;
}
image_xscale = 1.5
image_yscale = 1.5
grav = 1;
maxfallspeed = 10;
timeAlive = 0;
maxTimeAlive = 600;