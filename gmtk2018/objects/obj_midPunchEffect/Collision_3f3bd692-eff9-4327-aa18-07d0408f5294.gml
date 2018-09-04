/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{
	if(other.id != creator)
	{
		hitSound();
		var hspeedMod = 50 * sign(other.x - creator.x)
		if(creator.currentEle = "fire")
		{
			currentEle = "fire";
			knockBack(other, hspeedMod, -20, 20, 0, other.maxOnFireTime);
		} else {
			knockBack(other, hspeedMod, -20, 20, 0, 0);
		}

	}
}
else
{
	instance_destroy();
}