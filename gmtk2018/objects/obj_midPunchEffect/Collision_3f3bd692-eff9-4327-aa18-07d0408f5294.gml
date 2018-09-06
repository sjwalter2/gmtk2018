/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator))
{
var hitAlready = 0
for(var i =0; i < array_length_1d(hitEnemy); i++)
{
	if(hitEnemy[i] = other)	
		hitAlready = 1;
}

	if(other.id != creator )
	{
		hitEnemy[array_length_1d(hitEnemy)] = other;
		hitSound();
		var hspeedMod = 50 * sign(other.x - creator.x)
		if(creator.currentEle = "fire")
		{
			currentEle = "fire";
			knockBack(other, hspeedMod, -30, 30, 0, other.maxOnFireTime);
		} else {
			knockBack(other, hspeedMod, -30, 30, 0, 0);
		}

	}
}
else
{
	instance_destroy();
}