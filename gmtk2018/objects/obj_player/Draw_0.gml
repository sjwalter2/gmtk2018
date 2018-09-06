/// @description Insert description here
// You can write your code in this editor
if(currentSprite = spr_playerStunIdle)
{
	draw_sprite_ext(currentSprite,currentImageIndex,x,y-sprite_height/2-15,currentImageDirection,1,0,c_white,currentAlpha);
	draw_sprite_ext(spr_playerIdle,currentImageIndex,x,y-sprite_height/2-15,currentImageDirection,1,0,image_blend,currentAlpha);

}
else
	draw_sprite_ext(currentSprite,currentImageIndex,x,y-sprite_height/2-15,currentImageDirection,1,0,image_blend,currentAlpha);
