/// @description Insert description here
// You can write your code in this editor
if( other.id != creator && dying == 0)
{
	knockBack(other, 0, 0, stunTime, 0, 0);
	timeAlive = 0;
	dying = 1;
	hspeed = 0;
	hitSound();
}