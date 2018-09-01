/// @description Insert description here
// You can write your code in this editor

currentImageIndex++;

if(currentImageIndex > sprite_get_number(currentSprite) && currentSprite != spr_playerIdle)
{
	currentSprite = spr_playerIdle
	currentImageIndex = 0;	
}
	


alarm_set(2,room_speed/sprite_get_speed(currentSprite))