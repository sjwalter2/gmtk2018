/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
  // This increases once per step until it reaches maxTimeAlive

facing = 1; //+1 is right, -1 is left; should be set by makeAir script.
hitEffect = 70;
start = 1;
dying = 0;
creator = 0;
stunTime = 15;
vineImage = 0;
charging = 1;
currentEle = "plant";
image_alpha = 0
image_xscale = 0
claw = instance_create_depth(x,bbox_right,depth-105,obj_vineClaw)
claw.creator = id;