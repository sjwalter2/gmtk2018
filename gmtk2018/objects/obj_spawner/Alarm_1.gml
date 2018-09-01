/// @description spawn new pickup
// You can write your code in this editor
var respawn = respawners[irandom(array_length_1d(respawners)-1)];
instance_create_layer(respawn.x,respawn.y,layer_get_id("Instances"),obj_pickup)
alarm_set(1,irandom_range(pickup_spawn_min_time,pickup_spawn_max_time));