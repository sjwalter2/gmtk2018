/// @description Insert description here
timeAlive = 0;  // This increases once per step until it reaches maxTimeAlive
maxTimeAlive = 70;
facing = -1; //+1 is right, -1 is left; should be set by makeAir script.
hspeedBase = 50;
grav = 1;
dying = 0;
hitEffect = 90;
pushTime = 4;
creator = 0;
alarm_set(0,1);
depth = -20;
currentEle = "water";
