/// @description Insert description here
// You can write your code in this editor
creator = 0;
charging = 1;
radius = 20;
radiusMax = 100;
alarm_set(0,1)
offsetY = -30;
offsetX = 60;

system = part_system_create_layer("Instances", 0);

type = part_type_create();
// no blending

part_type_sprite(type, spr_lighningParticle, true, false, false);

part_type_life(type, 10, 20);
