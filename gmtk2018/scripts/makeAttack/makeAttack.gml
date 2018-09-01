if(argument[0] != 0)
{
objtype = argument[0];
with instance_create_layer(x+(facing*200*.5),y-(sprite_height/2) - 30,layer_get_id("Instances"),objtype){
	facing = other.facing;
	creator = other.id;
	other.hspeed -= sign(other.facing) * other.airKnockback;
}
}