/// @description Insert description here
// You can write your code in this editor


var i;
for (i = 0; i < instance_number(obj_platform); i += 1)
   {
   respawners[i] = instance_find(obj_platform,i);
   }

if global.playerCounter > array_length_1d(respawners)
	game_restart();

for (i = 0; i < global.playerCounter; i += 1)
	{
	var respawn = respawners[irandom(array_length_1d(respawners)-1)];
	while(instance_place(respawn.x,0,obj_player))
		respawn = respawners[irandom(array_length_1d(respawners)-1)];
	var inst = instance_create_layer(respawn.x,0,layer_get_id("Instances_1"),obj_player)
	inst.playerNumber = i;
	inst.image_blend = global.playerColor[i]
	}