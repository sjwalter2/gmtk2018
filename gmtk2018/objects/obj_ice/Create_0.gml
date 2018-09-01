/// @description Insert description here
timeAlive = 0;  // This increases once per step until it reaches maxTimeAlive
maxTimeAlive = 60;
facing = -1; //+1 is right, -1 is left; should be set by makeAir script.
hspeedBase = 64;
landed = 0;
grav = 3;
dying = 0;
freezeTime = 50;
creator = 0;
alarm_set(0,1);
depth = -20;