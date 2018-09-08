/// @description Insert description here
// You can write your code in this editor
alphaMod++
var modifier = 0
if(floor(alphaMod/3) mod 2 = 0)
	modifier = 1
else if(currentAlpha != 1 && stunned)
	modifier = -1

if(currentSprite = spr_playerStunIdle && (spawned || fishing))
{
	currentSprite = spr_playerIdle
}

if(currentSprite = spr_playerStunIdle)
{
	draw_sprite_ext(currentSprite,currentImageIndex,x,y-sprite_height/2,currentImageDirection,1,drawAngle,c_white,currentAlpha+modifier);
	

}
else
	draw_sprite_ext(currentSprite,currentImageIndex,x,y-sprite_height/2,currentImageDirection,1,drawAngle,image_blend,currentAlpha+modifier);
