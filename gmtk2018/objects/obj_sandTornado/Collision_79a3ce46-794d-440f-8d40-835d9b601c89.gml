/// @description Insert description here
// You can write your code in this editor
if(image_yscale < 1)
{
	knockBack(other, facing*25, -other.vspeed-100, 50, 0, 0);
	hitSound();
} else {
	knockBack(other, 0, -other.vspeed-30, 20, 0, 0);

}