/// @description Insert description here
// You can write your code in this editor
if(landed || other.id != creator)
{
with(other)
{
	fric = 0;
	alarm_set(1,other.freezeTime+alarm_get(1));
	if alarm_get(1) > maxSlipTime
		alarm_set(1,maxSlipTime)
}
}