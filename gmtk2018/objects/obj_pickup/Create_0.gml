/// @description Insert description here
// You can write your code in this editor
var seed = irandom(2);
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
}