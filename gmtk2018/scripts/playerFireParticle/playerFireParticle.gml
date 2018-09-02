if(onFire)
{
part_type_sprite(type, spr_lavaRock, true, false, false);

part_type_gravity(type, 4, 270);

part_type_orientation(type, -90, -90, 0, 0, 1);

part_type_direction(type, direction + 135, direction + 225, 0, 0);

part_particles_create(system, x + 0, y + irandom(-sprite_height), type, 2-2/alarm_get(3)/4);
}
else if(stunned)
{
part_type_sprite(type, spr_stunBolts, true, false, false);

part_type_gravity(type, 0, 270);

part_type_orientation(type, -90, -90, 0, 0, 1);

part_type_direction(type, 0, 480, 0, 0);

part_particles_create(system, x + 0, y +-sprite_height, type, 1);	
}
if(alarm_get(1) != -1)
{
part_type_sprite(type, spr_ice, true, false, false);

part_type_gravity(type, 4, 270);

part_type_orientation(type, -90, -90, 0, 0, 1);

part_type_direction(type, direction + 135, direction + 225, 0, 0);

part_particles_create(system, x + 0, y + irandom(-sprite_height), type, 1);	
}