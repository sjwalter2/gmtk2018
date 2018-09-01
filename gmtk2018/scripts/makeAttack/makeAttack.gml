objtype = argument[0];
with instance_create_layer(x+(facing*sprite_width*.5),y-(sprite_height/2),layer_get_id("Instances"),objtype){
	facing = other.facing;
	creator = other.id;
	other.hspeed -= sign(other.facing) * other.airKnockback;
}
