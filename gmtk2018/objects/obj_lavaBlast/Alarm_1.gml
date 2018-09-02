/// @description Insert description here
// You can write your code in this editor

if(blastCount < 1)
{

var blast = instance_create_depth(x,y,depth-1,obj_lavaBlast)
blast.blastCount = blastCount + 1;
blast.direction = direction + range/2
blast.range = range/2

blast.creator = creator;
var blast = instance_create_depth(x,y,depth-1,obj_lavaBlast)
blast.blastCount = blastCount + 1;
blast.direction = direction - range/2
blast.range = range/2

blast.creator = creator;
}