/// @description Insert description here
// You can write your code in this editor
var spawner = instance_find(obj_spawner,0);
var respawn = spawner.respawners[irandom(array_length_1d(spawner.respawners)-1)];
x = respawn.x;
y = respawn.y;
hspeed = 0;
vspeed = 0;
image_blend = c_white;
onFire = 0;
alarm_set(3,-1);
stunned = 0;
alarm_set(4,-1);

setElement(0);
setElement(0);