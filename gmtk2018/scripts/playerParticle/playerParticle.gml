system = part_system_create_layer("Instances", 0);

fire = part_type_create();
// no blending

part_type_orientation(fire, 0, 360, 0, 0, 0);

part_type_life(fire, 30, 50);

part_type_speed(fire, 15, 20, 0, 0);

part_type_size(fire, .5, 2, -.1, 0);

ice = part_type_create();
// no blending

part_type_orientation(ice, 0, 360, 0, 0, 0);

part_type_life(ice, 30, 50);

part_type_speed(ice, 15, 20, 0, 0);

part_type_size(ice, .5, 2, -.1, 0);

stun = part_type_create();
// no blending

part_type_orientation(stun, 0, 360, 0, 0, 0);

part_type_life(stun, 30, 50);

part_type_speed(stun, 15, 20, 0, 0);

part_type_size(stun, .5, 2, -.1, 0);