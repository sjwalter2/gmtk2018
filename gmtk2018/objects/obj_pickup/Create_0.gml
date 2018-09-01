/// @description Insert description here
// You can write your code in this editor

randomize();
var seed = irandom(3);
switch seed{
	case 0:
		element = "air";
		sprite_index = spr_air_pickup;
		break;
	case 1:
		element = "water";
		sprite_index = spr_water_pickup;
		break;
	case 2:
		element = "fire";
		sprite_index = spr_fire_pickup;
		break;
	case 3:
		element = "earth";
		sprite_index = spr_earth_pickup;
		break;
}