/// @description Insert description here
// You can write your code in this editor
if attached == 0
{
	hitSound()

	if instance_exists(creator)
	{
		if other.id != creator{
			knockBack(other, facing*hitEffect, 0, 0, pushTime, 0);
			attached = 1;
			attachedPlayer = other;
		}
	} else {
		if other.id != creator{
			knockBack(other, facing*hitEffect, 0, 0, pushTime, 0);
			attached = 1;
			attachedPlayer = other;
		}
	}
}