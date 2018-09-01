/// @description Insert description here
// You can write your code in this editor
if( other.id != creator)
{
	with(other)
	{
		onFire = 1;
		alarm_set(3,other.burnTime+alarm_get(3));
	}
}