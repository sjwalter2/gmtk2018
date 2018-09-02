/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 223CAD76
system = part_system_create_layer("Instances", 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 750B8E70
type = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Orientation
/// @DnDVersion : 1
/// @DnDHash : 38DF180C
part_type_orientation(type, 0, 360, 0, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 0653DE04
/// @DnDArgument : "minlife" "30"
/// @DnDArgument : "maxlife" "50"
part_type_life(type, 30, 50);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 472197B1
/// @DnDArgument : "minspeed" "15"
/// @DnDArgument : "maxspeed" "20"
part_type_speed(type, 15, 20, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 2835AFC6
/// @DnDArgument : "minsize" ".5"
/// @DnDArgument : "maxsize" "2"
/// @DnDArgument : "sizeincr" "-.1"
part_type_size(type, .5, 2, -.1, 0);