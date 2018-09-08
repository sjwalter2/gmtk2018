if(onFire)
{
	part_type_size(fire, .5, 2, -.1, 0);
part_type_sprite(fire, spr_lavaRock, true, false, false);

part_type_gravity(fire, 4, 270);

part_type_orientation(fire, -90, -90, 0, 0, 1);

part_type_direction(fire, direction + 135, direction + 225, 0, 0);

part_particles_create(system, x + 0, y + irandom(-sprite_height), fire, 2-2/alarm_get(3)/4);
}
if(stunned && !spawned && !fishing)
{
	part_type_size(stun, .5, 1, -.1, 0);
part_type_sprite(stun, spr_stunBolts, true, false, false);

part_type_gravity(stun, 0, 270);

part_type_orientation(stun, -90, -90, 0, 0, 1);

part_type_direction(stun, 0, 180, 0, 0);

part_particles_create(system, x + 0, y +-sprite_height, stun, 1);	
}
if(alarm_get(1) != -1)
{
part_type_sprite(ice, spr_icicle, true, false, false);
part_type_size(ice, .5,1,-.01, 0);
part_type_gravity(ice, 1, 270);

part_type_orientation(ice, -90, -90, 0, 0, 1);

part_type_direction(ice, 0, 180, 0, 0);

part_particles_create(system, x, y, ice, 1);	
}