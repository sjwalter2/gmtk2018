/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 334509F0
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)timeAlive = 0;  // This increases once per step until it reaches maxTimeAlive$(13_10)maxTimeAlive = 90;$(13_10)facing = -1; //+1 is right, -1 is left; should be set by makeAir script.$(13_10)hspeedBase = 40;$(13_10)grav = 4;$(13_10)dying = 0;$(13_10)creator = 0;$(13_10)alarm_set(0,1);$(13_10)$(13_10)currentEle = "steam";$(13_10)hitEffect = 100;$(13_10)pushTime = 7;$(13_10)$(13_10)blowingup = 0;"
/// @description Insert description here
timeAlive = 0;  // This increases once per step until it reaches maxTimeAlive
maxTimeAlive = 90;
facing = -1; //+1 is right, -1 is left; should be set by makeAir script.
hspeedBase = 40;
grav = 4;
dying = 0;
creator = 0;
alarm_set(0,1);

currentEle = "steam";
hitEffect = 100;
pushTime = 7;

blowingup = 0;