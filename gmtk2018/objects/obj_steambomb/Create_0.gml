/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 334509F0
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)timeAlive = 0;  // This increases once per step until it reaches maxTimeAlive$(13_10)maxTimeAlive = 120;$(13_10)facing = -1; //+1 is right, -1 is left; should be set by makeAir script.$(13_10)hspeedBase = 34;$(13_10)grav = 4;$(13_10)dying = 0;$(13_10)creator = 0;$(13_10)alarm_set(0,1);$(13_10)$(13_10)currentEle = "steam";$(13_10)hitEffect = 40;$(13_10)pushTime = 2;$(13_10)attached = 0$(13_10)attachedPlayer = 0;"
/// @description Insert description here
timeAlive = 0;  // This increases once per step until it reaches maxTimeAlive
maxTimeAlive = 120;
facing = -1; //+1 is right, -1 is left; should be set by makeAir script.
hspeedBase = 34;
grav = 4;
dying = 0;
creator = 0;
alarm_set(0,1);

currentEle = "steam";
hitEffect = 40;
pushTime = 2;
attached = 0
attachedPlayer = 0;

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 7A4EE0D3
system = part_system_create_layer("Instances", 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 60B3447F
type = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Orientation
/// @DnDVersion : 1
/// @DnDHash : 531F3988
/// @DnDArgument : "rel" "1"
part_type_orientation(type, 0, 360, 0, 0, 1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 35724D70
/// @DnDArgument : "minlife" "30"
/// @DnDArgument : "maxlife" "60"
part_type_life(type, 30, 60);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 78B8DFDD
/// @DnDArgument : "minsize" "1"
/// @DnDArgument : "maxsize" "2"
/// @DnDArgument : "sizeincr" "0.1"
part_type_size(type, 1, 2, 0.1, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 21E8946F
part_type_direction(type, 0, 360, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 05F37775
/// @DnDArgument : "minspeed" "5"
/// @DnDArgument : "maxspeed" "15"
part_type_speed(type, 5, 15, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 128FE2CA
/// @DnDArgument : "sprite" "spr_steamparticle"
/// @DnDSaveInfo : "sprite" "c04ef70a-7ed2-4bf8-8ce4-53b1eeca31f9"
part_type_sprite(type, spr_steamparticle, true, false, false);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 486CAD76
/// @DnDArgument : "end" "0"
part_type_alpha3(type, 1, 1, 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AE65866
/// @DnDArgument : "code" "part_system_depth(system,-100);"
part_system_depth(system,-100);