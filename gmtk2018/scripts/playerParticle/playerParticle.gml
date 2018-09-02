system = part_system_create_layer("Instances", 0);

type = part_type_create();
// no blending

part_type_orientation(type, 0, 360, 0, 0, 0);

part_type_life(type, 30, 50);

part_type_speed(type, 15, 20, 0, 0);

part_type_size(type, .5, 2, -.1, 0);