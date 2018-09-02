/// @description Insert description here
// You can write your code in this editor
if attached == 0
{
	hitSound()

	if instance_exists(creator)
	{
		if other.id != creator{
			other.hspeed += (facing*hitEffect);
			other.fric = 0;
			other.grabLeft = 0
			other.grabRight = 0
			with other{
				alarm_set(1,other.pushTime+alarm_get(1))	
			}
			hspeed = - (hspeed * 0.7);
			attached = 1;
			attachedPlayer = other;
		}
	} else {
			other.hspeed += (facing*hitEffect);
			other.fric = 0;
			other.grabLeft = 0
			other.grabRight = 0
			with other{
				alarm_set(1,other.pushTime+alarm_get(1))	
			}
			hspeed = - (hspeed * 0.7);
			attached = 1;
			attachedPlayer = other;
	}
}