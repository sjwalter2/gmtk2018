/// @description Insert description here
// You can write your code in this editor
if(alarm_get(0) = -1 && instance_exists(creator))
{
for(var i = 3; i < 4; i++)
var alpha = creator.currentAlpha
var offset = 6 + i; 
var color = c_black
var sprite = creator.currentSprite
if(creator.currentSprite = spr_playerStunIdle)
	sprite = spr_playerIdle
if(creator.currentAlpha != 1)
	alpha = creator.currentAlpha/8


draw_sprite_ext(sprite,creator.currentImageIndex,creator.x,creator.y-creator.sprite_height/2-offset*1.5,creator.currentImageDirection,creator.image_yscale,creator.drawAngle,color,alpha)
draw_sprite_ext(sprite,creator.currentImageIndex,creator.x,creator.y-creator.sprite_height/2+offset*1.5,creator.currentImageDirection,creator.image_yscale,creator.drawAngle,color,alpha)
draw_sprite_ext(sprite,creator.currentImageIndex,creator.x-offset*1.5,creator.y-creator.sprite_height/2,creator.currentImageDirection,creator.image_yscale,creator.drawAngle,color,alpha)
draw_sprite_ext(sprite,creator.currentImageIndex,creator.x+offset*1.5,creator.y-creator.sprite_height/2,creator.currentImageDirection,creator.image_yscale,creator.drawAngle,color,alpha)
draw_sprite_ext(sprite,creator.currentImageIndex,creator.x-offset,creator.y-creator.sprite_height/2-offset,creator.currentImageDirection,creator.image_yscale,creator.drawAngle,color,alpha)
draw_sprite_ext(sprite,creator.currentImageIndex,creator.x-offset,creator.y-creator.sprite_height/2+offset,creator.currentImageDirection,creator.image_yscale,creator.drawAngle,color,alpha)
draw_sprite_ext(sprite,creator.currentImageIndex,creator.x+offset,creator.y-creator.sprite_height/2-offset,creator.currentImageDirection,creator.image_yscale,creator.drawAngle,color,alpha)
draw_sprite_ext(sprite,creator.currentImageIndex,creator.x+offset,creator.y-creator.sprite_height/2+offset,creator.currentImageDirection,creator.image_yscale,creator.drawAngle,color,alpha)

}