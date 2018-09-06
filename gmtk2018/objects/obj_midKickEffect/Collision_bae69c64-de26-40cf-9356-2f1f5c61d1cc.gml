/// @description Insert description here
// You can write your code in this editor
var hitAlready = 0
for(var i =0; i < array_length_1d(hitEnemy); i++)
{
	if(hitEnemy[i] = other)	
		hitAlready = 1;
}

if(other.id != creator && !hitAlready)
{
	hitEnemy[array_length_1d(hitEnemy)] = other;
	hitSound();
	var hspeedMod = 50 * sign(other.x - creator.x)
	if(creator.currentEle = "fire")
	{
		currentEle = "fire";
		knockBack(other, hspeedMod, -35, 35, 0, other.maxOnFireTime);
	} else {
		knockBack(other, hspeedMod, -35, 35, 0, 0);
	}
}
